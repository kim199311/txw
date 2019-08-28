<template>
  <!-- 登陆 -->
  <div>
    <div
      class="account-box mgt1"
      @mouseleave="changeListStatus(false)"
      @mouseenter="changeListStatus(true)"
    >
      <i class="user-icon fl mgt2"></i>
      <div class="mgt1">
        <!-- 未登录时状态 -->
        <div class="clearfix" v-if="clearfixShow">
          <router-link to="/log" class="fl mgl5">登陆</router-link>
          <span class="fl mgl5">|</span>
          <router-link to="/log" class="fl mgl5">注册</router-link>
        </div>
        <div class="clearfix" v-else>
          <a href="javascript" class="fl mgl5">{{wel}}</a>
          <span class="fl mgl5">|</span>
          <a class="fl mgl5" @click="cancel">注销</a>
        </div>
        <!-- 登陆后的用户名 -->
        <div id="account-username" class="clearfix none">
          <a href="javascript:;" class="fl mgl5" target="_blank">12</a>
        </div>
      </div>
    </div>
    <div class="account-info pa">
      <div
        class="accountOrder"
        @mouseleave="changeListStatus(false)"
        @mouseenter="changeListStatus(true)"
        v-show="listStatus"
      >
        <ul>
          <login-listitem v-for="(t,i) of list" :key="i" :iconName="t.iconName" :title="t.title"></login-listitem>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
import loginListitem from "./login-listitem";
import { setTimeout, clearTimeout } from "timers";
export default {
  data() {
    return {
      wel: "",
      clearfixShow: true,
      // 登陆/注册 按钮下的列表
      list: [
        { iconName: "icon_flight", title: "机票订单" },
        { iconName: "icon_guzhu", title: "价格提醒" },
        { iconName: "icon_fromApp", title: "来自手机" },
        { iconName: "icon_user", title: "会员中心" }
      ],
      // 列表显示的状态
      listStatus: false,
      time: null
    };
  },
  created() {
    var n = sessionStorage.getItem("userName");
    console.log(n);
    if (n) {
      this.clearfixShow = false;
      this.wel = `欢迎回来：${n}`;
    }
  },
  methods: {
    cancel() {
      this.clearfixShow = true;
      sessionStorage.removeItem("userName");
    },
    changeListStatus(s) {
      if (!s) {
        this.time = setTimeout(() => {
          this.listStatus = s;
        }, 300);
      } else {
        clearTimeout(this.time);
        this.listStatus = s;
      }
    }
  },
  components: {
    loginListitem
  }
};
</script>

<style scoped>
/* 登陆 注册 */
.account-box {
  border: 1px solid #00b2d6;
  height: 24px;
  width: 100%;
  line-height: 24px;
  padding: 0px 5px 0 10px;
  border-radius: 12px;
  vertical-align: middle;
}
.account-box:hover {
  border: 1px solid #fff;
}
a {
  color: #fff;
}
.accountOrder {
  text-align: center;
  padding: 10px 0;
  width: 130px;
  color: #fff;
  font-size: 12px;
}
ul::before {
  border-bottom-color: #d6d9dd;
  border-width: 11px;
  margin-left: -11px;
}
ul::before,
ul::after {
  border: medium solid transparent;
  bottom: 100%;
  content: " ";
  height: 0;
  left: 50%;
  pointer-events: none;
  position: absolute;
  width: 0;
}
ul::after {
  border-bottom-color: #fff;
  border-width: 10px;
  margin-left: -10px;
}
.account-info {
  background-color: #fff;
  border-radius: 5px;
  box-shadow: 1px 3px 3px #b6b1bd;
  z-index: 999;
  top: 55px;
}
</style>