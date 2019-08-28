<template>
    <div class="loginPhone">
        <p class="loginPhone_logup"><a href="javascript:;" @click="tologup">☚其他方式注册</a></p>
        <h2>{{msg}}注册</h2>
        <h4>注册即可永久保存您的查询信息</h4>
        <!--邮箱方式-->
        <div class="loginEmail_input" v-show="loginEmail">
            <div class="alerm">{{alermMsg1}}</div>
            <input type="text" placeholder="请输入您的邮箱" @blur="blurEmail" v-model="emailText"
            :class="noEmailClick? ``: (blurEmailSuc? `login_Suc` : `login_fail`)">
            <input type="password" placeholder="设置登陆密码" @blur="blurPwd1" v-model="Pwd1Text"
            :class="noPwd1Click? ``: (blurPwd1Suc? `login_Suc` : `login_fail`)">
            <input type="password" placeholder="确认您的密码" @blur="blurPwd2" v-model="Pwd2Text"
            :class="noPwd2Click? ``: (blurPwd2Suc? `login_Suc` : `login_fail`)">
        </div>
        <!--手机号方式-->
        <div class="loginPhone_input" v-show="loginPhone">
            <div class="alerm">{{alermMsg2}}</div>
            <input type="text" placeholder="请输入您的手机号" @blur="blurPhone" v-model="PhoneText"
            :class="noPhoneClick? ``: (blurPhoneSuc? `login_Suc` : `login_fail`)">
            <div class="picNum">
                <input type="text" placeholder="图像码">
                <img src="img/log/picNum.png" alt="">
            </div>
            <div class="btnNum">
                <input type="text" placeholder="验证码">
                <button>免费获取</button>
            </div>
            <input type="password" placeholder="设置登陆密码" @blur="blurPwdP" v-model="PwdPText"
            :class="noPwdPClick? ``: (blurPwdPSuc? `login_Suc` : `login_fail`)">
        </div>
        <!--密保-->
        <div class="loginPhone_question">
            <div class="question1">
                <span>为了安全起见，请立即设置你的密保问题</span>
                <select name="question1" v-model="que1" @change="que1Change">
                    <option value="0">请选择密保一问题</option>
                    <option value="1">您父亲的姓名是？</option>
                    <option value="2">您母亲的姓名是？</option>
                    <option value="3">您小学好友的姓名是？</option>
                </select>
                <input type="text" placeholder="确认您的答案" v-model="ans1text" @blur="blurans1"
                :class="noans1Click? ``: (blurans1Suc? `login_Suc` : `login_fail`)">
            </div>
            <div class="question2">
                <select name="question2" v-model="que2" @change="que2Change">
                    <option value="0">请选择密保二问题</option>
                    <option value="1">您父亲的年龄是？</option>
                    <option value="2">您母亲的年龄是？</option>
                    <option value="3">您小学好友的年龄是？</option>
                </select>
                <input type="text" placeholder="确认您的答案" v-model="ans2text" @blur="blurans2"
                :class="noans2Click? ``: (blurans2Suc? `login_Suc` : `login_fail`)">
                <span>注册即表示您同意天巡的
                    <a href="javascript:;">服务条款</a>和
                    <a href="javascript:;">隐私政策</a>
                </span>
            </div>
        </div>
        <button class="loginPhone_sub" @click="logup">注册</button>
        <div class="loginPhone_chb">
            <input type="checkbox">接收目的地推荐及优惠邮件
        </div>
        <!--直接登陆-->
        <p class="loginPhone_login">已有账号?<a href="javascript:;" @click="tologin">直接登陆</a></p>
    </div>


