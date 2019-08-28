// 头部登陆
<template>
  <li>
    <a href="javascript:;" target="_blank" :title="title" v-cloak>
      <span :class="iconName"></span>{{title}}
    </a>
  </li>
</template>

<script>
export default {
  data() {
    return {};
  },
  methods: {},
  props: ["title","iconName"]
};
</script>
<style scoped>
a {
  color: #474747;
  clear: both;
  line-height: 34px;
  text-align: center;
  padding: 0 10px;
}
li {
  clear: both;
  width: 100%;
  height: 35px;
  text-align: center;
  line-height: 35px;
}
li:hover,
li:hover a {
  background-color: #f6f5f7;
  color: #00b2d6;
}
</style>


