<template>
    <div class="login">
        <h2>登陆</h2>
        <button class="login_weixin">
            <i class="iconfont icon-weixin"></i><span>通过微信登陆</span>
        </button>
        <button class="login_weibo">
            <i class="iconfont icon-weibo"></i><span>通过微博登陆</span>
        </button>
        <button class="login_qq">
            <i class="iconfont icon-qq"></i><span>通过QQ登陆</span>
        </button>
        <div class="or">
            <span>或者</span>
        </div>
        <div class="alerm">{{alermMsg}}</div>
        <div class="login_input">
            <!--登陆用户名-->
            <input type="text" placeholder="用户名/邮箱/手机号" v-model="loginUname" id="userName"
            @blur="blurUname" :class="noUnameClick? ``: (blurUnameSuc? `login_Suc` : `login_fail`)">
            <!--登陆密码-->
            <input type="password" placeholder="登陆密码" v-model="loginPwd" 
            @blur="blurPwd"  :class="noPwdClick? ``: (blurPwdSuc? `login_Suc` : `login_fail`)">
        </div>
        <button class="login_sub" @click="login">登陆</button>
        <div class="login_chb">
            <span>
                <input type="checkbox">一个月内保持登陆
            </span>
            <a href="javascript:;">忘记密码?</a>
        </div>
        <p class="login_logup">没有账号?<a href="javascript:;" @click="tologup">立即注册</a></p>
        
    </div>

</template>
<script>
    export default {
        props:{
            tologup:{type:Function}
        },
        data(){
            return{
                alermMsg:"",
                loginUname:"",
                loginPwd:"",
                noUnameClick:true,
                noPwdClick:true,
                blurUnameSuc:false,
                blurPwdSuc:false,
                
            }
        },
        methods:{
            blurUname(){
                if(!this.loginUname){
                    this.alermMsg="请输入用户名";
                    this.UnameSuc=false;
                    this.blurUnameSuc=false;
                    this.noUnameClick=false;
                    return;
                }
                this.noUnameClick=false;
                this.blurUnameSuc=true;
                this.alermMsg="";
            },
            blurPwd(){
                var pwdReg=/^\w{6,10}$/
                if(!pwdReg.test(this.loginPwd)){
                    this.alermMsg="密码必须是6-10位数字、字母或下划线";
                    this.PwdSuc=false;
                    this.blurPwdSuc=false;
                    this.noPwdClick=false;
                    return;
                }
                this.noPwdClick=false;
                this.blurPwdSuc=true;
                this.alermMsg="";
            },
            login(){
                var url="login"
                var obj={
                    loginUname:this.loginUname,
                    loginPwd:this.loginPwd
                }
                if(this.blurUnameSuc==true && this.blurPwdSuc==true){
                    this.axios.get(url,{params:obj}).then((result)=>
                        {
                            console.log(result);
                            if(result.data.code==1){
                                alert(result.data.msg);
                                sessionStorage.setItem("userName",userName.value);
                                this.$router.push("/");
                                this.$router.go(0)
                            }else{
                                alert(result.data.msg);
                                this.$router.push("/log");
                            }
                        }
                    )
                }
            },
        }
    }
</script>
<style scoped>
@import "../../../public/css/log/login.css";

/*
    .login{
        display:flex;
        flex-direction:column;
        align-items:center;
        width:370px;
        background-color:rgba(255, 255, 255, 0.8);
    }
    .login>button{
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
    .login>button>span{
        padding-left:40px;
        padding-right:40px;
    }
    .login_weixin{
        background-color:#00d775;
    }
    .login_weixin:hover{
        background-color:#00bb75;
    }
    .login_weibo{
        background-color:#ff8785;
    }
    .login_weibo:hover{
        background-color:#ff5452;
    }
    .login_qq{
        background-color:#00b2d6;
    }
    .login_sub{
        background-color:#00b2d6;
    }
    .login_qq:hover,.login_sub:hover{
        background-color:#009dbd;
    }
    .or{
        margin:40px 130px 40px 130px;
        height:1px;
        width:300px;
        background-color:rgba(182, 177, 189, 0.5);
        position: relative;
    }
    .or>span{
        position: absolute;
        top:-9px;
        left:46%;
        font-size:12px;
        color:#898294;
    }
    .login_input>input{
        width:300px;
        height:38px;
        margin:7px 0;
        padding-left:10px;
        cursor:pointer;
        border:1px solid #ddd;
        font-size:14px
    }
    .login_input>input:hover{
        border:1px solid #00b2d6
    }
    .login_chb{
        width:300px;
        display:flex;
        justify-content:space-between;
        font-size:12px;
        align-items:center;
    }
    .login_chb>span{
        display:flex;
        align-items: center
    }
    .login_chb>a{
        color:#00b2d6;
        text-decoration:none
    }
    .login_logup{
        font-size:12px;
        margin-top:30px;
        margin-bottom:30px;
    }
    .login_logup>a{
        color:#00b2d6;
        text-decoration:none
    }
    .login>h2{
        margin-top:40px;
    }
*/
</style>


