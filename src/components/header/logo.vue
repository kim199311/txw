<template>
  <a class="logo fl" href="/">
    <img title="天巡网" :src="require('@/assets/logoB.png')">
  </a>
</template>
<script>
export default {
  data() {
    return {};
  },
  methods: {},
  components: {}
};
</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->


<style scoped>
.logo {
  display: inline-block;
  width: 100px;
  height: auto;
  margin-top: 6px;
  margin-right: 15px;
}
.logo img {
  width: 100px;
  height: auto;
  border: 0;
}
</style>