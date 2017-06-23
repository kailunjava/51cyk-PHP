<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- 引用头部css和js-->
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <script type="text/javascript" src="js/header.js"></script> 
    
    <link rel="stylesheet" type="text/css" href="css/map.css">

    <script type="text/javascript" src="js/map.js"></script>
    <script type="text/javascript" src="js/raphael.js"></script>
    <script type="text/javascript" src="js/chinamapPath.js"></script>
</head>
<body>
<?php include "header2.php";?>
<hr>
    <div class="return">&nbsp;<&nbsp;<a href="culture.php">返回</a></div>
<div class="main">
<?php include "php/select_map.php";
?>
   <div class="demo">
   		<div id="map"></div> 		
   </div>

   <div class="map_text" id="text01" style="display:none;">
    <div class="text" id="text"></div>
    <div class="text_1" id="text_1" >属于：</div>
    <div class="text_2" id="text_2" ></div>
    <div class="text_3" id="text_3" >饮食习惯：</div>
    <div class="text_4" id="text_4" ></div>
    <div class="text_5" id="text_5" >主食：</div>
    <div class="text_6" id="text_6" ></div>
   	<div class="png"></div>
    </div> 
<!--  
川菜：四川
鲁菜：山东
粤菜：广东
苏菜：江苏
浙菜：浙江
闽菜：福建
湘菜：湖南
徽菜：安徽
东北菜：东北三省
豫菜：河南-->
     <div class="regionList">
       <div class="taste">味道偏咸排行榜：</div>
       <?php
                  for($i=0;$i<$num_rows;$i++){    ?>       
                     <div   class='item'>
                        <div class="bars clearfix" style="margin:0 0 10px">
                            <div class="col-sm-9" style="float: left;width:250px">
                                <div class="progress" data-percent="<?php
                                echo $arr_maps[$i][2]; ?>%" >
                                    <div class="progress-bar" style="width:<?php
                                echo $arr_maps[$i][2]; ?>%;background-color:#51A8FF"></div>
                                </div>
                            </div>
                            <div class="province_name" style="float: left;width:80px;margin:0 0 0 15px" >
                            <?php
                                echo $arr_maps[$i][1];   
                            ?>                            
                            </div>
                        </div>
                    </div>
             <?php     }
               ?>
           </div>
         <!--              -->
          <div class="regionList1">
       <div class="taste">味道偏辣排行榜：</div>
                <?php
                  for($i=0;$i<$num_rows;$i++){    ?>       
                     <div   class='item'>
                        <div class="bars clearfix" style="margin:0 0 10px">
                            <div class="col-sm-9" style="float: left;width:250px">
                                <div class="progress" data-percent="<?php
                                echo $arr_maps[$i][3]; ?>%" >
                                    <div class="progress-bar" style="width:<?php
                                echo $arr_maps[$i][3]; ?>%;background-color:#51A8FF"></div>
                                </div>
                            </div>
                            <div class="province_name" style="float: left;width:80px;margin:0 0 0 15px">
                            <?php
                                 echo $arr_maps[$i][1];   
                            ?>                            
                            </div>
                        </div>
                    </div>
             <?php     }
               ?>
         </div>

         <!---->
      <div class="regionList2">
       <div class="taste">面食为主排行榜：</div>
                 <?php
                  for($i=0;$i<$num_rows;$i++){    ?>       
                     <div   class='item'>
                        <div class="bars clearfix" style="margin:0 0 10px">
                            <div class="col-sm-9" style="float: left;width:250px">
                                <div class="progress" data-percent="<?php
                                echo $arr_maps[$i][4]; ?>%" >
                                    <div class="progress-bar" style="width:<?php
                                echo $arr_maps[$i][4]; ?>%;background-color:#51A8FF"></div>
                                </div>
                            </div>
                            <div class="province_name" style="float: left;width:80px;margin:0 0 0 15px">
                            <?php
                                 echo $arr_maps[$i][1];    
                            ?>                            
                            </div>
                        </div>
                    </div>
             <?php     }
               ?>
                     
         </div>

         <div class="map_under_main">
         <div class="map_under_two">
         <div id="map_button_1" class="map_button_1" onmousemove="change_bgcolor(1)" onmouseout="change_bgcolor_one(1)" onclick="xian()">吃饭偏咸注意事项&nbsp;&nbsp;&nbsp;>>></div>
           <div id="map_text_1" class="map_text_1" style="display:none;">
           <div class="map_border_1"></div>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1：高血压、心血管疾病和中风<br>
