<template>
  <div class="searchBox">
    <table></table>
    <div class="searchBar">
      <div class="search1">
        <input type="radio" id="bothway" name="kindWay" checked>
        <label for="bothway">往返</label>
        <input type="radio" id="singleway" name="kindWay">
        <label for="singleway">单程</label>
        <input type="radio" id="ways" name="kindWay">
        <label for="ways">国际多程（含缺口）</label>
      </div>
      <div class="search2">
        <!--出发地-->
        <div class="div1">
          <div @click="div1Click">
            <input type="text" v-model="div1Text">
            <span>出发地</span>
          </div>
          <div @mouseleave="div1openHidden" @mouseenter="div1openShow">
            <seatTable v-show="div1open" @closeCityBox="closeCityBox" @selectCity="selectCityStart"></seatTable>
          </div>
        </div>
        <!--切换箭头-->
        <span @click="switchImg">
          <img src="img/seat/bothway.png" alt>
        </span>
        <!--目的地-->
        <div class="div2">
          <div @click="div2Click">
            <input type="text" v-model="div2Text">
            <span>目的地</span>
          </div>
          <div @mouseleave="div2openHidden" @mouseenter="div2openShow">
            <seatTable v-show="div2open" @closeCityBox="closeCityBox" @selectCity="selectCityEnd"></seatTable>
          </div>
        </div>
        <!--出发时间-->
        <div class="div3">
          <DatePicker v-model="date1" fontSize="12px"></DatePicker>
          <img src="img/seat/date.png">
        </div>
        <!--返回时间-->
        <div class="div4">
          <DatePicker v-model="date2" fontSize="12px"></DatePicker>
          <img src="img/seat/date.png">
        </div>
        <!--乘客情况-->
        <div class="div5" style="height:auto">
          <!-- <div class="click5" @click="div5Click">
            <span>1位乘客，{{msgP}}</span>
            <img src="img/seat/down.png" alt>
          </div>
          <div class="passenger" v-show="div5open">-->
          <!-- 
                  *****************************************
          -->
          <div class="search-pax-cabin-class fl relative" id="option-passengers-intl">
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
            <!-- </div> -->
            <!-- 
                  *****************************************
            -->

            <!-- <select name id v-model="p_sel" @change="sel">
              <option value="经济舱">经济舱</option>
              <option value="高端经济舱">高端经济舱</option>
              <option value="商务舱">商务舱</option>
              <option value="头等舱">头等舱</option>
            </select>
            <div class="passengerKind">
              <img src="img/seat/teen.png" alt>
              <span>(12岁以上)</span>
              <div class="p_btn">
                <button>-</button>
                <input type="text" :value="val1">
                <button>+</button>
              </div>
            </div>
            <div class="passengerKind">
              <img src="img/seat/boy.png" alt>
              <span>(2到12岁)</span>
              <div class="p_btn">
                <button>-</button>
                <input type="text" :value="val2">
                <button>+</button>
              </div>
            </div>
            <div class="passengerKind">
              <img src="img/seat/baby.png" alt>
              <span>(2岁以下)</span>
              <div class="p_btn">
                <button>-</button>
                <input type="text" :value="val3">
                <button>+</button>
              </div>
            </div>-->
          </div>
        </div>
        <a
          class="btn"
          href="http://et.airchina.com.cn/InternetBooking/AirFareFamiliesFlexibleForward.do"
        >搜索</a>
      </div>
    </div>
    <table></table>
  </div>
