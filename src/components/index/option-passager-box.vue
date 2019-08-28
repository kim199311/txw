<template>
  <div class="searchbox-people-option" style="position: absolute; top:40px ">
    <!-- left: 426.217px; top: 96.1334px; z-index: 999; -->
    <option-passengers-box-list @listValueChange="listValueChange"></option-passengers-box-list>
    <counter @valueChange="valueChange" title="(12岁以上)" min="1" max="8"></counter>
    <counter @valueChange="valueChange" title="(2到12岁)" min="0" max="8"></counter>
    <counter @valueChange="valueChange" title="(2岁以下)" min="0" max="8"></counter>
  </div>
</template>

<script>
import optionPassengersBoxList from "./option-passager-box-list";
import counter from "./counter";
export default {
  data() {
    return {
      // 数据库获取机舱名字
      dropdownList: ["经济舱", "高端经济舱", "商务舱", "头等舱"]
      // // 乘机人年龄
      // passagerAgeList: ["(12岁以上)", "(2到12岁)", "(2岁以下)"],
    };
  },
  methods: {
    listValueChange(e) {
      // 获取机舱名字
      if (e) {
        // 向父组件传递机舱名字
        this.$emit("passengerCabinChange", e);
      }
    },
    valueChange(e) {
      let result = {};
      if (e.title == "(12岁以上)") {
        result.title = "成人";
      } else if (e.title == "(2到12岁)") {
        result.title = "儿童";
      } else if (e.title == "(2岁以下)") {
        result.title = "婴儿";
      } else {
        return;
      }
      result.key = e.key;
      this.$emit("passengerNumChange", result);
    }
  },
  components: {
    optionPassengersBoxList,
    counter
  }
};
</script>

<style scoped>
/* 人数选择弹出
   ========================================================================== */
.searchbox-people-option {
  background-color: #fff;
  border: 1px solid #d6d9dd;
  border-radius: 6px;
  box-shadow: 0 0 20px #34363d;
  outline: 0 none;
  z-index: 101;
  width: 250px !important;
  padding: 10px 20px;
}

.dropdownB {
  width: auto !important;
  padding: 0 4%;
  text-indent: 0;
  height: 33px;
  line-height: 33px;
}
.dropdownB span {
  font-size: 1.2em;
}
.dropdownB i {
  margin-right: 0px;
  margin-top: 17px;
}
.dropdownB ul {
  margin-top: -1px;
}
.dropdownB ul li {
  padding: 3px 0;
  height: 28px;
  line-height: 28px;
  text-indent: 10px;
}

.searchbox-people-option::before {
  border-bottom-color: #d6d9dd;
  border-width: 11px;
  margin-left: -11px;
}
.searchbox-people-option::after,
.searchbox-people-option::before {
  border: medium solid transparent;
  bottom: 100%;
  content: " ";
  height: 0;
  left: 50%;
  pointer-events: none;
  position: absolute;
  width: 0;
}

.searchbox-people-option::after {
  border-bottom-color: #fff;
  border-width: 10px;
  margin-left: -10px;
}
.people-option-index {
  width: 174px;
}
@media (max-width: 1189px) {
  .people-option-index {
    padding: 10px;
    width: 160px;
  }
}

.searchbox-people-option label {
  line-height: 36px;
  clear: both;
  display: block;
}
.searchbox-people-option label i {
  margin-top: 7px;
}
.people-info-disabled {
  border: 1px solid #e0e0e0 !important;
  color: #999 !important;
}

.searchbox-people-option label input[type="text"] {
  border-style: solid none;
  border-width: 1px 0px;
  border-color: #d8dbe5;
  border-color: #d8dbe5 -moz-use-text-color;
  background: none;
  font-size: 14px;
  text-align: center;
  width: 40px;
  height: 24px;
  padding: 0;
  margin: 0 -1px;
}
/* 补充
   ========================================================================== */
.cabin-mu .city_citybox_jp {
  width: 30% !important;
}
.cabin-mu .city_citybox_jp em {
  display: none !important;
}
.city_citybox_jp .dropdown2 {
  width: 148px;
}
.cabin-mu .city_citybox_jp .icon_down_gray {
  margin-right: 5px !important;
}
/*下拉选择框*/
.dropdownlist {
  background-color: #fff;
  position: absolute;
  left: -1px;
  top: -1px;
  z-index: 500;
  color: #666;
  cursor: pointer;
  border: 1px solid #999999;
  -moz-box-shadow: 1px 1px 1px #d6d6d6 inset;
  -webkit-box-shadow: 1px 1px 1px #d6d6d6 inset;
  box-shadow: 1px 1px 1px #d6d6d6 inset;
  width: 100%;
  text-indent: 10px;
}
.dropdownlist li {
  width: 100%;
  text-align: left;
}
.dropdownlist li.on {
  background-color: #f2f2f2;
  color: #666;
  text-align: left;
}

.dropdownlist-hover {
  border: 1px solid #29a8bb;
  -moz-box-shadow: 1px 1px 1px #c7c7c7 inset;
  -webkit-box-shadow: 1px 1px 1px #c7c7c7 inset;
  box-shadow: 1px 1px 1px #c7c7c7 inset;
  box-shadow: 0px 0px 3px #29a8bb;
}

.dropdownlist-cabin {
  top: 0;
  left: 0;
}
.dropdownlist-cabin li {
  height: 36px;
  line-height: 36px;
}

/* 通用
   ========================================================================== */
.searchbox-people-option label input[type="text"] {
  border-style: solid none;
  border-width: 1px 0px;
  border-color: #d8dbe5;
  border-color: #d8dbe5 -moz-use-text-color;
  background: none;
  font-size: 14px;
  text-align: center;
  width: 40px;
  height: 24px;
  padding: 0;
  margin: 0 -1px;
}
</style>