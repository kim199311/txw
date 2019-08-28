<template>
<div class="mail" id="main">
    <div class="tabA mgt10">
        <a class="active"   @click="change1" >直接预订</a>
        <router-link to="/order/order06">跳转记录</router-link>
        <div class="cursor mgr10 fr " style="font-size:12px;margin-top:21px;" @click="change2" >非会员订单查询</div>
    </div>
    <div class="cboth"></div>
    <div class="mgb10 lh26" style=" margin:15px 0 0 15px;">
        暂时只提供<b>直接预订</b>且以201开头的订单查询。<span id="getSuppliers" @click="changesupplier">点击查看支持的供应商</span>。<supplier :show-dialog="showDialog" :msg="msg" :type="type" @closesupplier="closesupplier"></supplier>
            非201订单请<a href="#" target="view_window">点击这里</a>获取帮助。
    </div>
    <!--非会员开始-->
    <!-- order query -->
    <div class="flight_list mgt50" id="queryDiv" v-show="dis==false">
        <div class="title_num">
            <span class="fs14 blue fl mgl20">非会员订单查询</span>
            <a class="fr mgr20" id="switch"><span class="arrow-down-douber"></span></a>
        </div>
        <div class="main_num" style="background-color: #fafafa;" id="queryBody">
            <!-- <form id="queryForm" name="queryForm" method="post" > -->
                <input type="hidden" name="action" value="query">

                <div class="loginbox" style="width:60%">
                    <li class="xgmd" style="background-color:transparent;">
                        <div class="mgb20 mgl40" id="query-type">
                            <label><input name="queryType" autocomplete="off" value="mobile" type="radio" checked="">手机号查询</label>
                            <label class="mgl10"><input name="queryType" autocomplete="off" value="order" type="radio">订单号查询</label>
                        </div>
                        <div id="query-box-mobile" class="">
                            <dl>
                                <dt>手机号码</dt>
                                <dd>
                                    <div class="item_box">
                                        <input  style="width:200px;" autocomplete="off" tip="请输入订单联系人手机号码" errormsg="请输入有效的手机号码" maxlength="11" datatype="m" name="mobile1" id="mobile" class="item_fo" type="text" value="">
                                    </div>
                                </dd>
                            </dl>
                            <dl>
                                <dt>图形码</dt>
                                <dd style="float:left">
                                    <div class="item_box " style="width:132px;">
                                        <input v-model="vercode"  style="width:100px;" class="item_fo" maxlength="6" autocomplete="off" type="text">
                                    </div>
                                    <div class="fl">
                                        <span class="cur mgl5"></span>
                                    </div>
                                </dd>
                                <div @click="refreshCode" style="float:left;margin-left:-25px;">
                                    <sidentify :identifyCode="identifyCode"></sidentify>
                                </div>
                            </dl>
                            <dl>
                                <dt>验证码</dt>
                                <dd>
                                <div class="item_box item_fo_x">
                                    <input style="width:200px;" maxlength="6" autocomplete="off" tip="请输入验证码" errormsg="请输入6位数字的验证码" datatype="/^[0-9]{6}$/" name="authCode" class="item_fo" type="text">
                                </div>
                                <div class="but_dxyzm mgl8" type="common" target="mobile" verifyid="verify_code">
                                    点击免费获取
                                </div>
                                </dd>
                            </dl>
                        </div>

                        <div id="query-box-order" class="none">
                            <dl>
                                <dt>订单号</dt>
                                <dd>
                                    <div class="item_box">
                                        <input autocomplete="off" tip="请输入订单号" datatype="/^[0-9]{21}$/" name="orderCode" class="item_fo" type="text" maxlength="21" value="">
                                    </div>
                                </dd>
                            </dl>
                            <dl>
                                <dt>手机号码</dt>
                                <dd>
                                    <div class="item_box">
                                        <input autocomplete="off" tip="请输入订单联系人手机号码" errormsg="请输入有效的手机号码" maxlength="11" datatype="m" name="mobile2" class="item_fo" type="text" value="">
                                    </div>
                                </dd>
                            </dl>
                            <dl>
                                <dt>图形码</dt>
                                <dd>
                                    <div class="item_box item_fo_x" style="width:132px;">
                                        <input class="item_fo" maxlength="6" autocomplete="off" id="captcha" name="captcha" type="text" datatype="/^[a-z]{6}$/i" tip="请输入图形码" errormsg="请输入6位的图形码">
                                    </div>
                                <div class="fl">
                                    <span class="cur mgl5"><img src="captcha.php?bg=250&amp;r=1560174509" class="captcha" target="captcha" title="点击刷新" align="absmiddle"></span>
                                </div>
                                </dd>
                            </dl>
                        </div>

                        <dl>
                            <dt>&nbsp;</dt>
                            <dd class="mgt5">
                                <span id="querySubmitBtn" class="baocun buttonA fl" style="width: 170px; font-size: 14px;" @click="checkorder">查询订单</span>
                            </dd>
                        </dl>
                    </li>
                </div>
                <!-- </form> -->
            </div>
        </div>
        <!-- end -->
        <!-- 直接预订页面开始-->
        <!-- <form id="filterForm" name="filterForm" method="post" class="" action="/member/flight-order.php" v-show="dis==true"> -->
        <div  v-show="dis==true">
            <div style="margin:20px; height:30px;width:850px">
                <span class="fl pt3" >订单开始时间：</span>
                <div class="dateDiv">
                        <date-picker v-model="date1" fontSize="12px" fontWeight="600" padding="0"></date-picker>
                        <span class="dateImg"></span>
                </div>
                <span class="fl pt3 mgl30">订单结束时间：</span>
                <div class="dateDiv">
                        <!-- <input type="text" name="endDate" id="endDate" value="2019-06-10" readonly="readonly"> -->
                        <date-picker v-model="date2" fontSize="12px" fontWeight="600" padding="0"></date-picker>
                        <span class="dateImg"></span>
                </div>
                <span class="fl pt3 mgl30">状态：</span>
                <select name="status" id="status" class="searchDiv fl">
                    <option value="" selected=""></option>
                    <option value="CONFIRM">未付款</option>
                    <option value="WAITING">等待座位确认</option>
                    <option value="CANCEL">已取消</option>
                    <option value="FAIL">下单失败</option>
                    <option value="PREPAYMENT">已成功提交付款</option>
                    <option value="PAYMENT">已付款</option>
                    <option value="FINISHED">已出票</option>
                    <option value="APPLYCHANGE">改签申请</option>
                    <option value="CHANGE">改签完成</option>
                    <option value="APPLYREFUND">退票申请</option>
                    <option value="REFUND">退票完成</option>
                </select>
                <button style="margin-left:15px;" class="fl delete cursor" @click="con">确定</button>
            </div>
        </div>
        <div id="flightList"></div>
