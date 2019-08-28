<template>
  <div class="wrap clearfix">
    <div class="home-con-text mgt20">
      <div class="title">
        <h1>旅行者首选目的地</h1>
        <span class="price fs14 mgl5" style="font-size:12px">[往返含税]</span>
        <span class="fr c999 pr5" style="font-size:12px">*机票价格变化频繁，请以实时查询价格为准*</span>
      </div>

      <!--旅游者首选机票-->
      <div class="box">
        <div class="one">
          <router-link to="/flightInfo" >
            <div class="top">
              <div class="text">
                <h2>曼谷</h2>
                <span class="fr">
                  ¥
                  <span class="fs20">344</span>起
                </span>
              </div>
              <div class="img">
                <img :src="require('@/assets/city/BKKT.jpg')">
              </div>
            </div>
          </router-link>

          <a href="javascript:;" target="_blank" dst="TPET">
            <div class="top">
              <div class="text">
                <h2>台北</h2>
                <span class="fr">
                  ¥
                  <span class="fs20">1102</span>起
                </span>
              </div>
              <div class="img">
                <img :src="require('@/assets/city/TPET.jpg')">
              </div>
            </div>
          </a>
        </div>

        <div class="two">
          <a href="javascript:;" target="_blank" dst="HKGA">
            <div class="con">
              <div class="text">
                <h2>香港</h2>
                <span class="fr">
                  ¥
                  <span class="fs20">727</span>起
                </span>
              </div>
              <div class="img">
                <img :src="require('@/assets/city/HKGA.jpg')">
              </div>
            </div>
          </a>
        </div>

        <div class="one">
          <a href="javascript:;" target="_blank" dst="LOND">
            <div class="top">
              <div class="text">
                <h2>伦敦</h2>
                <span class="fr">
                  ¥
                  <span class="fs20">2126</span>起
                </span>
              </div>
              <div class="img">
                <img :src="require('@/assets/city/LOND.jpg')">
              </div>
            </div>
          </a>

          <a href="javascript:;" target="_blank" dst="PARI">
            <div class="top">
              <div class="text">
                <h2>巴黎</h2>
                <span class="fr">
                  ¥
                  <span class="fs20">2814</span>起
                </span>
              </div>
              <div class="img">
                <img :src="require('@/assets/city/PARI.jpg')">
              </div>
            </div>
          </a>
        </div>

        <div class="two">
          <a href="javascript:;" target="_blank" dst="TYOA">
            <div class="con">
              <div class="text">
                <h2>东京</h2>
                <span class="fr">
                  ¥
                  <span class="fs20">1187</span>起
                </span>
              </div>
              <div class="img">
                <img :src="require('@/assets/city/TYOA.jpg')">
              </div>
            </div>
          </a>
        </div>
        <div class="cboth"></div>

        <div class="one three">
          <a href="javascript:;" target="_blank" dst="LAXA">
            <div class="top" style="height:100%;">
              <div class="text">
                <h2>洛杉矶</h2>
                <span class="fr">
                  ¥
                  <span class="fs20">2206</span>起
                </span>
              </div>
              <div class="img">
                <img :src="require('@/assets/city/LAXA.jpg')">
              </div>
            </div>
          </a>
        </div>

        <div class="one three">
          <a href="javascript:;" target="_blank" dst="SINS">
            <div class="top">
              <div class="text">
                <h2>新加坡</h2>
                <span class="fr">
                  ¥
                  <span class="fs20">969</span>起
                </span>
              </div>
              <div class="img">
                <img :src="require('@/assets/city/SINS.jpg')">
              </div>
            </div>
          </a>
        </div>

        <div class="one three">
          <a href="javascript:;" target="_blank" dst="OSAA">
            <div class="top">
              <div class="text">
                <h2>大阪</h2>
                <span class="fr">
                  ¥
                  <span class="fs20">1016</span>起
                </span>
              </div>
              <div class="img">
                <img :src="require('@/assets/city/OSAA.jpg')">
              </div>
            </div>
          </a>
        </div>

        <div class="one three">
          <a href="javascript:;" target="_blank" dst="SELA">
            <div class="top">
              <div class="text">
                <h2>首尔</h2>
                <span class="fr">
                  ¥
                  <span class="fs20">366</span>起
                </span>
              </div>
              <div class="img">
                <img :src="require('@/assets/city/SELA.jpg')">
              </div>
            </div>
          </a>
        </div>
      </div>

      <div class="cboth"></div>
      <div class="news" style="margin-top:20px;">
        <article>
          <div class="newsimg">
            <a href="javascript:;" target="_blank">
              <img :src="require('@/assets/news/mexicocover_0.jpg')">
            </a>
          </div>
          <div class="newscon">
            <h3>
              <a href="javascript:;" target="_blank">TA们的故事 一场改变人生的旅行就在你身边</a>
            </h3>
            <p>改变人生的旅行不一定发生在旅行结束后的即刻，它有可能在你心中埋下了一粒种子，留下了一个念头，有一天你突然发现，那场旅行在不经意间改变了你的生活！</p>
            <a class="buttonA moreNew" href="javascript:;" target="_blank">阅读更多</a>
          </div>
        </article>
      </div>
      <div class="news" style="margin-top:20px;">
        <article>
          <div class="newsimg">
            <a href="javascript:;" target="_blank">
              <img :src="require('@/assets/news/changeguide.jpg')">
            </a>
          </div>
          <div class="newscon">
            <h3>
              <a href="javascript:;" target="_blank">2019年暑期目的地之英国伦敦 最适合孩子参加的八大活动</a>
            </h3>
            <p>天巡Skyscanner 为你推荐了8个伦敦最适合孩子们参加的活动及其地点，这些丰富多彩的活动不仅有趣，成本也很低廉，每个孩子的门票费用不会超过5英镑。这些非常规的旅游地点一定比大众景点更令孩子们感到难忘。</p>
            <a class="buttonA moreNew" href="javascript:;" target="_blank">阅读更多</a>
          </div>
        </article>
      </div>
      <div class="news" style="margin-top:20px;">
        <article style="margin-right:0;">
          <div class="newsimg">
            <a href="hjavascript:;" target="_blank">
              <img :src="require('@/assets/news/LegolandDeutschland.jpg')">
            </a>
          </div>
          <div class="newscon">
            <h3>
              <a href="javascript:;" target="_blank">全世界8家Legoland乐高主题乐园 大人小孩都喜欢</a>
            </h3>
            <p>乐高号称它是1到99岁都适合的玩具，鲜亮的颜色，精密的接合，创意十足的设计，无论大人还是小孩，一旦入坑就难以自拔，暑假来临，不妨带孩子奔向五彩缤纷的乐高世界吧！</p>
            <a class="buttonA moreNew" href="javascript:;" target="_blank">阅读更多</a>
          </div>
        </article>
      </div>
      <div
        style="max-width:728px;max-height:90px;margin:30px auto 0px auto;margin-bottom:20px\9;clear:both;padding-top:20px;padding-top:20px\9;"
        id="div-gpt-ad-123456789-cross"
        data-google-query-id="CN3-ofTY4uICFZocKgodlKkNWw"
      ></div>
    </div>

    <!-- 右侧 -->
    <div class="home_side">
      <div class="template mgt10">
        <router-link to="seat" class="tempLeft bb"  rel="nofollow">
          <i class="ico_cpcx"></i>网上选座
        </router-link>
        <router-link :to="{path:'/order/order01',query:{abl:true}}" class="tempRight bb" rel="nofollow">
          <i class="ico_jpyz"></i>出票状态
        </router-link>
        <a
          class="tempLeft"
          style="padding-bottom:10px;"
          href="javascript:;"
          target="_blank"
          rel="nofollow"
        >
          <i class="ico_wsxz"></i>
          <em>机票验真</em>
          <span>(国内)</span>
        </a>
        <router-link to="order/order01">
          <i class="ico_tgq"></i>退票改签
        </router-link>
      </div>
      <div class="cboth"></div>

      <div id="home-side-campaign" class="mgt10">
        <p>
          <a href="javascript:;" target="_blank">
            <img :src="require('@/assets/CN-TianXun_social.jpg')" width="300" height="250">
          </a>
        </p>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
