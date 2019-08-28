<template>
    <div>
        <div class="bg">
            <div class="bg_img">
                <a href="javascript:;">  
                    <img src="img/log/logo-white.png" alt=""> 
                </a>
            </div> 
            <!--登陆界面-->
            <div :class="islogin?`bg_div`:`bg_div1`">
                <login :tologup="tologup" v-show="!islogin2">
                </login>
            </div>
            <!--注册界面-->
            <div :class="islogin?`bg_div2`:(islogin2?`bg_div2`:`bg_div`)">
                <logup 
                    :tologin="tologin"
                    :toPhone="toPhone"
                    :toEmail="toEmail"
                >
                </logup>
            </div>
             <!--注册方式界面-->
            <div :class="islogin2?`bg_div`:`bg_div2`">
                <logPhone 
                    :msg="msg"
                    :loginEmail="loginEmail"
                    :loginPhone="loginPhone"
                    :tologup="tologup"
                    :tologin="tologin">
                </logPhone>
            </div>
        </div>
    </div>
</template>
<script>
import login from "../components/log/login";
import logup from "../components/log/logup";
import logPhone from "../components/log/logPhone";
export default {
    data(){
        return{
            msg:"",
            loginEmail:false,
            loginPhone:false,
            islogin:true,
            islogin2:false
        }
    },
    methods:{
        tologup(){
            this.islogin=false
            this.islogin2=false
        },
        tologin(){
            this.islogin=true
            this.islogin2=false
        },
        toPhone(){
            this.msg="手机"
            this.islogin2=true
            this.loginPhone=true
            this.loginEmail=false
        },
        toEmail(){
            this.msg="邮箱"
            this.islogin2=true
            this.loginEmail=true
            this.loginPhone=false
        }
    },
    components:{login,logup,logPhone}
}
</script>

<style scoped>
@import "../../public/css/log/log.css"
/*
    .bg{
        width:1510px;
        height:1000px;
        background-image:url("../assets/img/timgVI51GE7O.jpg");
        background-size:1510px 1000px;
        background-repeat:repeat;
        position: relative;
    }
    .bg_img{
        position:absolute;
        left:41%;
        top:40px;
    }
    .bg_img>a>img{
        width:80%;
    }
    .bg_div{
        position:absolute;
        left:38%;
        top:150px;
        transition:1s
    }
    .bg_div1{
        position:absolute;
        left:70%;
        opacity:0;
        visibility:hidden;
        top:150px;
    }
    .bg_div2{
        position:absolute;
        left:10%;
        opacity:0;
        visibility:hidden;
        top:150px;
    }
    */
</style>