</div>
</template>
<script>
import '../../../public/member1.css'
import sidentify from "./code.vue"
import supplier from "./alert.vue"
import DatePicker from "../index/DatePicker"

export default {
    data(){
        return {
            // 日期
            date1:"",
            date2:"",
            vercode:"",
            dis:true,
            identifyCode:'1mj4',
            identifyCodes:"1234567890wiserui",
            showDialog:false,
            msg:"支持的供应商:携程旅行，去哪儿网，途牛，中国南方航空官网",
            type:1
        }
    },
    created(){
        this.dis=this.$route.query.dis;

    },
    components:{
        sidentify,
        supplier,
        DatePicker
    },
    methods:{
       con(){
           this.axios.get("/txorder",{params:{
               otag:6,
               otime:'2019-06-19',
               etime:'2019-06-21'
           }}).then(res=>{
               console.log("成功")
           }).catch(err=>{
               console.log("sorry");
           })
       },
       closesupplier(){
           this.showDialog=false;
       },
       changesupplier(){
           this.showDialog=!this.showDialog;
       },
       change1(){

           this.dis=true;
       },
       change2(){
           this.dis=false;

       },
       randomNum(min,max){
           return Math.floor(Math.random()*(max-min)+min);
       },
       checkorder(){
           if(this.vercode==this.identifyCode){
               alert("验证通过！");
           }else{
               alert("验证失败！");
           }
       },
       refreshCode(){
           this.identifyCode="";
           this.markeCode(this.identifyCodes,4);
           console.log('当前验证码==',this.identifyCode);
       },
       markeCode(o,l){
           for(let i=0;i<l;i++){
               this.identifyCode+=this.identifyCodes[
                   this.randomNum(0,this.identifyCodes.length)
               ];
           }
       }
    }

}
</script>
<style scoped>

  
  
</style>