</template>
<script>
    export default {
        props:{
            msg:{default:""},
            loginEmail:{default:false},
            loginPhone:{default:false},
            tologup:{type:Function},
            tologin:{type:Function},
            
        },
        data(){
            return{
                //0.提示消息
                alermMsg1:"",
                alermMsg2:"",
                //1.是否点击了input
                noEmailClick:true,
                noPhoneClick:true,
                noPwd1Click:true,
                noPwd2Click:true,
                noPwdPClick:true,
                noans1Click:true,
                noans2Click:true,
                //2.离开input后是否显示成功
                blurEmailSuc:false,
                blurPhoneSuc:false,
                blurPwd1Suc:false,
                blurPwd2Suc:false,
                blurPwdPSuc:false,
                blurans1Suc:false,
                blurans2Suc:false,
                //3.input输入的文本
                emailText:"",
                PhoneText:"",
                Pwd1Text:"",
                Pwd2Text:"",
                PwdPText:"",
                ans1text:"",
                ans2text:"",
                //
                que1:"0",
                que2:"0",
            }
        },
        watch:{
            Pwd1Text(){
                this.blurPwd1();
            },
            Pwd2Text(){
                this.blurPwd2();
            },
            PwdPText(){
                this.blurPwdP();
            }
        },
        methods:{
            /*************邮箱注册-邮箱验证**************/
            blurEmail(){
                var emailReg=/^[A-Za-z0-9]\w{5,17}@[A-Za-z0-9]{2,5}[.](com|cn|net)$/;
                if(!emailReg.test(this.emailText)){
                    this.alermMsg1="电子邮箱有误";
                    this.noEmailClick=false;
                    this.blurEmailSuc=false;
                    return;
                }
                this.noEmailClick=false;
                this.blurEmailSuc=true;
                this.alermMsg1="";
            },
            /*************邮箱注册-登陆密码验证**************/
            /*************一次密码**************/
            blurPwd1(){
                //验证密码格式是否通过
                var Pwd1Reg=/^\w{6,10}$/;
                if(!Pwd1Reg.test(this.Pwd1Text)){
                    this.alermMsg1="密码必须是6-10位数字、字母或下划线";
                    this.noPwd1Click=false;
                    this.blurPwd1Suc=false;
                    return;
                }
                //密码格式通过情况下，修改密码1，根据密码2的情况所触发的事件
                if(this.Pwd2Text!==this.Pwd1Text){
                    if(this.Pwd2Text){
                        this.alermMsg1="二次密码不一致";
                        this.noPwd1Click=false;
                        this.blurPwd1Suc=true;
                        this.noPwd2Click=false;
                        this.blurPwd2Suc=false;
                    }else if(!this.Pwd2Text){
                        this.alermMsg1="";
                        this.noPwd1Click=false;
                        this.blurPwd1Suc=true;
                    }
                }else{
                    this.alermMsg1="";
                    this.noPwd1Click=false;
                    this.blurPwd1Suc=true;
                    this.noPwd2Click=false;
                    this.blurPwd2Suc=true;
                }
            },
            /*************二次密码**************/
            blurPwd2(){
                var Pwd1Reg=/^\w{6,10}$/;
                if(Pwd1Reg.test(this.Pwd1Text)){
                    this.noPwd2Click=false;
                    this.blurPwd2Suc=true;
                    this.alermMsg1="";
                }else{
                    this.noPwd2Click=true;
                    this.blurPwd2Suc=false;
                    this.alermMsg1="密码必须是6-10位数字、字母或下划线";
                    return;
                }
                if(this.Pwd2Text!==this.Pwd1Text){
                    this.alermMsg1="二次密码不一致";
                    this.noPwd2Click=false;
                    this.blurPwd2Suc=false;
                    return;
                }
            },
            /*************手机注册-手机号验证**************/
            blurPhone(){
                var PhoneReg=/^[1][3-8]\d{9}$/;
                if(!PhoneReg.test(this.PhoneText)){
                    this.alermMsg2="手机号有误";
                    this.noPhoneClick=false;
                    this.blurPhoneSuc=false;
                    return;
                }
                this.noPhoneClick=false;
                this.blurPhoneSuc=true;
                this.alermMsg2="";
            },
            /*************手机注册-登陆验证**************/
            blurPwdP(){
                var PwdPReg=/^\w{6,10}$/;
                if(!PwdPReg.test(this.PwdPText)){
                    this.alermMsg2="密码必须是6-10位数字、字母或下划线";
                    this.noPwdPClick=false;
                    this.blurPwdPSuc=false;
                    return;
                }
                this.noPwdPClick=false;
                this.blurPwdPSuc=true;
                this.alermMsg2="";
            },
            /*************密保**************/
            que1Change(){
                this.ans1text="";
                this.noans1Click=true;
            },
            que2Change(){
                this.ans2text="";
                this.noans2Click=true;
            },
            blurans1(){
                if(!this.ans1text){
                    this.alermMsg1="请输入答案一";
                    this.alermMsg2="请输入答案一";
                    this.noans1Click=false;
                    this.blurans1Suc=false;
                    return;
                }
                this.noans1Click=false;
                this.blurans1Suc=true;
                this.alermMsg1="";
                //console.log(this.que1)
            },
            blurans2(){
                if(!this.ans2text){
                    this.alermMsg1="请输入答案二";
                    this.alermMsg2="请输入答案二";
                    this.noans2Click=false;
                    this.blurans2Suc=false;
                    return;
                }
                this.noans2Click=false;
                this.blurans2Suc=true;
                this.alermMsg2="";
                //console.log(this.que2);
            },
            /*************提交注册**************/
            logup(){
                var url="reguser";
                var obj={
                    /*************手机注册--tag:1**************/
                    /*************邮箱注册--tag:2**************/
                    tag:this.blurPhoneSuc==true? 1 : 2,
                    phone:this.blurPhoneSuc==true ? this.PhoneText : this.emailText,
                    upwd:this.blurPhoneSuc==true ? this.PwdPText : this.Pwd1Text,
                    qid1:this.que1,
                    qid2:this.que2,
                    ans1:this.ans1text,
                    ans2:this.ans2text
                };
                if((this.blurPhoneSuc==true && this.blurPwdPSuc==true
                && this.blurans1Suc==true && this.blurans2Suc==true)
                ||(this.blurEmailSuc==true && this.blurPwd1Suc==true
                    && this.blurPwd2Suc==true && this.blurans1Suc==true 
                    && this.blurans2Suc==true)){
                    this.axios.get(url,{params:obj}).then((result)=>{
                        //console.log(result);
                        alert("注册成功");
                        this.$router.go(0);
                    })
                }
            },
            
        }
    }
