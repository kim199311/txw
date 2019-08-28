<template>
<div class="w_member">
    <div class="left" id="leftSide" style="height: 600px;">
        <div class="left_lnfo">
            <dl>
            <dd>欢迎回来<p><b>小渔圈圈。。。</b></p><p></p></dd>
            </dl>
        </div>
        <ul class="menu">
            <router-link :to="{path:'/order/order01',query:{abl:true}}"><li :class="status3" @click="change3">机票订单</li></router-link>
            <router-link to="/order/order02"><li :class="status4" @click="change4">来自手机</li></router-link>
            <router-link to="/order/order03"><li :class="status5" @click="change5">我的关注</li></router-link>
            <router-link to="/order/order04"> <li :class="status6" @click="change6">常用信息</li></router-link>
            <router-link to="/order/order05"> <li :class="status7" @click="change7">账号设置</li></router-link>
        </ul>
    </div> 
    <div>
        <router-view></router-view>
    </div>   
    <div class="cboth"></div>  
</div>
</template>
<script>
import '../../../public/member1.css'
export default {
    data(){
        return {
           status3:"on",
           status4:"",
           status5:"",
           status6:"",
           status7:""
        }
    },
    methods:{
        change3(){
            this.status3="on";
            this.status4="";
            this.status5="";
            this.status6="";
            this.status7="";
        },
        change4(){
            this.status3="";
            this.status4="on";
            this.status5="";
            this.status6="";
            this.status7="";
        },
        change5(){
            this.status3="";
            this.status4="";
            this.status5="on";
            this.status6="";
            this.status7="";
        },
        change6(){
            this.status3="";
            this.status4="";
            this.status5="";
            this.status6="on";
            this.status7="";
        },
        change7(){
            this.status3="";
            this.status4="";
            this.status5="";
            this.status6="";
            this.status7="on";
        }
    }
}
</script>
<style scoped>

  
  
</style>