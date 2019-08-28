<template>
    <div class="container">
        <div class="bind_top">
            <div class="bind_left">
                <img src="../../assets/bind_weibo.png">
            </div>
            <div class="bind_right">
                <a href="#" >二维码登录 </a>
                <b>|</b>
                <a href="#"> 注册</a>
            </div>
        </div>
        <div class="bind_middle">
            <div class="wb_info">
                <p class="wb_login">使用你的微博账号访问 <a href="#">天巡网</a>,并同时登录微博</p>
                <p class="wb_login">
                    <label>账号: </label>
                    <input class="wb_input" type="text" placeholder="请用微博账号登录">
                </p>
                <p class="wb_login">
                    <label>密码: </label>
                    <input class="wb_input" type="password" placeholder="请输入密码">
                </p>
            </div>
            <div class="wb_button">
                <button class="one">登录</button>
                <button class="two">取消</button>
            </div>
           
        </div>
        <div class="bind_bottom">
            <p>提示:为保障账号安全，请认准本页URL地址必须以api.weibo.com开头</p>
        </div>
    </div>
</template>
<script>
export default {
    
}
</script>

<style scoped>

</style>
