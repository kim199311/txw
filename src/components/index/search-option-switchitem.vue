<template>
  <label>
    <input type="radio" class="checkbox" :checked="checked" name="roundType" autocomplete="off">
    {{title}}
  </label>
</template>
<script>
export default {
  props: {
    title: { default: "", type: String },
    checked: { default: false, type: Boolean }
  }
};
</script>
<style scoped>
/* 通用 */
input[type="radio"] {
  margin-right: 3px;
  vertical-align: -2px;
}
/* 上面label样式
   ========================================================================== */
.type label,
.type a {
  color: #7fd7e8;
}
.type label {
  margin-right: 10px;
}
label {
  cursor: pointer;
}
</style>