.price {
  color: #ff5452;
}
* {
  font-family: Arial, Lucida, Verdana, Helvetica, sans-serif;
}
.home-con-text {
  width: 815px;
  float: left;
}
@media (max-width: 1189px) {
  .home-con-text {
    width: 675px;
    float: left;
  }
}
.home-con-text .title h1 {
  float: left;
  font-size: 20px;
}
.l {
  display: inline;
}
.r {
  display: inline;
}
.home-con-text .box {
  height: 468px;
  margin: 0 auto;
  margin-top: 6px;
}
.box .one {
  width: 25%;
  height: 100%;
  float: left;
}
.box .one .top {
  width: 97%;
  height: 50%;
  overflow: hidden;
  position: relative;
  margin-right: 2%;
  margin-bottom: 6px;
}
.box .three {
  height: 50% !important;
  margin-top: 7px;
}
.box .three .top {
  height: 100% !important;
}
.box .one .top .text {
  position: absolute;
  z-index: 1;
  bottom: 0;
  padding: 0px 3%;
  color: #fff;
  *background-color: #000;
  background-color: rgba(0, 0, 0, 0.6);
  width: 94%;
  height: 34px;
  line-height: 34px;
  font-weight: normal;
}
.box .one .top .text h2,
.box .one .top .text h2:hover {
  float: left;
  font-weight: normal;
  font-size: 18px;
}
.box .two .con .img img:hover,
.box .one .top .img img:hover {
  -webkit-transform: scale(1.05);
  transform: scale(1.05);
}
.box .one .top .img {
  position: absolute;
  width: 100%;
  height: 100%;
  background-color: #fff;
}
.box .one .top .img img {
  position: absolute;
  left: 0;
  top: 0;
  -webkit-transition: all ease 0.3s;
  transition: all ease 0.3s;
}
.box .two {
  width: 25%;
  height: 101.1%;
  float: left;
}
.box .two .con {
  width: 97%;
  margin-right: 1%;
  position: relative;
  overflow: hidden;
  height: 100.1%;
}
.box .two .con .text {
  position: absolute;
  z-index: 1;
  bottom: 0;
  color: #fff;
  *background-color: #000;
  background-color: rgba(0, 0, 0, 0.6);
  width: 94%;
  height: 34px;
  line-height: 34px;
  font-weight: normal;
  padding: 0 3%;
}
.box .two .con .text h2 {
  float: left;
  font-size: 18px;
}
.box .two .con .img {
  width: 100%;
  height: 100%;
  background-color: #fff;
}
.box .two .con .img img {
  height: 100%;
  -webkit-transition: all ease 0.3s;
  transition: all ease 0.3s;
}
.home-con-text .news article {
  border: 1px solid #ecebeb;
  float: left;
  margin-right: 26.5px;
  margin-left: 0px;
  width: 250px;
  -moz-box-shadow: 0 1px 1px 0px #e5e5e5;
  -webkit-box-shadow: 0 1px 1px 0px #e5e5e5;
  box-shadow: 0 1px 1px 0px #e5e5e5;
}
@media (max-width: 1189px) {
  .home-con-text .news article {
    border: 1px solid #ecebeb;
    float: left;
    margin-right: 12.5px;
    margin-left: 0px;
    width: 213px;
  }
}
.home-con-text .news article .newsimg img {
  width: 250px;
}
@media (max-width: 1189px) {
  .home-con-text .news article .newsimg img {
    width: 213px;
  }
}
/* 新闻
   ========================================================================== */
