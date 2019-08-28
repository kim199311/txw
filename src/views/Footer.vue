<template>
  <footer>
    <nav class="seo-links mgt20">
      <div class="wrap">
        <section class="seo-links-group">
          <h3 class="pb10">天巡网推荐</h3>
          <ul>
            <li>
              <a href="javascript:;">热门城市</a>
            </li>
            <li>
              <a href="javascript:;">热门机场</a>
            </li>
            <li>
              <a href="javascript:;">国家/地区</a>
            </li>
            <li>
              <a href="javascript:;">航空公司</a>
            </li>
            <li>
              <a href="javascript:;">航班时刻</a>
            </li>
            <li>
              <a href="javascript:;">旅游指南</a>
            </li>
            <li>
              <a href="javascript:;">酒店大全</a>
            </li>
          </ul>
        </section>
        <section class="seo-links-group">
          <h3 class="pb10">机票工具箱</h3>
          <ul>
            <li>
              <a href="javascript:;" target="_blank">申请天巡API及插件</a>
            </li>
            <li>
              <a href="javascript:;">下载手机客户端</a>
            </li>
          </ul>
        </section>
        <section class="seo-links-group">
          <h3 class="pb10">公司</h3>
          <ul>
            <li>
              <a href="javascript:;">关于天巡</a>
            </li>
            <li>
              <a href="javascript:;">合作洽谈</a>
            </li>
            <li>
              <a href="javascript:;">工作机会</a>
            </li>
            <li>
              <a href="javascript:;">隐私政策</a>
            </li>
            <li>
              <a href="javascript:;">服务条款</a>
            </li>
          </ul>
        </section>
        <section class="seo-links-group">
          <h3 class="pb10">帮助</h3>
          <ul>
            <li>
              <a href="javascript:;" target="_blank">帮助</a>
            </li>
          </ul>
        </section>
      </div>
    </nav>
  </footer>
</template>

<script>
import listItem from "@/components/footer/listItem";
export default {
  components: { listItem }
};
</script>
<style scoped>
.seo-links-group {
  box-sizing: border-box;
  float: left;
  margin: 0 1% 0 0;
  padding: 1% 0;
  width: 24%;
  box-sizing: border-box;
}
.seo-links {
  color: #666;
  line-height: 20px;
  /* min-width: 1120px; */
  background: #f3f2f5;
  margin-bottom: 20px;
  padding: 10px 0;
  height: 100%;
  overflow: hidden;
  /* min-width: 1120px; */
  border-bottom: none;
}
a {
  font-size: 12px;
}
a,
a:link {
  color: #666;
}
a:hover {
  color: #ff6600;
}
nav {
  margin: 0 auto;
}
h3 {
  font-size: 12px;
}
</style>