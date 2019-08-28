<template>
  <div class="mail" id="main">
    <div class="userset overflow">
      <form id="form">
        <input type="hidden" id="curEmail" value>
        <input type="hidden" id="curMobile" value>
        <h3 class="default">基本信息</h3>
        <div class="con fs14">
          <ul>
            <li id="realname-box" class="data">
              <span class="box1">昵称：</span>
              <span class="box2">小渔圈圈。。。</span>
              <a rel="realname" class="edit-label change" @click="xg1">修改</a>
            </li>
            <li style="clear:both" id="realname-edit-box" class="xgmd" v-show="zt1">
              <input
                type="hidden"
                autocomplete="off"
                name="_token_"
                value=""
              >
              <dl>
                <dt>昵称</dt>
                <dd>
                  <div class="item_box">
                    <input
                      type="text"
                      maxlength="20"
                      tip="请输入昵称"
                      data-type="s"
                      name="realname"
                      class="item_fo"
                    >
                  </div>
                </dd>
              </dl>
              <dl>
                <dt>&nbsp;</dt>
                <dd class="mgt5">
                  <span rel="realname" class="baocun buttonA fl">保 存</span>
                  <span rel="realname" class="cancel fl mgl20"  @click="xg1">取消</span>
                </dd>
              </dl>
            </li>
            <li id="mobile-box" class="data">
              <span class="box1">手机：</span>
              <span class="box2">未设置</span>
              <a rel="mobile" class="edit-label change" @click="xg2">修改</a>
            </li>
            <li id="mobile-edit-box" class="xgmd" v-show="zt2">
              <input
                type="hidden"
                autocomplete="off"
                name="_token_"
                value=""
              >
              <dl>
                <dt>新手机</dt>
                <dd>
                  <div class="item_box">
                    <input
                      type="text"
                      autocomplete="off"
                      tip="请输入手机号码"
                      errormsg="请输入有效的手机号码"
                      maxlength="11"
                      data-type="m"
                      name="mobile"
                      id="mobile"
                      class="item_fo"
                    >
                  </div>
                </dd>
              </dl>
              <dl>
                <dt>校验码</dt>
                <dd>
                  <div class="item_box item_fo_x" style="width:132px;">
                    <input
                      type="text"
                      class="item_fo"
                      maxlength="6"
                      autocomplete="off"
                      id="verify_code"
                      name="verify_code"
                    >
                  </div>
                  <div class="fl">
                    <span class="cur mgl5">
                      <img
                        onclick="refreshCc();"
                        align="absmiddle"
                        id="verify_code_img"
                        target="captcha"
                        title="点击刷新"
                      >
                    </span>
                  </div>
                </dd>
              </dl>
              <dl>
                <dt>验证码</dt>
                <dd>
                  <div class="item_box item_fo_x">
                    <input
                      type="text"
                      maxlength="6"
                      autocomplete="off"
                      tip="请输入验证码"
                      errormsg="请输入6位数字的验证码"
                      data-type="/[0-9]{6}/"
                      name="authCode"
                      class="item_fo"
                    >
                  </div>
                  <div class="but_dxyzm mgl8" type="modify" target="mobile">点击免费获取</div>
                </dd>
              </dl>
              <dl>
                <dt>&nbsp;</dt>
                <dd class="mgt5">
                  <span rel="mobile" class="baocun buttonA fl">保 存</span>
                  <span rel="mobile" class="cancel fl mgl20"  @click="xg2">取消</span>
                </dd>
              </dl>
            </li>
            <li id="email-box" class="data">
              <span class="box1">邮箱：</span>
              <span class="box2">未设置</span>
              <a rel="email" class="edit-label change" @click="xg3">修改</a>
            </li>
            <li id="email-edit-box" class="xgmd" v-show="zt3">
              <input
                type="hidden"
                autocomplete="off"
                name="_token_"
              >
              <dl>
                <dt>新邮箱</dt>
                <dd>
                  <div class="item_box">
                    <input
                      type="text"
                      tip="请输入邮件地址"
                      errormsg="请输入有效的邮箱地址"
                      data-type="e"
                      maxlength="50"
                      name="email"
                      id="email"
                      class="item_fo"
                    >
                  </div>
                </dd>
              </dl>
              <dl>
                <dt>&nbsp;</dt>
                <dd class="mgt5">
                  <span rel="email" class="baocun buttonA fl">保 存</span>
                  <span rel="email" class="cancel fl mgl20"  @click="xg3">取消</span>
                </dd>
              </dl>
            </li>
            <li id="password-box" class="data">
              <span class="box1">密码：</span>
              <span class="box2">*********</span>
              <a rel="password" class="edit-label change" @click="xg4">修改</a>
            </li>
            <li id="password-edit-box" class="xgmd" v-show="zt4">
              <input
                type="hidden"
                autocomplete="off"
                name="_token_">
              <dl>
                <dt>原密码</dt>
                <dd>
                  <div class="item_box">
                    <input
                      type="password"
                      tip="请输入原密码"
                      errormsg="密码长度在8-32位之间"
                      data-type="*8-32"
                      maxlength="32"
                      autocomplete="off"
                      name="oldPass"
                      class="item_fo"
                    >
                  </div>
                </dd>
              </dl>
              <dl>
                <dt>新密码</dt>
                <dd>
                  <div class="item_box">
                    <input
                      type="password"
                      tip="请输入新密码"
                      errormsg="密码必须包含字母和数字且长度在8-32位之间"
                      data-type="password"
                      maxlength="32"
                      autocomplete="off"
                      name="password"
                      class="item_fo">
                  </div>
                </dd>
              </dl>
              <dl>
                <dt>确认新密码</dt>
                <dd>
                  <div class="item_box">
                    <input
                      type="password"
                      recheck="password"
                      tip="请重复输入新密码"
                      errormsg="您两次输入的账号密码不一致"
                      data-type="password"
                      maxlength="32"
                      autocomplete="off"
                      name="confirm"
                      class="item_fo"
                    >
                  </div>
                </dd>
              </dl>
              <dl>
                <dt>&nbsp;</dt>
                <dd class="mgt5">
                  <span rel="password" class="baocun buttonA fl">保 存</span>
                  <span rel="password" class="cancel fl mgl20"  @click="xg4">取消</span>
                </dd>
              </dl>
            </li>
            <li id="question-box" class="data">
              <span class="box1">密保：</span>
              <span class="box2">*********</span>
              <a rel="question" class="edit-label change" @click="xg5">修改</a>
            </li>
            <li id="question-edit-box" class="xgmd" v-show="zt5">
              <input
                type="hidden"
                autocomplete="off"
                name="_token_">
              <dl>
                <dt>密码:</dt>
                <dd>
                  <div class="item_box">
                    <input
                      type="password"
                      tip="请输入新密码"
                      data-type="*"
                      autocomplete="off"
                      name="questionPassword"
                      class="item_fo">
                  </div>
                </dd>
              </dl>

              <dl>
                <dt>密保问题1</dt>
                <dd>
                  <div class="protect-passcode">
                    <div class="dropdown">
                      <span class="fl mgl10" id="selectedCabin">请选择密保1问题</span>
                      <input
                        type="hidden"
                        id="questionId1"
                        name="questionId1"
                        value="0"
                        autocomplete="off"
                      >
                      <i class="icon_down_gray icon-arrow-up fr"></i>
                      <ul class="dropdownlist" style="top: -2px; display: none;">
                        <li data-val="1" class>你的出生地？</li>
                        <li data-val="2" class>你的第一任班主任是姓名？</li>
                        <li data-val="3" class>你母亲的生日？</li>
                        <li data-val="4" class>您目前的姓名是？</li>
                        <li data-val="5" class>您配偶的生日是？</li>
                        <li data-val="6" class>您的学号（或工号）是？</li>
                        <li data-val="7" class>您高中班主任的名字是？</li>
                        <li data-val="8" class>您父亲的姓名是？</li>
                        <li data-val="9" class>您父亲的生日是？</li>
                        <li data-val="10" class>您配偶的姓名是？</li>
                        <li data-val="11" class>您最熟悉的童年好友名字是？</li>
                        <li data-val="12" class>您最熟悉的学校宿舍舍友名字是？</li>
                        <li data-val="13" class>对您影响最大的人名字是？</li>
                      </ul>
                    </div>

                    <input type="hidden" value name="answerId1">
                    <input
                      type="text"
                      tip="请输入密保问题1答案"
                      errormsg="请输入密保问题1答案"
                      data-type="*1-20"
                      class="answers"
                      name="questionAnswer1"
                      value="请输入密保1答案"
                    >
                  </div>
                </dd>
              </dl>

              <div class="cboth"></div>
              <dl style="margin-top: 20px;">
                <dt>密保问题2</dt>
                <dd>
                  <div class="protect-passcode">
                    <div class="dropdown">
                      <span class="fl mgl10" id="selectedCabin">请选择密保2问题</span>
                      <input
                        type="hidden"
                        id="questionId2"
                        name="questionId2"
                        value="0"
                        autocomplete="off"
                      >
                      <i class="icon_down_gray icon-arrow-up fr"></i>
                      <ul class="dropdownlist" style="top: -2px; display: none;">
                        <li data-val="1" class>你的出生地？</li>
                        <li data-val="2" class>你的第一任班主任是姓名？</li>
                        <li data-val="3" class>你母亲的生日？</li>
                        <li data-val="4" class>您目前的姓名是？</li>
                        <li data-val="5" class>您配偶的生日是？</li>
                        <li data-val="6" class>您的学号（或工号）是？</li>
                        <li data-val="7" class>您高中班主任的名字是？</li>
                        <li data-val="8" class>您父亲的姓名是？</li>
                        <li data-val="9" class>您父亲的生日是？</li>
                        <li data-val="10" class>您配偶的姓名是？</li>
                        <li data-val="11" class>您最熟悉的童年好友名字是？</li>
                        <li data-val="12" class>您最熟悉的学校宿舍舍友名字是？</li>
                        <li data-val="13" class>对您影响最大的人名字是？</li>
                      </ul>
                    </div>
                    <input type="hidden" value name="answerId2">
                    <input
                      type="text"
                      tip="请输入密保问题2答案"
                      errormsg="请输入密保问题2答案"
                      data-type="*1-20"
                      class="answers"
                      name="questionAnswer2"
                      value="请输入密保2答案"
                    >
                  </div>
                </dd>
              </dl>

              <dl>
                <dt>&nbsp;</dt>
                <dd class="mgt20">
                  <span rel="question" class="baocun buttonA fl">保 存</span>
                  <span rel="question" class="cancel fl mgl20"  @click="xg5">取消</span>
                </dd>
              </dl>
            </li>
          </ul>
        </div>
      </form>
      <h3 class="default mgt15">账号绑定</h3>
      <div class="con conOther fs14" id="openids">
        <ul>
          <li class="data">
            <span class="box1 mgt3">
              <span class="weibo_zhbd"></span>
            </span>
            <span class="box2">新浪微博</span>
            <span class="box4">&nbsp;</span>
            <span class="box5">&nbsp;</span>
            <router-link to="bind_weibo" class="bind" type="weibo">点击绑定</router-link>
          </li>
          <li class="data">
            <span class="box1 mgt3">
              <span class="qq_zhbd"></span>
            </span>
            <span class="box2">腾讯QQ</span>
            <span class="box4">&nbsp;</span>
            <span class="box5">&nbsp;</span>
            <a class="bind" type="weibo" onclick="oauthLogin('qq', 'bind', true)"></a>
          </li>
          <li class="data">
            <span class="box1 mgt3">
              <span class="weixin_zhbd"></span>
            </span>
            <span class="box2">微信</span>
            <span class="box4">微信帐号：小渔圈圈。。。</span>
            <span class="box5">绑定时间：2019-6-01</span>
          </li>
        </ul>
      </div>
      <h3 class="default mgt15">其他设置</h3>
      <div class="con fs14">
        <ul>
          <li class="data">
            <span class="box1">订阅：</span>
            <span class="box2">
              <input
                value="1"
                style="vertical-align: middle;"
                id="forbidAd"
                type="checkbox"
                class="w20 mr5"
                name="forbidAd"
              >接收目的地推荐及优惠邮件
            </span>
          </li>
          <li class="data" id="delaccount-box">
            <span class="box1">账号注销：</span>
            <span class="box2">我不再使用这个账号</span>
            <a rel="delaccount" class="edit-label change">注销</a>
          </li>
          <li id="delaccount-confirm-box" class="xgmd none">
            <div class="fs14 ac lh24 mgb20">
              <span class="price">你确认要注销账号吗？</span>
              <br>账号注销后，将删除一切与账号相关的信息且无法恢复（如订单、邮箱、手机等信息），确定要注销吗？
            </div>
            <dl>
              <dt>&nbsp;</dt>
              <dd class="mgt5">
                <span rel="delaccount" class="baocun fl buttonA confirm">点错了</span>
                <span rel="delaccount" class="cancel fl mgl20 confirm">确认</span>
              </dd>
            </dl>
          </li>
          <li id="delaccount-edit-box" class="xgmd overflow none">
            <input
              type="hidden"
              autocomplete="off"
              name="_token_">
            <div class="fs14 ac lh24 mgb20">请输入你的账户密码后确认注销！</div>
            <dl>
              <dt>账号密码：</dt>
              <dd>
                <div class="item_box ac mgb10">
                  <input
                    type="password"
                    data-type="s"
                    name="delpassword"
                    id="account"
                    placeholder="账号密码"
                    autocomplete="off"
                    maxlength="32"
                    style="color: rgb(170, 170, 170);"
                    class="item_fo"
                  >
                </div>
                <span id="oldPasswordTip" class="red al block"></span>
              </dd>
            </dl>
            <dl>
              <dt class="mgb20">&nbsp;</dt>
              <dd class="mgt5">
                <span rel="delaccount" id="passwordBtn" class="baocun fl buttonA">确认注销</span>
                <span rel="delaccount" id="passwordCancelBtn" class="cancel fl mgl20">取消</span>
              </dd>
            </dl>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>
<script>
import "../../../public/member1.css";

export default {
  data() {
    return {
      zt1: false,
      zt2: false,
      zt3: false,
      zt4: false,
      zt5: false
    };
  },
  methods: {
    xg1() {
      this.zt1 = !this.zt1;
    },
    xg2() {
      this.zt2 = !this.zt2;
    },
    xg3() {
      this.zt3 = !this.zt3;
    },
    xg4() {
      this.zt4 = !this.zt4;
    },
    xg5() {
      this.zt5 = !this.zt5;
    }
  }
};
</script>
<style scoped>
</style>