<template>
<div class="mail" id="main">
            <div class="tabA mgt10">
                <a class="active">我的关注</a>
            </div>
            <div class="cboth"></div>

        <div class="mgt20">
        <div class="lh26 pr5 pl5">加关注后，如果您关注的产品价格发生了变化，我们将第一时间以邮件的形式通知您。</div>
        <div class="gz_fltt">
            <span class="fl mgl5">按分类查看：</span>
            <a href="favorite.php?type=flight">
                 <b>机票 </b>            </a>
            <a href="favorite.php?type=hotel">
                酒店             </a>
        </div>

        <table cellspacing="0" cellpadding="0" width="100%" border="0" class="orderlist2 pb10">
            <tbody>
                <tr class="gz_list_tt">
                    <td width="30" align="center" class="w30"><input type="checkbox" class="checkall">
                    <input type="hidden" autocomplete="off" name="_token_" value="VFQBAVMEUAFTAR4CBAIBBQVSV1YCUgRWUgdTUFEABghTAx1QVlcBBVEEXQ==">                    </td>
                    <td width="120" class="w120">
                        <span class="fl">全选</span>
                        <span class="fl mgl20 gz_qx C057_blue cursor">取消关注</span>
                    </td>
                    <td width="300" class="w180">商品名称</td>
                    <td align="center" class="w120 lh22">日期</td>
                    <td align="center" class="w70 lh22">关注时价格</td>
                    <td align="center" class="w120">最新价格</td>
                    <td width="120" align="center" class="w120">操作</td>
                </tr>
                                    <tr><td colspan="7">没有关注信息</td></tr>
                            </tbody>
        </table>
    </div>
    </div>
</template>
<script>
import '../../../public/member1.css'

export default {
    data(){
        return {

        }
    },
}
</script>
<style scoped>

  
  
</style>