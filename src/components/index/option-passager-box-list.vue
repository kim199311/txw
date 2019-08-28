<template>
  <div class="city_citybox_jp mgb10">
    <div class="dropdown dropdownB clearfix">
      <span @click="showDropdownList(false)">{{dropdownListItem}}</span>
      <i class="fr"></i>
      <ul :class="{'dropdownlist':true,'dropdownlist-hover':true,'none':isHiddenDropdownList}">
        <li
          v-for="(t,i) of dropdownList"
          :key="i"
          @mouseover="(classOn=t)"
          @click="showDropdownList(true,t)"
          :class="{on:(t==classOn)}"
        >{{t}}</li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      // 数据库获取机舱名字
      dropdownList: ["经济舱", "高端经济舱", "商务舱", "头等舱"],
      isHiddenDropdownList: true,
      dropdownListItem: "经济舱",
      classOn: "经济舱"
    };
  },
  methods: {
    showDropdownList(status, title) {
      this.isHiddenDropdownList = status;
      this.dropdownListItem = title;
      this.classOn = title;
      this.$emit("listValueChange", title);
    }
  },
  components: {}
};
</script>

<style scoped>
/* 下拉选择框
   ========================================================================== */
.dropdown {
  height: 34px;
  line-height: 34px;
  background: #fff;
  position: relative;
  border: 1px solid #29a8bb;
  width: 96px;
  padding: 0 10px;
}
@media (max-width: 1189px) {
  .dropdown {
    height: 34px;
    line-height: 34px;
    background: #fff;
    position: relative;
    border: 1px solid #29a8bb;
    width: 69px;
    padding: 0 8px;
  }
}
.dropdown i {
  margin-top: 15px;
}
.dropdown em {
  margin-right: 8px;
  *margin-left: 10px;
  margin-top: 1px;
  font-style: normal;
  float: right;
  display: block;
  color: #666;
}
.dropdown span {
  width: 100%;
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
/*　通用
   ========================================================================= */
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
.searchbox-people-option .note {
  color: #858a99;
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

.dropdownlist-cabin {
  top: 0;
  left: 0;
}
.dropdownlist-cabin li {
  height: 36px;
  line-height: 36px;
}
/* + - 号
   ========================================================================== */
.prev-icon,
.next-icon {
  border-color: #fff;
  width: 15px;
  height: 24px;
  line-height: 24px;
  border: 1px solid #d8dbe5;
  text-align: center;
  color: #b3b6bc;
  background: #fff;
}
.prev-icon-hot,
.next-icon-hot {
  background-color: #f6f8fa;
  cursor: pointer;
  color: #474747;
}
.prev-icon-hot:hover,
.next-icon-hot:hover {
  background-color: #e8ebed !important;
}
.prev-icon:hover,
.next-icon:hover {
  background-color: #fff;
}
</style>