

//点击回复话题寻找光标
function answer_html(){
   document.getElementById('text2').focus();

}
function answer_color_move(num){
    if(num==1){
    document.getElementById('left_2_1').style.backgroundColor="#2CAB6E";
    }
    if(num==2){
    document.getElementById('left_2_2').style.backgroundColor="#2CAB6E";
    }
}
function answer_color_out(num){
    if(num == 1){
    document.getElementById('left_2_1').style.backgroundColor="#31C27C";
    }
    if(num == 2){
    document.getElementById('left_2_2').style.backgroundColor="#31C27C";
    }
}
//自动变化CSS的高度
 /*window.onload = function () {
    var height = document.getElementById('css_height').value;
    for(var i=1;i<=4;i++){
          if(height == i){
              document.getElementById('talk_details').
              style.height=1000+450*i+'px';
          }
    }
 }*/

 //隐藏楼主
 window.onload = function(){
    var pageNow = document.getElementById('pageNow').value;
    if(pageNow>1){
         document.getElementById('center').style.display="none";
    }
 }


function css_height(){

}