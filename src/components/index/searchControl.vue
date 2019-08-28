<template>
  <div class="search-controls relative">
    <search-option-switch></search-option-switch>
    <section>
      <div class="search-places search-places-f1">
        <div class="origin fl">
          <label class="place-label">出发城市</label>
          <input
            type="text"
            class="tt-input js-city"
            v-model="placeStart"
            autocomplete="off"
            @mouseenter="seatTable1Show"
            @mouseleave="seatTable1Hidden"
          >
          <!-- 
              选择城市列表
          -->
          <div class="pa" @mouseenter="seatTable1Show" @mouseleave="seatTable1Hidden">
            <seat-table @selectCity="selectCity1" v-show="isSeatTableShow1"></seat-table>
          </div>
          <i class="origin-icon"></i>
        </div>
        <a class="swap-exchange">
          <i class="exchange-icon"></i>
        </a>
        <div class="destination fr">
          <label class="place-label">目的城市</label>
          <span class="anywhere" v-show="showAnywhere">所有地点</span>
          <input
            type="text"
            class="tt-input js-city default"
            v-model="destinationCity"
            @focus="showAnywhere=false"
            @blur="showAnywhere=!destinationCity"
            @mouseenter="seatTable2Show"
            @mouseleave="seatTable2Hidden"
            autocomplete="off"
          >
          <!-- <input type="hidden" id="dstCityCountry" value autocomplete="off">
          <input type="hidden" id="dstCityCode" value autocomplete="off">
          <input type="hidden" id="dstCityCode4" value>-->
          <i class="destination-icon"></i>
          <div class="pa" @mouseenter="seatTable2Show" @mouseleave="seatTable2Hidden">
            <seat-table @selectCity="selectCity2" v-show="isSeatTableShow2"></seat-table>
          </div>
        </div>
      </div>
      <div class="search-places search-places-f2">
        <div class="search-dates">
          <div class="depart fl">
            <label class="place-label">去程时间</label>
            <date-picker v-model="date1" height="36px"></date-picker>
            <i class="dates-icon"></i>
          </div>
          <div class="return fr">
            <label class="place-label">回程时间</label>
            <date-picker v-model="date2" height="36px"></date-picker>
            <i class="dates-icon"></i>
          </div>
        </div>
        <!-- 仓位人数选择 -->
        <div class="search-pax-cabin-class fr relative" id="option-passengers-intl">
          <label class="place-label">人数 &amp; 舱位</label>

          <div class="cabin-class-travellers-trigger" @click="optionPassagerBoxShow()">
            <span>
              <i class="adult-icon"></i>
              <!-- <span class="mgr5">
                <span id="search-option-adult-txt">1</span>
                成人
              </span>，-->
              <span v-for="(t,i) of passengerInfo" :key="i" class="mgr5">
                <span>{{t.key}}</span>
                {{t.title}}
              </span>,
            </span>
            <span id="cabin-class-intl">{{passengerCabin}}</span>
            <i class="down-arrow fr mgt6"></i>
            <div
              @mouseleave="optionPassagerBoxHidden()"
              @mouseenter="optionPassagerBoxShow()"
              :class="{'none':!isOptionPassagerBoxShow}"
            >
              <option-passager-box
                @passengerCabinChange="passengerCabinChange"
                @passengerNumChange="passengerNumChange"
              ></option-passager-box>
            </div>
          </div>
        </div>
      </div>
      <div id="compare-unit-box-wrap">
        <div class="compare-units none" id="compare-unit-box" style="display: none;">
          <span>价格核实(新窗口)</span>
          <ul class="clearfix" id="compare-unit"></ul>
        </div>
      </div>
      <button type="button" class="large-buttonB fr">立即搜索</button>
      <label class="sc-checkbox checked fr mgt10 mgr30" id="search-option-direct-box">
        <input type="checkbox" class="checkbox" id="search-option-direct" value="1"> 直飞
      </label>
      <input type="hidden" id="depCityCountryDefault" value="中国">
      <input type="hidden" id="depCityDefault" value="中国(CN)">
      <input type="hidden" id="depCityCodeDefault">
    </section>
  </div>
