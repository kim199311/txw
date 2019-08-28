<template>
  <label>
    <i class="fl infantsicon"></i>
    <span class="fl mgl4 note">{{title}}</span>
    <span class="fr next-icon" :class="{'next-icon-hot':canClickAdd}" @click="add">+</span>
    <input readonly type="text" value="0" autocomplete="off" class="fr" v-model="key">
    <span class="fr prev-icon" :class="{'next-icon-hot':canClickReduce}" @click="reduce">-</span>
  </label>
</template>

<script>
export default {
  data() {
    return {
      // counter 的 值
      key: this.min,
      // + 点击样式
      canClickAdd: true,
      // - 点击样式
      canClickReduce: false
    };
  },
  watch: {
    key: function() {
      if (this.key <= this.min) {
        this.canClickReduce = false;
      } else if (this.key >= this.max) {
        this.canClickAdd = false;
      } else {
        this.canClickReduce = true;
        this.canClickAdd = true;
      }
      this.$emit("valueChange", { title: this.title, key: this.key });
    }
  },
  methods: {
    // 点击加号
    add() {
      if (this.canClickAdd) {
        this.key++;
      } else {
        return;
      }
    },
    // 点击减号
    reduce() {
      if (this.canClickReduce) {
        this.key--;
      } else {
        return;
      }
    }
  },
  props: {
    // 选择器描述文本
    title: {
      default: ""
    },
    // 允许最小值
    min: {
      default: 0
    },
    // 允许最大值
    max: {
      default: 9
    }
  }
};
</script>

<style scoped>
/* input */
input[type="text"] {
  border-style: solid none;
  border-width: 1px 0px;
  border-color: #d8dbe5;
  background: none;
  font-size: 14px;
  text-align: center;
  width: 40px;
  height: 24px;
  padding: 0;
  margin: 0 -1px;
}
/* + - 号
   ========================================================================== */
.prev-icon,
.next-icon {
  border-color: #fff;
  width: 15px;
  height: 24px;
  line-height: 24px;
  border: 1px solid #d8dbe5;
  text-align: center;
  color: #b3b6bc;
  background: #fff;
}
.prev-icon-hot,
.next-icon-hot {
  background-color: #f6f8fa;
  cursor: pointer;
  color: #474747;
}
.prev-icon-hot:hover,
.next-icon-hot:hover {
  background-color: #e8ebed !important;
}
.prev-icon:hover,
.next-icon:hover {
  background-color: #fff;
}
/*  */
.note {
  color: #858a99;
}
</style>