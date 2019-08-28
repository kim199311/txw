// 头部导航栏列表
<template>
  <nav>
    <a
      href="javascript:;"
      v-for="(t,i) of nav"
      :key="i"
      :class="{'on':i==SelectedItem}"
      @click="changeSelectItem(i)"
    >{{t}}</a>
    <!-- <a href="javascript:;">酒店</a>
    <a href="javascript:;">租车</a>
    <a href="javascript:;">度假</a>
    <a href="javascript:;">旅行灵感</a>
    <a href="javascript:;">App</a>-->
  </nav>
</template>

<script>
export default {
  data() {
    return {
      // 从数据库拿到导航栏信息
      nav: ["机票", "酒店", "租车", "度假", "旅行灵感", "App"],
      // 获取当前选中的项目
      SelectedItem: 0
    };
  },
  methods: {
    changeSelectItem(index) {
      this.SelectedItem = index;
    }
  }
};
</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
/* 导航栏 
   ========================================================================== */
nav {
  width: auto;
  background-color: #00b2d6;
  float: left;
  margin: 0 auto;
  padding: 0;
  overflow: hidden;
  height: 40px;
  line-height: 40px;
  min-width: 550px;
  position: relative;
  /* z-index: 99; */
  margin-top: 20px;
  font-size: 16px;
  font-family: Microsoft YaHei, Arial, STXihei, "微软雅黑";
}
/* 导航栏项
   ========================================================================== */
nav a {
  border: 1px solid #00b2d6;
  float: left;
  margin: auto 8px;
  padding: 0 20px;
  display: block;
  color: #fff;
  height: 30px;
  line-height: 30px;
}
/* 选中状态 */
nav a.on {
  background-color: #fff;
  color: #00b2d6;
  margin: auto 6px;
  padding: 0 25px;
  border: 1px solid #fff;
  border-radius: 16px;
  height: 30px;
  line-height: 30px;
}
/* 鼠标悬停 */
nav a:hover {
  border: 1px solid #fff;
  border-radius: 15px;
}
</style>
