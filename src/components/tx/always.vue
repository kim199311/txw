<template>
    <div class="mail" id="main">
            <div class="tabA mgt10">
                <a href="passenger.php">常用乘机人</a>
                <a class="active">常用联系人</a>
            </div>
            <div class="cboth"></div>
            <div class="mgt20 mgb20">
              <form id="contactForm" method="post" name="contactForm" class="form" action="/member/contact.php">
                <input name="act" value="add" type="hidden">

                                <div class="title_personal">
                    <span class="fw fl">常用联系人信息</span>
                    <div class="delete fl mgl10 mgt3" onclick="contactAdd()" id="btnAdd">新 增</div>
                </div>
                <table width="100%" cellspacing="0" cellpadding="0" border="0" class="orderlist mgt20">
                    <tbody>
                        <tr>
                            <th class="w30"><input type="checkbox" onclick="$('input[name*=\'id\']').attr('checked', this.checked)" name="checkbox"></th>
                            <th class="w30">序号</th>
                            <th align="left" width="130"><span class="pl20">姓名</span></th>
                            <th align="left" width="130">手机号</th>
                            <th align="left" width="150">邮箱</th>
                            <th class="w100">操作</th>
                        </tr>
                                                    <tr id="contact-edit-row" style="display:none;" valign="bottom">
                                <td></td>
                                <td>
                                    <input name="linkman_id" type="hidden" id="linkman_id" value="">
                                    <input type="hidden" autocomplete="off" name="_token_" value="VFQBAVcLXQNWAR4FBgYEBAdQUlUCVVIHBgNbUgZSBgEFBh1SVlcHBVIAXQ==">
                                </td>
                                <td align="left" style="vertical-align:top">
                                    <span class="pl20">
                                    <input name="linkman_name" style="height:20px" type="text" id="linkman_name" size="10" value="" datatype="name" tip="请输入中文或英文姓名，英文姓名格式如：Smith/Black(必输入项)" maxlength="128">
                                    </span>

                                </td>
                                <td align="left">
                                    <div class="dropdown" id="area_code_select" style="width:150px;margin-bottom:5px;">
                                        <span class="fl">中国(+86)</span>
                                        <input type="hidden" autocomplete="off" value="86" name="mobile_area_code" id="mobile_area_code">
                                        <i class="icon_down_gray fr icon_down_gray_fight"></i>
                                        <div class="dropdownlist" style="display: none;">
                                             <input value="" placeholder="国家/地区 中英文/区号" autocomplete="off" type="text">
                                             <ul class="dropdownlistA">
                                            <li data-val="93" searchkey="Afghanistan">阿富汗(+93)</li><li data-val="355" searchkey="Albania">阿尔巴尼亚(+355)</li><li data-val="213" searchkey="Algeria">阿尔及利亚(+213)</li><li data-val="376" searchkey="Andorra">安道尔(+376)</li><li data-val="244" searchkey="Angola">安哥拉(+244)</li><li data-val="1264" searchkey="Anguilla">安圭拉(+1264)</li><li data-val="1268" searchkey="Antigua and Barbuda">安提瓜和巴布达(+1268)</li><li data-val="54" searchkey="Argentina">阿根廷(+54)</li><li data-val="374" searchkey="Armenia">亚美尼亚(+374)</li><li data-val="61" searchkey="Australia">澳大利亚(+61)</li><li data-val="43" searchkey="Austria">奥地利(+43)</li><li data-val="994" searchkey="Azerbaijan">阿塞拜疆(+994)</li><li data-val="1242" searchkey="Bahamas">巴哈马(+1242)</li><li data-val="973" searchkey="Bahrain">巴林(+973)</li><li data-val="880" searchkey="Bangladesh">孟加拉国(+880)</li><li data-val="1246" searchkey="Barbados">巴巴多斯(+1246)</li><li data-val="375" searchkey="Belarus">白俄罗斯(+375)</li><li data-val="32" searchkey="Belgium">比利时(+32)</li><li data-val="501" searchkey="Belize">伯利兹(+501)</li><li data-val="229" searchkey="Benin">贝宁(+229)</li><li data-val="1441" searchkey="Bermuda">百慕大(+1441)</li><li data-val="591" searchkey="Bolivia">玻利维亚(+591)</li><li data-val="267" searchkey="Botswana">博茨瓦纳(+267)</li><li data-val="55" searchkey="Brazil">巴西(+55)</li><li data-val="673" searchkey="Brunei">文莱(+673)</li><li data-val="359" searchkey="Bulgaria">保加利亚(+359)</li><li data-val="226" searchkey="Burkina Faso">布基纳法索(+226)</li><li data-val="257" searchkey="Burundi">布隆迪(+257)</li><li data-val="855" searchkey="Cambodia">柬埔寨(+855)</li><li data-val="237" searchkey="Cameroon">喀麦隆(+237)</li><li data-val="1" searchkey="Canada">加拿大(+1)</li><li data-val="236" searchkey="Central African Republic">中非共和国(+236)</li><li data-val="235" searchkey="Chad">乍得(+235)</li><li data-val="56" searchkey="Chile">智利(+56)</li><li data-val="86" searchkey="China">中国(+86)</li><li data-val="57" searchkey="Colombia">哥伦比亚(+57)</li><li data-val="242" searchkey="Congo">刚果(+242)</li><li data-val="682" searchkey="Cook Islands">库克群岛(+682)</li><li data-val="506" searchkey="Costa Rica">哥斯达黎加(+506)</li><li data-val="53" searchkey="Cuba">古巴(+53)</li><li data-val="357" searchkey="Cyprus">塞浦路斯(+357)</li><li data-val="420" searchkey="Czech Republic">捷克(+420)</li><li data-val="45" searchkey="Denmark">丹麦(+45)</li><li data-val="253" searchkey="Djibouti">吉布提(+253)</li><li data-val="1890" searchkey="Dominican Republic">多米尼加共和国(+1890)</li><li data-val="593" searchkey="Ecuador">厄瓜多尔(+593)</li><li data-val="20" searchkey="Egypt">埃及(+20)</li><li data-val="503" searchkey="El Salvador">萨尔瓦多(+503)</li><li data-val="372" searchkey="Estonia">爱沙尼亚(+372)</li><li data-val="251" searchkey="Ethiopia">埃塞俄比亚(+251)</li><li data-val="679" searchkey="Fiji">斐济(+679)</li><li data-val="358" searchkey="Finland">芬兰(+358)</li><li data-val="33" searchkey="France">法国(+33)</li><li data-val="594" searchkey="French Guiana">法属圭亚那(+594)</li><li data-val="689" searchkey="French Polynesia">法属波利尼西亚(+689)</li><li data-val="241" searchkey="Gabon">加蓬(+241)</li><li data-val="220" searchkey="Gambia">冈比亚(+220)</li><li data-val="995" searchkey="Georgia">格鲁吉亚(+995)</li><li data-val="49" searchkey="Germany">德国(+49)</li><li data-val="233" searchkey="Ghana">加纳(+233)</li><li data-val="350" searchkey="Gibraltar">直布罗陀(+350)</li><li data-val="30" searchkey="Greece">希腊(+30)</li><li data-val="1809" searchkey="Grenada">格林纳达(+1809)</li><li data-val="1671" searchkey="Guam">关岛(+1671)</li><li data-val="502" searchkey="Guatemala">危地马拉(+502)</li><li data-val="224" searchkey="Guinea">几内亚(+224)</li><li data-val="592" searchkey="Guyana">圭亚那(+592)</li><li data-val="509" searchkey="Haiti">海地(+509)</li><li data-val="504" searchkey="Honduras">洪都拉斯(+504)</li><li data-val="852" searchkey="Hong Kong">香港(+852)</li><li data-val="36" searchkey="Hungary">匈牙利(+36)</li><li data-val="354" searchkey="Iceland">冰岛(+354)</li><li data-val="91" searchkey="India">印度(+91)</li><li data-val="62" searchkey="Indonesia">印度尼西亚(+62)</li><li data-val="98" searchkey="Iran">伊朗(+98)</li><li data-val="964" searchkey="Iraq">伊拉克(+964)</li><li data-val="353" searchkey="Ireland">爱尔兰(+353)</li><li data-val="972" searchkey="Israel">以色列(+972)</li><li data-val="39" searchkey="Italy">意大利(+39)</li><li data-val="1876" searchkey="Jamaica">牙买加(+1876)</li><li data-val="81" searchkey="Japan">日本(+81)</li><li data-val="962" searchkey="Jordan">约旦(+962)</li><li data-val="327" searchkey="Kazakhstan">哈萨克斯坦(+327)</li><li data-val="254" searchkey="Kenya">肯尼亚(+254)</li><li data-val="965" searchkey="Kuwait">科威特(+965)</li><li data-val="331" searchkey="Kyrgyzstan">吉尔吉斯斯坦(+331)</li><li data-val="856" searchkey="Laos">老挝(+856)</li><li data-val="371" searchkey="Latvia">拉脱维亚(+371)</li><li data-val="961" searchkey="Lebanon">黎巴嫩(+961)</li><li data-val="266" searchkey="Lesotho">莱索托(+266)</li><li data-val="231" searchkey="Liberia">利比里亚(+231)</li><li data-val="218" searchkey="Libya">利比亚(+218)</li><li data-val="423" searchkey="Liechtenstein">列支敦士登(+423)</li><li data-val="370" searchkey="Lithuania">立陶宛(+370)</li><li data-val="352" searchkey="Luxembourg">卢森堡(+352)</li><li data-val="853" searchkey="Macau">澳门(+853)</li><li data-val="261" searchkey="Madagascar">马达加斯加(+261)</li><li data-val="265" searchkey="Malawi">马拉维(+265)</li><li data-val="60" searchkey="Malaysia">马来西亚(+60)</li><li data-val="960" searchkey="Maldives">马尔代夫(+960)</li><li data-val="223" searchkey="Mali">马里(+223)</li><li data-val="356" searchkey="Malta">马耳他(+356)</li><li data-val="230" searchkey="Mauritius">毛里求斯(+230)</li><li data-val="52" searchkey="Mexico">墨西哥(+52)</li><li data-val="373" searchkey="Moldova">摩尔多瓦(+373)</li><li data-val="377" searchkey="Monaco">摩纳哥(+377)</li><li data-val="976" searchkey="Mongolia">蒙古(+976)</li><li data-val="1664" searchkey="Montserrat">蒙特塞拉特(+1664)</li><li data-val="212" searchkey="Morocco">摩洛哥(+212)</li><li data-val="258" searchkey="Mozambique">莫桑比克(+258)</li><li data-val="95" searchkey="Myanmar">缅甸(+95)</li><li data-val="264" searchkey="Namibia">纳米比亚(+264)</li><li data-val="674" searchkey="Nauru">瑙鲁(+674)</li><li data-val="977" searchkey="Nepal">尼泊尔(+977)</li><li data-val="31" searchkey="Netherlands">荷兰(+31)</li><li data-val="64" searchkey="New Zealand">新西兰(+64)</li><li data-val="505" searchkey="Nicaragua">尼加拉瓜(+505)</li><li data-val="227" searchkey="Niger">尼日尔(+227)</li><li data-val="234" searchkey="Nigeria">尼日利亚(+234)</li><li data-val="850" searchkey="North Korea">朝鲜(+850)</li><li data-val="47" searchkey="Norway">挪威(+47)</li><li data-val="968" searchkey="Oman">阿曼(+968)</li><li data-val="92" searchkey="Pakistan">巴基斯坦(+92)</li><li data-val="507" searchkey="Panama">巴拿马(+507)</li><li data-val="675" searchkey="Papua New Guinea">巴布亚新几内亚(+675)</li><li data-val="595" searchkey="Paraguay">巴拉圭(+595)</li><li data-val="51" searchkey="Peru">秘鲁(+51)</li><li data-val="63" searchkey="Philippines">菲律宾(+63)</li><li data-val="48" searchkey="Poland">波兰(+48)</li><li data-val="351" searchkey="Portugal">葡萄牙(+351)</li><li data-val="1787" searchkey="Puerto Rico">波多黎各(+1787)</li><li data-val="974" searchkey="Qatar">卡塔尔(+974)</li><li data-val="40" searchkey="Romania">罗马尼亚(+40)</li><li data-val="7" searchkey="Russia">俄罗斯(+7)</li><li data-val="1758" searchkey="Saint Lucia">圣卢西亚(+1758)</li><li data-val="1784" searchkey="Saint Vincent and the Grenadines">圣文森特和格林纳丁斯(+1784)</li><li data-val="378" searchkey="San Marino">圣马力诺(+378)</li><li data-val="239" searchkey="Sao Tome and Principe">圣多美和普林西比(+239)</li><li data-val="966" searchkey="Saudi Arabia">沙特阿拉伯(+966)</li><li data-val="221" searchkey="Senegal">塞内加尔(+221)</li><li data-val="248" searchkey="Seychelles">塞舌尔(+248)</li><li data-val="232" searchkey="Sierra Leone">塞拉利昂(+232)</li><li data-val="65" searchkey="Singapore">新加坡(+65)</li><li data-val="421" searchkey="Slovakia">斯洛伐克(+421)</li><li data-val="386" searchkey="Slovenia">斯洛文尼亚(+386)</li><li data-val="677" searchkey="Solomon Islands">所罗门群岛(+677)</li><li data-val="252" searchkey="Somalia">索马里(+252)</li><li data-val="27" searchkey="South Africa">南非(+27)</li><li data-val="82" searchkey="South Korea">韩国(+82)</li><li data-val="34" searchkey="Spain">西班牙(+34)</li><li data-val="94" searchkey="Sri Lanka">斯里兰卡(+94)</li><li data-val="249" searchkey="Sudan">苏丹(+249)</li><li data-val="597" searchkey="Suriname">苏里南(+597)</li><li data-val="268" searchkey="Swaziland">斯威士兰(+268)</li><li data-val="46" searchkey="Sweden">瑞典(+46)</li><li data-val="41" searchkey="Switzerland">瑞士(+41)</li><li data-val="963" searchkey="Syria">叙利亚(+963)</li><li data-val="886" searchkey="Taiwan">台湾(+886)</li><li data-val="992" searchkey="Tajikistan">塔吉克斯坦(+992)</li><li data-val="255" searchkey="Tanzania">坦桑尼亚(+255)</li><li data-val="66" searchkey="Thailand">泰国(+66)</li><li data-val="228" searchkey="Togo">多哥(+228)</li><li data-val="676" searchkey="Tonga">汤加(+676)</li><li data-val="1809" searchkey="Trinidad and Tobago">特立尼达和多巴哥(+1809)</li><li data-val="216" searchkey="Tunisia">突尼斯(+216)</li><li data-val="90" searchkey="Turkey">土耳其(+90)</li><li data-val="993" searchkey="Turkmenistan">土库曼斯坦(+993)</li><li data-val="256" searchkey="Uganda">乌干达(+256)</li><li data-val="380" searchkey="Ukraine">乌克兰(+380)</li><li data-val="971" searchkey="United Arab Emirates">阿拉伯联合酋长国(+971)</li><li data-val="1" searchkey="United States">美国(+1)</li><li data-val="598" searchkey="Uruguay">乌拉圭(+598)</li><li data-val="233" searchkey="Uzbekistan">乌兹别克斯坦(+233)</li><li data-val="58" searchkey="Venezuela">委內瑞拉(+58)</li><li data-val="84" searchkey="Vietnam">越南(+84)</li><li data-val="967" searchkey="Yemen">也门(+967)</li><li data-val="260" searchkey="Zambia">赞比亚(+260)</li><li data-val="263" searchkey="Zimbabwe">津巴布韦(+263)</li></ul>
                                        </div>
                                    </div>
                                    <input name="linkman_mobile" style="height:20px;width:160px;" type="text" id="linkman_mobile" value="" datatype="m" tip="请输入手机号(必输入项)" maxlength="20">
                                </td>
                                <td align="left" style="vertical-align:top">
                                    <input name="linkman_email" style="height:20px" type="text" id="linkman_email" value="" datatype="e" ignore="ignore" tip="邮箱地址格式如：xxx@163.com" maxlength="30">
                                </td>
                                <td align="center" class="line">
                                    <a onclick="submitForm('contactForm')" id="btnSave">保存</a>
                                    <a class="mgl10" onclick="contactCancel()" id="btnCancel">取消</a>
                                </td>
                            </tr>
                    </tbody>
                </table>
                              </form>
            </div>
        </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>

</style>
