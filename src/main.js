import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
//引用axios模块
import axios from "./axios";
//引入图标样式
import "./font/font_ujof7urslyk/iconfont.css";
import "./font/font_1upj7yzwwa1/iconfont.css";
//引入提示框组件


Vue.config.productionTip = false;

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount("#app");
