<template>
<div class="mail" id="main">
    <div class="tabA mgt10">
        <a class="active">常用乘机人</a>
    </div>
    <div class="cboth"></div>
    <div class="mgt20 mgb20">
         <input name="act" value="add" type="hidden">
        <div class="title_personal">
            <span class="fw fl">常用乘机人信息</span>
            <button class="delete fl mgt3 mgl10" @click="add">新 增</button>
        </div>
    <div class="info" style="border-bottom:1px dotted #333;margin-top:15px;">
        <div>
        <input type="checkbox">
        <span>序号</span>
        </div>  
        <span>姓名</span>
        <span>证件类型</span>
        <span>证件号码</span>
        <span>性别</span>
        <span>操作</span>
    </div>
    <div class="fill"  style="border-bottom:1px dotted #333;margin-top:15px;" v-show="sta">
        <div>
           <input type="text" style="width:30px;margin-left:175px;border:1px solid black;">
        <select style="border-color:#333;width:50px;margin-left:15px;" >
            <option style="width:80px;">护照</option>
            <option>身份证</option>
            <option>回乡证</option>
            <option>台胞证</option>
            <option>港澳通行证</option>
            <option>赴台证</option>
            <option>其他</option>
        </select>
        <input type="text" style="width:75px;border:1px solid black;"> 
        <select>
            <option>男</option>
            <option>女</option>
        </select>
        <div>
            <span style="margin-right:5px;color:#00B2D6;">保存</span>
            <span style="color:#00B2D6;">取消</span>
        </div> 
        </div>
        
    </div>
    </div>
    <div data-v-bb606852="" onclick="passengerDelete()" id="btnDelete" class="delete mgt10 mgl10">删 除</div>
 </div>
</template>
<script>
import '../../../public/member1.css'

export default {
    data(){
        return {
            sta:false
        }
    },
    methods:{
        add(){
           this.sta=!this.sta
        }
    }
}
</script>
<style scoped>

  
  
</style>