/*旅游资讯、新闻*/

.news article {
  border: 1px solid #ecebeb;
  float: left;
  margin-right: 29px;
  margin-left: 10px;
  width: 230px;
  -moz-box-shadow: 0 1px 1px 0px #e5e5e5;
  -webkit-box-shadow: 0 1px 1px 0px #e5e5e5;
  box-shadow: 0 1px 1px 0px #e5e5e5;
}
.news article:hover {
  -moz-box-shadow: 0 1px 1px 0px #e5e5e5;
  -webkit-box-shadow: 0 1px 1px 0px #e5e5e5;
  box-shadow: 0px 2px 2px 1px #e5e5e5;
}
@media (max-width: 1189px) {
  .news article {
    border: 1px solid #ecebeb;
    float: left;
    margin-right: 15px;
    margin-left: 0px;
    width: 205px;
  }
}
.news article .newsimg {
  background: #fff;
  text-align: center;
  max-height: 140px;
  min-height: 120px;
  overflow: hidden;
}
.news article .newsimg img {
  width: 230px;
}
@media (max-width: 1189px) {
  .news article .newsimg img {
    width: 205px;
  }
}
.news article .newscon {
  background: #fff;
  min-height: 200px;
  padding: 22px 18px 30px;
  position: relative;
}
@media (max-width: 1189px) {
  .news article .newscon {
    background: #fff;
    min-height: 200px;
    padding: 22px 10px 30px;
    position: relative;
  }
}
.news article .newscon h3 a {
  color: #474747;
  font-size: 14px;
}
.news article .newscon h3 a:hover {
  color: #ff5452;
}
.news article .newscon p {
  color: #9a9a9b;
  font-size: 12px;
  padding: 10px 0;
}
.news article .newscon .moreNew {
  border-radius: 3px;
  bottom: 20px;
  display: block;
  height: 24px;
  line-height: 24px;
  text-align: center;
  position: absolute;
  width: 75%;
  left: 12%;
}
@media (max-width: 1189px) {
  .news article .newscon .moreNew {
    border-radius: 3px;
    bottom: 20px;
    display: block;
    height: 24px;
    line-height: 24px;
    text-align: center;
    position: absolute;
    width: 80%;
    left: 10%;
  }
}
.news article:hover .newscon .moreNew {
  background: #29a8bb;
}
/* 右侧
   ========================================================================== */
.home_side {
  width: 300px;
  float: right;
  margin-top: 20px;
}
.home_side .template {
  border: 1px solid #d9d9d9;
  background: #fff;
  overflow: hidden;
}
.home_side .template .tempLeft {
  border-right: 1px solid #f1f1f1;
  width: 108px;
}
.home_side .template a {
  color: #474747;
  display: block;
  height: 36px;
  font-size: 16px;
  display: block;
  float: left;
  padding: 13px 20px 8px;
  width: 109px;
}
.home_side .template .tempLeft {
  border-right: 1px solid #f1f1f1;
  width: 108px;
}
.home_side .template a em {
  font-style: normal;
  position: absolute;
  margin-top: 2px;
}
.home_side .template a span {
  color: #666;
  font-size: 12px;
  margin-top: 28px;
  line-height: 0;
  position: absolute;
}
/* 其他 
   ========================================================================== */
.buttonA {
  border: none;
  color: #fff;
  cursor: pointer;
  font-size: 12px;
  background-color: -webkit-linear-gradient(to top, #00bd68, #00d775);
  background-image: linear-gradient(to top, #00bd68, #00d775);
  background-color: #00bd68;
}
p {
  line-height: 150%;
}
</style>