</template>
<script>
import DatePicker from "../index/DatePicker";
import seatTable from "./seatTable";
import searchOptionSwitch from "../index/search-option-switch";
import optionPassagerBox from "../index/option-passager-box.vue";
export default {
  data() {
    return {
      // 日历选择框日期
      date1: "",
      date2: "",
      div1Text: "中国(CN)",
      div2Text: "所有地点",
      div1open: false,
      div2open: false,
      div5open: false,
      //
      val1: 1,
      val2: 0,
      val3: 0,
      p_sel: "经济舱",
      msgP: "经济舱",
      // 下拉城市列表定时器
      div1openTimer: null,
      div2openTimer: null,
      // 乘客
      passengerInfo: [{ title: "成人", key: "1" }],
      // 客舱名字
      passengerCabin: "经济舱",
      isOptionPassagerBoxShow: false,

      optionPassagerBoxShowTimer: null
    };
  },
  methods: {
    div1Click() {
      if (!this.div1open) {
        this.div1open = true;
        this.div2open = false;
      }
    },
    div2Click() {
      this.div2Text = "";
      if (!this.div2open) {
        this.div1open = false;
        this.div2open = true;
      }
    },
    div5Click() {
      if (!this.div5open) {
        this.div5open = true;
      } else {
        this.div5open = false;
      }
    },
    close() {
      this.div1open = false;
      this.div2open = false;
      this.div2Text = "所有地点";
    },
    switchImg() {
      if (this.div1Text != "中国(CN)" && this.div2Text != "所有地点") {
        var txt = this.div1Text;
        this.div1Text = this.div2Text;
        this.div2Text = txt;
      }
    },
    //
    sel() {
      this.msgP = this.p_sel;
    },
    // 接收子组件参数
    selectCityStart(e) {
      this.div1Text = e;
    },
    selectCityEnd(e) {
      this.div2Text = e;
    },
    // 选择城市列表(隐藏显示)
    div1openHidden() {
      this.div1openTimer = setTimeout(() => {
        this.div1open = false;
      }, 200);
    },
    div1openShow() {
      if (this.div1openTimer) {
        clearTimeout(this.div1openTimer);
      }
      this.div1open = true;
    },
    div2openHidden() {
      this.div2openTimer = setTimeout(() => {
        this.div2open = false;
      }, 200);
    },
    div2openShow() {
      if (this.div2openTimer) {
        clearTimeout(this.div2openTimer);
      }
      this.div2open = true;
    },
    closeCityBox() {
      this.div1open = false;
      this.div2open = false;
    },
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
    }
  },
  components: {
    DatePicker,
    seatTable,
    searchOptionSwitch,
    optionPassagerBox
  }
};
</script>

<style scoped>
.searchBox {
  background-color: #f3f2f5;
}
.searchBar {
  margin-left: 5%;
  margin-right: 5%;
  margin-top: 30px;
  margin-bottom: 30px;
}
.search1 > input {
  margin: 0 15px 15px 15px;
}
.search2 {
  display: flex;
  align-items: center;
}
.search2 > span > img {
  width: 50px;
  height: 25px;
  margin: 3px;
}
.search2 > div {
  height: 33px;
  position: relative;
  border: 1px solid #00b2d6;
  background-color: white;
}
.search2 > div:hover {
  box-shadow: 1px solid #00b2d6;
}
.div1,
.div2 {
  width: 18%;
}
.div2 {
  margin-right: 10px;
}
.div3,
.div4 {
  width: 14%;
  margin-right: 8px;
}
.div5 {
  width: 16%;
  margin-right: 8px;
  line-height: 33px;
  font-size: 14px;
}
.div1 > div > input,
.div2 > div > input {
  padding: 0 4%;
  width: 90%;
  font-weight: 700;
}
.div3 > input,
.div4 > input {
  padding-left: 20%;
  width: 80%;
}
.div5 > .click5 > span {
  padding-left: 5%;
}
.div3 > img,
.div4 > img {
  position: absolute;
  left: 0%;
  top: 5%;
  width: 30px;
  height: 30px;
}
.div5 > .click5 > img {
  position: absolute;
  right: 4%;
  top: 34%;
  width: 10px;
  height: 10px;
}
.div1 > div > span,
.div2 > div > span {
  position: absolute;
  right: 5%;
  top: 24%;
}
.search2 > div input {
  border: 0;
  line-height: 33px;
  font-size: 16px;
  color: black;
}
.btn {
  width: 140px;
  background-color: #00bd68;
  height: 36px;
  border-radius: 20px;
  font-size: 18px;
  color: #fff;
  border: none;
  text-align: center;
  line-height: 36px;
}
.btn:hover {
  background-color: #00d775;
}
.searchCity {
  position: absolute;
  background-color: #fff;
  width: 540px;
  top: 35px;
  box-shadow: 0 2px 3px #b6b1bd;
}
.passenger {
  position: absolute;
  top: 35px;
  background-color: #fff;
  width: 212px;
  display: flex;
  flex-direction: column;
  border: 1px solid #00b2d6;
}
.passenger > select {
  width: 80%;
  padding: 5px;
  margin: 10px auto;
  border: 1px solid #00b2d6;
}

.p_btn > button {
  width: 15px;
  height: 15px;
  line-height: 9px;
}
.p_btn > input {
  width: 13px;
  height: 13px;
  outline: none;
  border: 0;
  text-align: center;
  font-size: 3px !important;
}
.passengerKind {
  display: flex;
  justify-content: space-around;
  width: 80%;
  align-items: center;
  margin: 0 auto;
  font-size: 12px;
  color: #858a99;
}
.passengerKind > img {
  width: 20px;
  height: 20px;
}
</style>

