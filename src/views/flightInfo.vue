<template>
<div class="search">
    <div class="all_search">
        <i style="font-weight:800;margin-right:5px">中国</i><span>(CN)到</span><i style="font-weight:800;margin-left:5px">曼谷</i><span
            style="margin-left:3px">(BKKT) 全年</span>
        <button>重新搜索</button>
    </div>

    <!-- 选择出发地  start -->
    <div class="search_main">
        <div class="search_header">
            <div class="top_left">
                <h3>选择出发地</h3>
                <div>
                    <input type="checkbox" id="f1" name="price">
                    <label for="f1">直飞￥421</label>
                </div>
                <div>
                    <input type="checkbox" id="f2" name="price">
                    <label for="f2">中转￥786</label>
                </div>

            </div>
            <div class="top_right">
                <p>经济舱最低价</p>
                <span>票价变动频繁，请以实时报价为准</span>
            </div>
        </div>

        <!-- 具体城市  start -->
        <div class="search_city">
            <div class="search_title">
                <p>出发地</p>
                <p>转机城市</p>
                <p>目的地</p>
                
                <p>起飞航空公司</p>
                <p>目的地航空公司</p>
                <p>直飞(含税)↑</p>
                <p>往返(含税)↑</p>
                <p>起飞时间</p>
                <p>到达时间</p>
                <p>价格</p>
            </div>

            <div class="city_detail" v-for="(p,i) of txplacelist" :key="i"  >
                <span>{{p.saddresscity}}</span>
                <span>{{p.caddresscity}}</span> 
                <span>{{p.eaddresscity}}</span>

                <span>{{p.splanecompany}}</span>
                <span>{{p.eplanecompany}}</span>
                <span>￥{{p.directflyprice}}</span>
                <span>￥{{p.roundflyprice}}</span>
                <span>{{momnet(new Date(p.stime)).format("YYYY-MM-DD hh:mm")}}</span>
                <span>{{momnet(new Date(p.etime)).format("YYYY-MM-DD hh:mm")}}</span>    
                <button >
                    <a class="target" href="https://www.ly.com/iflight/flight-book2.re.aspx?refid=6983976&adult=1&child=0&unitKey=AMADEUS_627_HKGH33296_RT_SHA_TYO_201910162115_ADT1_CHD0_MU5603_20191016%2FNH0926_20191017%7CNH0925_20191020%2FMU5602_20191021_K_K_K_K_BAM-19_BAM-19_BAM-19_BAM-19_0_ATPCO&traceId=LM20190620172516TJ2TAPYYT0KZK9GTDV1SO10TW062R7WEJTL032L3P6IOBE50&resourceId=OS&pricingSerialNo=LM_THL_GLMTCTH&og=c463c089ab7f47c7a880dcc2707bd8c62019-06-20%2017%3A25%3A34%5ERT_SHA%2FTYO%2F20191016%3BTYO%2FSHA%2F20191020_ADT-1%7CCHD-0%7CINF-0_Y%7CS%7CF%7CC__545413741_V1%5EMU5603_20191016%2FNH0926_20191017%7CNH0925_20191020%2FMU5602_20191021&skyscanner_redirectid=OV5MqpM-EemzqAJCrBEACg" target="_blank">
                    ￥{{p.roundflyprice}}</a>
              </button>


            </div>
        </div>
        <!-- 具体城市  end -->
        <!-- 选择出发地  end -->
    </div>
</div>
</template>
<script>
import momnet from "moment";
export default {
    created(){
        this.axios.get("/txplace",{}).then((result)=>
        {
            console.log(result.data.data);

            this.txplacelist=result.data.data;

            console.log(this.txplacelist[0].caddresscity);
        })
    },
    data(){
        return {
            price:0,
            txplacelist:[],
            momnet
        }
    },
    methods:{

    }
}
</script>
<style>

/*flight-info*/
.search{
    background-color: #FFFFFF;
    width:800px;
    margin: 0 auto;
    text-align: center;

}
.all_search {
    background: #ffffff;
    color: #333;
    padding: 20px 0;
  
}
.all_search>span{
    font-size: 10px;
    color:#333;
}
.all_search>button{
    display: inline-block;
    background-color: #00C96E;
    color: #fff;
    height: 30px;
    width: 100px;
    border: 0;
    cursor: pointer;
    border-radius: 30%/100%;
    font-size: 14px;
    margin-left: 20px;
}
.search_main{
    border:1px solid #ccc;
}
.search_header{
    display: flex;
    justify-content: space-between;
    padding: 0 10px;
    border-bottom:1px solid #ccc;
}
.search_header>.top_left>h3,.search_header>.top_left>div{
    float: left;
}
.search_header>.top_left>h3{
    margin-right: 10px;
}
.search_header>.top_left>div{
    margin-top:25px;
    margin-right:5px;
    font-size: 12px;
    color: #474747;
}
.search_header>.top_right{
    font-size: 12px;
    color: #474747;
    text-align: right;
}
.search_header>.top_right>p{
    font-weight:bolder;
}
.search_city>.search_title{
    display: flex;
    justify-content: space-around;
    /* padding:0 5px; */
    border-bottom:1px solid #ccc;
    height:30px;
}
.city_detail>span{
    font-size: 12px;
   margin-top:12px;
}
.search_city>.city_detail{
    display: flex;
    justify-content: space-between;
    padding:0 10px;
    height: 45px;
}
.search_city>.city_detail>button{
    width: 120px;
    height: 40px;
    display: inline-block;
    background: #20c5d4;
    color: #fff;
    text-align: center;
    line-height:20px;
    border: 0;
    font-size: 16px;
    font-family: "Microsoft YaHei","黑体","simsun";
    border-radius: 25%/100%;
    box-shadow: 0px 1px 1px #e5e5e5;
    background-color: #00BD68;
}
i{
    font-size: 20px;
}

.target{
    color: #fff;
}

</style>