　　目前很多研究证实，食盐的摄入量与血压高低有联系。最早的动物实验中人们发现高食盐摄入量会升高血压。后来，在很多人群流行病学调查中也发现，如果膳食中食盐摄入增加，会升高血压；但减少食盐摄入后血压就会有降低的趋势。食盐的主要成分是氯化钠。钠离子摄入过多会引起肾上腺和脑组织释放一种因子，这种因子会使细胞兴奋性增加，变得更容易“激动”，结果则表现为动脉收缩，血压升高。<br>
　　血压升高是导致心血管疾病的主要原因，大约62%的中风和49%的冠状动脉心脏病的主要病因是高血压。当每天的食盐摄入增加6克，因得冠心病死亡的人数增加了56%，得心脏病死亡的患者增加36%。长期的高盐膳食会增加患高血压的风险，进而还会使得人们更容易患中风和冠状动脉心脏病等心血管疾病。<br>
　　2：肝肾脏疾病<br>
　　肾脏是人体的一大重要代谢器官，人体的代谢废物很多是通过肾脏，最终以尿液排出体外。尿液中的蛋白质含量增加是肾脏损伤、肾脏疾病的一个危险信号。高食盐摄入量也会升高尿液中的蛋白质含量，而这恰恰是肾脏功能发生问题的危险信号。<br>
　　3：骨质疏松和肾结石<br>
　　食盐含有钠离子，钠和钙在人体中代谢是有联系的，它们由同一种分子调节。钠离子从人体排出时，还会携带一部分的钙离子，因此，钙的排出量也会增加。如果平时膳食食盐摄入过多，排钠增加的同时也会增加钙的排出，尿钙水平升高，可能导致骨骼变薄和骨质疏松症，也增加骨折的风险。另外，尿液中的钙离子增多，还会增加肾结石的风险。<br>
　　4：胃癌<br>
　　膳食食盐摄入过多同样伴随着较高的胃癌发生率。伦敦大学调查发现，2010年，英国大约有7000多名胃癌患者，其中大约有1/4(1694名患者与食盐摄入过多有相关性。长期吃过多食盐的确可能增加患胃癌的风险。<br>
　　5：肥胖<br>
　　如果每天食盐摄入为10克，当你减少一半(到5克)，喝水的量大约会减少350毫升。因此，盐的摄入量会影响你要喝多少水，一般来说，盐吃的多，喝水就会喝得更多。<br>
　　食盐摄入量与甜饮料的摄入量有非常显著的正相关，吃盐越多，甜饮料喝得就越多。喝甜饮料多就会增加糖的摄入量，在体力活动没有增加的前提下，就会导致肥胖，进而增加患心血管疾病、糖尿病等风险。<br>
　　结论：吃盐不能豪放派<br>
    　　多吃盐对健康无益，还是少吃为好。食盐会增加各种慢性病的风险，进而也会增加死亡率。前面提到，美国人均食盐摄入量超过10克。针对这一现状，有研究分析了美国膳食盐的摄入与健康的关系认为，如果将美国人均盐摄入量减少到每天3克，将减少60,000–120,000名冠状动脉心脏疾病患者，减少32,000–66,000名中风患者的出现，同时可以减少44000-92000名患者死亡，降低死亡率。<br></div>
         </div>
         <div class="map_under_three">
             <div id="map_button_2" class="map_button_2" onmousemove="change_bgcolor(2)" onmouseout="change_bgcolor_one(2)" onclick="la()">吃饭偏辣注意事项&nbsp;&nbsp;&nbsp;>>></div>
             <div id="map_text_2" class="map_text_2" style="display:none;">
             <div class="map_border_2"></div>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1：痔疮患者。痔疮患者如果大量食用辣椒等刺激性食物，会刺激胃肠道，使痔疮疼痛加剧，甚至导致出血等症状，痔疮患者应多饮水，多吃水果，少吃或不食辣椒。<br>

　　2：有眼病者。红眼病、角膜炎等眼病患者吃辣椒会加重眼病。在治疗过程中，大量食用辣椒、生姜、大蒜、胡椒、芥末等辛辣食品，也会影响疗效。<br>

　　3：慢性胆囊炎患者。患有慢性胆囊炎者应忌食辣椒、白酒、芥末等辛辣食物，因为这些食物均有刺激胃酸分泌的作用，易造成胆囊收缩、诱发胆绞痛。<br>

　　4：肠胃功能不佳者。吃辣椒虽能增进食欲，但肠胃功能不佳者食用辣椒，会使胃肠黏膜产生炎症，应忌食辣椒。<br>

　　5：热症者。有发热、便秘、鼻血、口干舌燥、咽喉肿痛等热症者，吃辣会加重症状。<br>

　　6：产妇。产妇在产后一周内，吃辣椒不但使自己“上火”，出现大便秘结等症状，而且还会影响婴儿，使婴儿内热加重。<br>

　　7：口腔溃疡者。患者口腔对咸、辣、酸、苦等味道敏感，吃辣椒会加重疼痛。<br>

　　以上这些患者尤应注意不食辣。其实，正常人吃辣也应有度，应根据自己的进食能力量力而行，否则吃的时候过瘾了，身体健康却受到不良影响。
   </div></div>
         <div class="map_under">
         <div id="map_button_3" class="map_button_3" onmousemove="change_bgcolor(3)" onmouseout="change_bgcolor_one(3)" onclick="jinji()">饮食搭配注意30个禁忌&nbsp;&nbsp;&nbsp;>>></div>
         <div id="map_text_3" style="display:none;">
           <div class="map_border_3"></div>
         <div class="map_under_1" >
1、胡萝卜与白萝卜。同食会对维生素C的吸收造成影响。<br>
2、芹菜与鸡肉。同食会导致营养价值降低。<br>
3、鲤鱼与狗肉。同食会导致产生不利于人体的物质。<br>
4、甲鱼与芹菜。同食会导致蛋白质变性，进而影响营养吸收。<br>
5、蟹与茶叶。同食易造成肠蠕动变慢，发生便秘。<br>
6、鳝鱼与狗血、狗肉。同食会有助热动风，不利于身体健康。<br>
7、竹笋与羊肉。同食易造成腹痛。
         </div>
         <div class="map_under_2" >
8、白菜与兔肉。同时食用，会导致优质蛋白遭破坏。<br>
9、牛奶与西兰花。同食会对钙的吸收造成影响。<br>
10、香菜与黄瓜。同食容易导致维生素C遭破坏。<br>
11、醋与南瓜。同食时，醋酸会破坏南瓜中营养成份。<br>
12、虾与猪肉。同食会导致损害精子。<br>
13、蜂蜜与蟹肉。同时食用会导致营养价值降低。<br>
14、土豆与雀肉。同食会导致面部产生色素沉着。
         </div>
         <div class="map_under_3" >
15、西红柿与土豆。同食会导致人体出现腹痛、腹泻的症状。<br>
16、蜂蜜与洋葱。同食会导致出现腹胀、腹泻的情况。<br>
17、虾与大枣。同食会转化为砒霜（价砷），有大毒，对人体造成危害。<br>
18、带鱼与牛肉、羊肉及其油脂。同食容易造成胆固醇增高。<br>
19、鲫鱼与冬瓜。同食会导致营养价值降低。<br>
20、西红柿与黄瓜。同时食用会导致维生素C遭破坏。
21、带鱼与牛奶。同食会破坏镁的吸收。<br>
22、鲶鱼不宜与牛肝同食，还不可以用牛、羊油煎炸，不可与荆芥同用。
         </div>
         <div class="map_under_4" >
23、蟹还与牡蛎。同食容易导致胆固醇升高。<br>
24、田螺与冰。同时食用会对肠胃造成刺激，导致腹泻。<br>
25、虾不要与狗、鸡肉同食。<br>
26、鳝鱼与荆芥。同食易令人吐血。<br>
27、金针菇与驴肉。同时食用易诱发心绞痛。<br>
28、田螺与猪肉。同食会对胃肠功能造成伤害。<br>
29、南瓜与油菜。同时食用会使营养价值降低。<br>
30、鲤鱼不能与小豆藿同时食用，不可以与赤小豆同时食用，还不可以与咸菜同时食用，也不要与麦冬、紫苏、龙骨、朱砂等中药同时食用。
         </div>
     </div>
         </div>
         <div id="map_button_4" class="map_button_4" onmousemove="change_bg()" onmouseout="change_bg_one()" onclick="guanbi()">关闭右侧显示内容&nbsp;&nbsp;&nbsp;>>></div>
       
</div>
    </div>
 <?php include "footer.php";?>  
</body>
</html>