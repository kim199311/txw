<template>
  <div>
    <div class="wrap ac" style="overflow:hidden">
      <img :src="require('@/assets/404.gif')" style="margin-bottom:20px;">
      <div class="cboth"></div>
      <button-link title="天巡主页"></button-link>
      <div class="mgb7"></div>
    </div>
  </div>
</template>
<script>
import buttonLink from '@/components/404/buttonLink'
export default {
  components:{buttonLink}
};
</script>
<style scoped>
</style>
