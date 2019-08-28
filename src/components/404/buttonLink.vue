<template>
  <router-link to="/">{{title}}</router-link>
</template>
<script>
export default {
  props:{title:{default:"  "}}
};
</script>
<style scoped>
a {
  border-radius: 5px;
  font-size: 1.2rem;
  line-height: 2.4rem;
  padding: 10px 45px;
  border: none;
  color: #fff;
  background-color: -webkit-linear-gradient(to top, #00bd68, #00d775);
  background-image: linear-gradient(to top, #00bd68, #00d775);
  background-color: #00bd68;
}
a:hover {
  background-color: -webkit-linear-gradient(to top, #00d775, #00d775);
  background-image: linear-gradient(to top, #00d775, #00d775);
  background-color: #00d775;
}
</style>