</template>

<script>
import searchOptionSwitch from "./search-option-switch";
import datePicker from "./DatePicker";
import optionPassagerBox from "./option-passager-box.vue";
import seatTable from "../seat/seatTable";

export default {
  data() {
    return {
      // 去程时间
      date1: "",
      // 回程时间
      date2: "",
      // 所有地点胶囊
      showAnywhere: true,
      isOptionPassagerBoxShow: false,
      optionPassagerBoxShowTimer: null,
      // 客舱名字
      passengerCabin: "经济舱",
      // 乘客
      passengerInfo: [{ title: "成人", key: "1" }],
      // 选择开始城市列表隐藏显示
      isSeatTableShow1: false,
      isSeatTableShow2: false,
      // 出发城市
      placeStart: "中国(CN)",
      // 目标城市
      destinationCity: ""
    };
  },
  watch: {
    destinationCity() {
      if (this.destinationCity) {
        this.showAnywhere = false;
      }
    }
  },
  methods: {
    optionPassagerBoxHidden() {
      this.optionPassagerBoxShowTimer = setTimeout(
        () => (this.isOptionPassagerBoxShow = false),
        300
      );
    },
    optionPassagerBoxShow() {
      if (this.optionPassagerBoxShowTimer) {
        clearTimeout(this.optionPassagerBoxShowTimer);
      }
      this.isOptionPassagerBoxShow = true;
    },
    /* 子组件
       ====================================================================== */
    passengerCabinChange(e) {
      this.passengerCabin = e;
    },
    passengerNumChange(e) {
      console.log(e);
      let i, len;
      i = 0;
      len = this.passengerInfo.length;
      for (; i < len; i++) {
        if (e.title == this.passengerInfo[i].title) {
          this.passengerInfo[i].key = e.key;
          if (e.key == 0) {
            this.passengerInfo.splice(i, 1);
          }
          return;
        } else {
        }
      }
      this.passengerInfo.push(e);
      return;
    },
    seatTable1Hidden() {
      this.isSeatTableShow1 = false;
    },
    seatTable1Show() {
      this.isSeatTableShow1 = true;
    },
    seatTable2Hidden() {
      this.isSeatTableShow2 = false;
      if (!this.destinationCity) {
        this.showAnywhere = true;
      }
    },
    seatTable2Show() {
      this.isSeatTableShow2 = true;
      this.showAnywhere = false;
    },
    // 选择城市下拉框
    selectCity1(e) {
      this.placeStart = e;
    },
    selectCity2(e) {
      this.destinationCity = e;
    }
  },
  components: {
    searchOptionSwitch,
    datePicker,
    optionPassagerBox,
    seatTable
  }
};
</script>

<style scoped>
/* 通用
   ========================================================================== */
.depart input,
.return input,
.origin input,
.destination input,
input[type="text"] {
  background-color: #fff;
  border: none;
  border-radius: 3px;
  box-sizing: border-box;
  height: 36px;
  padding: 8px 8px 8px 32px;
  margin: 0;
  width: 100%;
  position: relative;
  font: 16px "Microsoft YaHei", "黑体", "simsun";
  line-height: 19px;
  font-weight: 600;
  color: #453d54;
}
.checkbox {
  margin-right: 3px;
  vertical-align: -2px;
}
/* 最外层
   ========================================================================== */
.search-controls {
  height: auto;
  width: 663px;
  left: 50%;
  margin-left: -333px;
  /* transform: translateX(-50%); 会影响 fixed */
  /* margin: auto; */
  padding-bottom: 20px;
  background: rgba(69, 61, 84, 0.85) none repeat scroll 0 0;
  color: #fff;
  padding: 15px 20px;
  float: left;
  clear: both;
  border-radius: 8px;
  position: absolute;
  z-index: 10;
  margin-top: 90px;
  border: none;
  font-family: Arial, Lucida, Verdana, Helvetica, sans-serif;
  font-size: 12px;
  line-height: 150%;
}
@media (max-width: 1189px) {
  .search-controls {
    width: 624px;
    background: rgba(69, 61, 84, 0.85) none repeat scroll 0 0;
    position: relative;
    float: left;
    clear: both;
  }
}
/* 上面label样式
   ========================================================================== */
