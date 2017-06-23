window.onload = function () {
    var R = Raphael("map", 600, 500);
	//调用绘制地图方法
    paintMap(R);
	
	var textAttr = {
        "fill": "#000",
        /*"font-size": "10px",*/
        "font-family": "'Arial','Microsoft YaHei','黑体','宋体',sans-serif",
        "cursor": "pointer"
    };
			

           
    for (var state in china) {
		china[state]['path'].color = Raphael.getColor(0.9);
				
        (function (st, state) {
			
			//获取当前图形的中心坐标
            var xx = st.getBBox().x + (st.getBBox().width / 2);
            var yy = st.getBBox().y + (st.getBBox().height / 2);

            //***修改部分地图文字偏移坐标
            switch (china[state]['name']) {
                case "江苏":
                    xx += 5;
                    yy -= 10;
                    break;
                case "河北":
                    xx -= 10;
                    yy += 20;
                    break;
                case "天津":
                    xx += 10;
                    yy += 10;
                    break;
                case "上海":
                    xx += 14;
                    break;
                case "广东":
                    yy -= 10;
                    break;
                case "澳门":
                    yy += 10;
                    break;
                case "香港":
                    xx += 20;
                    yy += 5;
                    break;
                case "甘肃":
                    xx -= 40;
                    yy -= 30;
                    break;
                case "陕西":
                    xx += 5;
                    yy += 10;
                    break;
                case "内蒙古":
                    xx -= 15;
                    yy += 65;
                    break;
                case "江西":
                    xx -= 8;
                    
                    break;
                default:
            }
			//写入文字
			china[state]['text'] = R.text(xx, yy, china[state]['name']).attr(textAttr);
			 var text01 = document.getElementById("text01");
             var text = document.getElementById("text");
             var text_2 = document.getElementById("text_2");
             var text_4 = document.getElementById("text_4");
             var text_6 = document.getElementById("text_6");
			st[0].onmouseover = function () {
                st.animate({fill: st.color, stroke: "#eee"}, 500);
				china[state]['text'].toFront();
                text.innerHTML=china[state]['name'];
			    text01.style.display="";
                text01.style.left=xx-110+"px";
                text01.style.top=yy+75+"px";
                var name = china[state]['name'];
                if(name=="四川"||name=="重庆"){
                    text_2.innerHTML="川菜系";
                }
                if(name=="山东"){
                    text_2.innerHTML="鲁菜系";
                } 
                if(name=="广东"||name=="香港"||name=="澳门"){
                    text_2.innerHTML="粤菜系";
                }
                if(name=="江苏"){
                    text_2.innerHTML="苏菜系";
                }
                if(name=="安徽"){
                    text_2.innerHTML="徽菜系";
                }
                if(name=="浙江"){
                    text_2.innerHTML="浙菜系";
                } 
                if(name=="福建"){
                    text_2.innerHTML="闽菜系";
                }
                if(name=="湖南"){
                    text_2.innerHTML="湘菜系";
                } 
                if(name=="黑龙江"||name=="吉林"||name=="辽宁"){
                    text_2.innerHTML="东北菜系";
                }
                if(name=="河南"){
                    text_2.innerHTML="豫菜系";
                }
                if(name!="河南"&&name!="黑龙江"&&
                    name!="吉林"&&name!="辽宁"&&name!="湖南"&&
                    name!="福建"&&name!="浙江"&&name!="安徽"&&
                    name!="江苏"&&name!="广东"&&name!="山东"&&
                    name!="四川"&&name!="香港"&&name!="澳门"&&
                    name!="重庆"){
                    text_2.innerHTML="其他菜系";
                }
                
                if(name=="四川"||name=="重庆"||name=="湖北"||name=="上海"
                    ||name=="浙江"||name=="云南"||name=="贵州"||name=="湖南"
                    ||name=="江西"||name=="福建"||name=="广西"||name=="广东"
                    ||name=="澳门"||name=="香港"||name=="台湾"||name=="海南"){
                        text_6.innerHTML="米食为主";
                        text_4.innerHTML="偏辣";
                }
                 if(name!="四川"&&name!="重庆"&&name!="湖北"&&name!="上海"
                    &&name!="浙江"&&name!="云南"&&name!="贵州"&&name!="湖南"
                    &&name!="江西"&&name!="福建"&&name!="广西"&&name!="广东"
                    &&name!="澳门"&&name!="香港"&&name!="台湾"&&name!="海南"){
                        text_6.innerHTML="面食为主";
                        text_4.innerHTML="偏咸";
                }
                
                R.safari();
            };
            st[0].onmouseout = function () {
                st.animate({fill: "#97d6f5", stroke: "#eee"}, 500);
				china[state]['text'].toFront();
                text01.style.display="none";
                R.safari();
            };
					
         })(china[state]['path'], state);
    }
}
function change_bgcolor(num){
    for(var i=1;i<=3;i++){
        if(num == i){
               document.getElementById("map_button_"+i).
               style.backgroundColor = "#2CAB6E";
        }
    }
}
function change_bgcolor_one(num){
    for(var i=1;i<=3;i++){
        if(num == i){
               document.getElementById("map_button_"+i).
               style.backgroundColor = "#31C27C";
        }
    }
}
function change_bg(){
    document.getElementById("map_button_4").
               style.backgroundColor = "#9E0D0D";
}
function change_bg_one(){
    document.getElementById("map_button_4").
               style.backgroundColor = "#F70606";
}
//吃饭偏咸
function xian(){
    document.getElementById("map_text_1").
               style.display = "";
               document.getElementById("map_text_2").
               style.display = "none";
               document.getElementById("map_text_3").
               style.display = "none";
               
}
function la(){
    document.getElementById("map_text_1").
               style.display = "none";
               document.getElementById("map_text_2").
               style.display = "";
               document.getElementById("map_text_3").
               style.display = "none";
               
}
function jinji(){
    document.getElementById("map_text_1").
               style.display = "none";
               document.getElementById("map_text_2").
               style.display = "none";
               document.getElementById("map_text_3").
               style.display = "";

}
function guanbi(){
    document.getElementById("map_text_1").
               style.display = "none";
               document.getElementById("map_text_2").
               style.display = "none";
               document.getElementById("map_text_3").
               style.display = "none";
}