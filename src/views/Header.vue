<template>
  <header>
    <div class="wrap">
      <!-- logo -->
      <logo></logo>
      <!-- 导航栏 -->
      <navbar></navbar>
      <div class="fr secondary">
        <!-- 登陆注册 -->
        <login></login>
      </div>
    </div>
  </header>
</template>

<script>
import navbar from "@/components/header/navbar";
import login from "@/components/header/login";
import logo from "@/components/header/logo";
export default {
  data() {
    return {};
  },
  methods: {},
  components: {
    navbar,
    login,
    logo
  }
};
</script>

<style scoped>
header {
  width:100%;
  background-color: #00b2d6;
  height: 60px;
  color: #fff;
  box-shadow: 0 2px 3px #b6b1bd;
}

.secondary {
  margin-top: 22px;
}
</style>