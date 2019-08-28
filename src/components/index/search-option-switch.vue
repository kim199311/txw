<template>
  <div class="type" id="search-option-switch">
    <search-option-switchitem v-for="(t,i) of list" :key="i" :title="t.title" :checked="t.checked"></search-option-switchitem>
    <a class="mgl20" style="display: none;">搜索历史</a>
    <a href="javascript:;" class="fr">订单查询</a>
  </div>
</template>
<script>
import searchOptionSwitchitem from "./search-option-switchitem";
export default {
  data() {
    return {
      list: [
        { title: "往返", checked: true },
        { title: "单程", checked: false },
        { title: "国际多程(含缺口)", checked: false }
      ]
    };
  },
  components: { searchOptionSwitchitem }
};
</script>
<style scoped>
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

