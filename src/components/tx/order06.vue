<template>
<div class="mail" id="main">
    <div class="tabA mgt10">
            <router-link :to="{path:'/order/order01',query:{abl:true}}">直接预订</router-link>
            <a class="active">跳转记录</a>
            <router-link :to="{path:'/order/order01',query:{dis:false}}" class="cursor fr" style="font-size:12px;margin-top:8px; margin-left:656px;color:#00b2d6;">非会员订单查询</router-link>
        </div>
        <div class="cboth"></div>
    <div class="book-information" style="position: relative; height: 146px;">
        <div class="book-info" id="376904" style="position: absolute; left: 0px; top: 0px;" v-show="show==true">
             <a class="close" @click="clear"> ×</a>
             <ul class="head-tit">
                <li><span>青岛 - 首尔</span><i>2019-06-16</i></li>
             </ul>
            <div class="con-box">
                <p>访问过的供应商</p>
                    <a href="http://partners.api.skyscanner.net/apiservices/deeplink/v2?_cje=wY7f%2bteTTa7O0AcV7J5E600Dc0YaTvnGZ4bJlPo39jKZi4QAb9coxVUJjjRHcgTw&amp;url=https%3A%2F%2Fwww.skyscanner.net%2Ftransport_deeplink%2F4.0%2FCN%2Fzh-CN%2FCNY%2Fjja_%2F1%2F16755.12409.2019-06-16%2Fair%2Fairli%2Fflights%3Fitinerary%3Dflight%7C-32179%7C8404%7C16755%7C2019-06-16T21%3A10%7C12409%7C2019-06-16T23%3A40%7C90%7CZV3OCN%7CZ%7CE_SPECIAL%26carriers%3D-32179%26operators%3D-32179%26passengers%3D1%26channel%3Dtianxun%26cabin_class%3Deconomy%26facilitated%3Dfalse%26ticket_price%3D720.00%26is_npt%3Dfalse%26is_multipart%3Dfalse%26client_id%3Dskyscanner_tianxun%26q_ids%3Djja_.16755.12409.190616..1..E.OW%7C8197831839298006945%26q_sources%3DJACQUARD%26commercial_filters%3Dfalse%26q_datetime_utc%3D2019-06-15T03%3A07%3A00%26pqid%3Dfalse%26redirect_delay%3d0%26trackingChannel%3dwebsite" target="_blank"><span>Jeju Air</span><i>查看</i></a>                   
            </div>
        </div>
        <div class="book-info" id="372255" style="position: absolute; left: 327px; top: 0px;" v-show="dele==true">
            <a class="close" @click="del"> ×</a>
            <ul class="head-tit">
                <li><span>台北 - 香港</span><i>2019-06-06</i></li>
                <li><span>香港 - 台北</span><i>2019-06-14</i></li>
            </ul>
            <div class="con-box">
                <p>访问过的供应商</p>
                    <a href="http://partners.api.skyscanner.net/apiservices/deeplink/v2?_cje=wY7f%2bteTTa7O0AcV7J5E600Dc0YaTvnGZ4bJlPo39jKZi4QAb9coxVUJjjRHcgTw&amp;url=https%3A%2F%2Fwww.skyscanner.net%2Ftransport_deeplink%2F4.0%2FCN%2Fzh-CN%2FCNY%2Fi17u%2F2%2F17075.12191.2019-06-06%2C12191.17075.2019-06-14%2Fair%2Ftrava%2Fflights%3Fitinerary%3Dflight%7C-32444%7C921%7C17075%7C2019-06-06T22%3A05%7C12191%7C2019-06-06T23%3A50%7C105%7C-%7C-%7C-%2Cflight%7C-32444%7C928%7C12191%7C2019-06-14T22%3A25%7C17075%7C2019-06-15T00%3A05%7C100%7C-%7C-%7C-%26carriers%3D-32444%26operators%3D-32444%2C-32444%26passengers%3D1%26channel%3Dtianxun%26cabin_class%3Deconomy%26facilitated%3Dfalse%26ticket_price%3D1326.00%26is_npt%3Dfalse%26is_multipart%3Dfalse%26client_id%3Dskyscanner_tianxun%26q_ids%3Di17u.7834.12191.190606.190614.1..E%7C-742281363537825228%26q_sources%3DJACQUARD%26commercial_filters%3Dfalse%26q_datetime_utc%3D2019-06-01T09%3A34%3A00%26pqid%3Dfalse%26redirect_delay%3d0%26trackingChannel%3dwebsite" target="_blank"><span>同程旅游</span><i>查看</i></a>                   
            </div>
        </div>
    </div>    
</div>
</template>
<script>
export default {
    data(){
        return {
            show:true,
            dele:true
        }
    },
    methods:{
        clear(){
            this.show=false;
        },
        del(){
            this.dele=false;
        }
    }
}
</script>
