<template>
  <li :class="{on:(titile==classOn)}" @mouseover="(classOn=title)">{{title}}</li>
</template>

<script>
export default {
  data() {
    return {
      // 数据库获取机舱名字
      dropdownList: ["经济舱", "高端经济舱", "商务舱", "头等舱"],
      isShowDropdownList: false,
      dropdownListItem: "经济舱",
      classOn: "经济舱"
    };
  },
  methods: {},
  props: {
    title: {
      default: "",
      type: String
    }
  }
};
</script>

<style scoped>
/* 下拉选择框
   ========================================================================== */
li {
  padding: 3px 0;
  height: 28px;
  line-height: 28px;
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