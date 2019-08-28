<template>
  <div>
    <section>
      <search-control></search-control>
    </section>
    <con-text></con-text>
  </div>
</template>

<script>
import searchControl from "@/components/index/searchControl.vue";
import conText from "@/components/index/con-text.vue";
export default {
  components: {
    searchControl,
    conText
  }
};
</script>

<style scoped>
section {
  height: 450px;
  width: 100%;
  background: url(https://images1.tianxun.com/banner/flight.jpg?1543222583)
    no-repeat scroll center center;
  background-size: cover;
  position: relative;
}
</style>