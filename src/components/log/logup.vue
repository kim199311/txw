<template>
    <div class="logup">
        <h2>注册</h2>
        <h4>注册即可永久保存您的查询信息</h4>
        <button class="logup_weixin">
            <i class="iconfont icon-weixin"></i><span>通过微信注册</span>
        </button>
        <button class="logup_weibo">
            <i class="iconfont icon-weibo"></i><span>通过微博注册</span>
        </button>
        <button class="logup_qq">
            <i class="iconfont icon-qq"></i><span>通过QQ注册</span>
        </button>
        <div class="or">
            <span>或者</span>
        </div>
        <button class="logup_phone" @click="toPhone">
            <i class="iconfont icon-icon--"></i><span>通过手机注册</span>
        </button>
        <button class="logup_email" @click="toEmail">
            <i class="iconfont icon-youxiang"></i><span>通过邮箱注册</span>
        </button>
        <p class="logup_login">已有账号?<a href="javascript:;" @click="tologin">直接登陆</a></p>
    </div>


</template>
<script>
    export default {
        props:{
            toPhone:{type:Function},
            toEmail:{type:Function},
            tologin:{type:Function}
        }
    }
</script>
<style scoped>
@import "../../../public/css/log/logup.css"
/*
    .logup{
        display:flex;
        flex-direction:column;
        align-items:center;
        width:370px;
        background-color:rgba(255, 255, 255, 0.8);
        overflow: hidden;
    }
    .logup>button{
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
    .logup>button>span{
        padding-left:40px;
        padding-right:40px;
    }
    .logup_weixin{
        background-color:#00d775;
    }
    .logup_weixin:hover{
        background-color:#00bb75;
    }
    .logup_weibo{
        background-color:#ff8785;
    }
    .logup_weibo:hover{
        background-color:#ff5452;
    }
    .logup_qq{
        background-color:#00b2d6;
    }
    .logup_qq:hover{
        background-color:#009dbd;
    }
    .logup_phone{
        color: #6f667d !important;
        border: 1px solid #00b2d6 !important;
        background-color: rgba(255, 255, 255, 0.6)
    }
    .logup_phone:hover{
        background-color: rgba(255, 255, 255, 0.9);
        border:1px solid #009dbd !important;
    }
    .logup_email{
        color: #6f667d !important;
        border: 1px solid #00b2d6 !important;
        background-color: rgba(255, 255, 255, 0.6)
    }
    .logup_email:hover{
        background-color: rgba(255, 255, 255, 0.9);
        border:1px solid #009dbd !important;
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
    .logup_login{
        font-size:12px;
        margin-top:30px;
        margin-bottom:30px;
    }
    .logup_login>a{
        color:#00b2d6;
        text-decoration:none
    }
    .logup>h4{
        color:#b6b1bd;
        font-size:12px;
        margin-top:0;
    }
    .logup>h2{
        margin-top:40px;
    }
    */
</style>