</script>
<style scoped>
@import "../../../public/css/log/logPhone.css";

/*
    .loginPhone{
        display:flex;
        flex-direction:column;
        align-items:center;
        width:370px;
        background-color:rgba(255, 255, 255, 0.8);
    }
    .loginPhone_logup{
        margin:0;
        width:300px;
        text-align:left;
        font-size:12px;
        margin-top:40px;
    }
    .loginPhone_logup>a{
        font-size:12px;
        text-decoration: none;
        color:#00b2d6;
    }
    .loginPhone_input>input,.loginEmail_input>input{
        width:300px;
        height:38px;
        margin:7px 0;
        padding-left:10px;
        cursor:pointer;
        border:1px solid #ddd;
        font-size:14px
    }
    .picNum,.btnNum{
        width:312px;
        height:38px;
        margin:7px auto;
        border:1px solid #ddd;
        display:flex;
        justify-content: space-between;
    }
    .picNum>img{
        width:128px;
    }
    .picNum>input,.btnNum>input{
        padding-left:10px;
        cursor:pointer;
        border:0;
        font-size:14px
    }
    .picNum:hover,.btnNum:hover{
        border:1px solid #00b2d6
    }
    .btnNum>button{
        width:140px;
        background-color:#f6f5f7;
        color:#009dbd;
        outline:none;
        border:0;
        cursor:pointer;
        font-size:12px;
    }
    .btnNum>button:hover{
        background-color:#dfdce3;
    }
    .loginPhone_input>input:hover,.loginEmail_input>input:hover{
        border:1px solid #00b2d6
    }
    .question1,.question2{
        display:flex;
        flex-direction: column;
        width:312px;
        margin:20px;
    }
    .question1>span,.question2>span{
        font-size:12px;
        text-align:left;
    }
    .question2>span>a{
        color:#00b2d6;
        text-decoration:none
    }
    .question1>input,.question1>select,.question2>input,.question2>select{
        height:38px;
        padding-left:10px;
        cursor:pointer;
        border:1px solid #ddd;
        font-size:14px
    }
    .loginPhone_sub{
        background-color:#00b2d6;
        border:0px;
        border-radius:20px;
        outline:none;
        width:300px;
        height:42px;
        margin:16px auto;
        color:#ffffff;
        font-size:15px;
        text-align:center;
        line-height:10px;
        cursor:pointer;
    }
    .loginPhone_sub:hover{
        background-color:#009dbd;
    }
    .loginPhone_chb{
        width:300px;
        display:flex;
        font-size:12px;
        align-items:center;
    }
    .loginPhone_login{
        font-size:12px;
        margin-top:30px;
        margin-bottom:30px;
    }
    .loginPhone_login>a{
        color:#00b2d6;
        text-decoration:none
    }
    .loginPhone>h4{
        color:#b6b1bd;
        font-size:12px;
        margin-top:0;
    }
    */
</style>