.type label,
.type a {
  color: #7fd7e8;
}
.type label {
  margin-right: 10px;
}
label {
  cursor: pointer;
}
/* 第一层
   ========================================================================== */
.search-places-f1 {
  margin-top: 10px;
  margin-bottom: 0;
}

.search-places {
  display: table;
  content: "";
  position: relative;
  width: 100%;
  margin: 15px 0;
}
/* 出发城市 */
.search-places .origin,
.search-places .destination {
  width: 48%;
  position: relative;
  z-index: 9999;
}
.search-places .place-label {
  color: #b6b1bd;
  font-size: 13px;
  margin-bottom: 3px;
}
/* 交换按钮 */
.search-places .swap-exchange {
  background: rgba(0, 0, 0, 0) none;
  border: none;
  cursor: pointer;
  height: 36px;
  left: 47.5%;
  padding: 0;
  position: absolute;
  top: 20px;
  width: 4%;
}
/* 目的城市 */
.search-places .destination {
  width: 48%;
  position: relative;
}
.search-places .place-label {
  color: #b6b1bd;
  font-size: 13px;
  margin-bottom: 3px;
}
.search-places .destination .anywhere {
  background-color: #ffd445;
  color: #544c63;
  border: none;
  border-radius: 15px;
  cursor: pointer;
  font-size: 12px;
  left: 28px;
  padding: 3px 16px;
  position: absolute;
  top: 24px;
  z-index: 9;
  font-weight: bold;
}

/* 第二层
   ========================================================================== */
.search-places-f2 {
  margin-top: 15px;
  margin-bottom: 4px;
}
.search-places {
  display: table;
  content: "";
  position: relative;
  width: 100%;
  margin: 15px 0;
}
/* 时间 */
.search-dates {
  clear: left;
  float: left;
  width: 48%;
}
.search-dates .depart,
.search-dates .return {
  position: relative;
  width: 48%;
}
/* 人数&仓位 */
.search-pax-cabin-class {
  margin: 0 0 16px;
  width: 48%;
}
.search-places .place-label {
  color: #b6b1bd;
  font-size: 13px;
  margin-bottom: 3px;
}
.cabin-class-travellers-trigger {
  background-color: #fff;
  color: #453d54;
  border: medium none;
  border-radius: 2px;
  box-sizing: border-box;
  cursor: pointer;
  font-size: 16px;
  height: 36px;
  margin: 0;
  padding: 8px;
  position: relative;
  text-align: left;
  width: 100%;
}
.cabin-class-travellers-trigger .down-arrow,
.dropdown i {
  border-radius: 3px;
  height: 0;
  width: 0;
  overflow: hidden;
  font-size: 0;
  line-height: 0;
  border-color: #898294 transparent transparent transparent;
  border-style: solid dashed dashed dashed;
  border-width: 10px;
  background-image: none;
}
/* 按钮
   ========================================================================== */
.large-buttonB {
  background-color: -webkit-linear-gradient(to top, #00bd68, #00d775);
  background-image: linear-gradient(to top, #00bd68, #00d775);
  background-color: #00bd68;
  border-radius: 22px;
  color: #fff;
  opacity: none !important;
  border: none 0;
  cursor: pointer;
  font: 20px "Microsoft YaHei", "黑体", "simsun";
  width: 170px;
  height: 44px;
  line-height: 22px;
  position: relative;
  text-align: left;
  text-indent: 26px;
}
.large-buttonB::after {
  background: url("../../assets/searchbox-icon.png") no-repeat;
  background-position: -375px -55px;
  width: 18px;
  height: 16px;
  display: block;
  position: absolute;
  top: 14px;
  right: 16%;
  content: "";
}
.large-buttonB:hover {
  background-color: -webkit-linear-gradient(to top, #00d775, #00d775);
  background-image: linear-gradient(to top, #00d775, #00d775);
  background-color: #00d775;
}
/* 自定义 
   ========================================================================== */
</style>