window.onload =function(){
    var height = document.getElementById('main_height').value;
    for(var i=1;i<=3;i++){
          if(height == i){
              document.getElementById('category').
              style.height=860+480*i+'px';
          }
    }
}

//点击导航栏子项变背景颜色
function title_bgcolor(num) {

    for (var i = 0; i <= 9; i++) {
        var c = document.getElementById("c_" + i);
        var c_1 = document.getElementById("c_1_" + i);
        if (num == i) {
            c.style.backgroundColor = "#31C27C";
            c_1.style.color = "#FFFFFF";
            document.getElementById("img_main").style.background = "url(./img/c_main_" + i + ".jpg) no-repeat";

        } else {
            c.style.backgroundColor = "#FFFFFF";
            c_1.style.color = "#000000";

        }
    }
}

//查看详情变色
function button_bgcolor_move(num){
    for (var i = 0; i <= 5; i++) {
    if(num==i){
    document.getElementById("button_"+i).style.backgroundColor="#31C27C";
    document.getElementById("button_1_"+i).style.color="#FFFFFF";
       }
   }
}
function button_bgcolor_out(num){
     for (var i = 0; i <= 5; i++) {
    if(num==i){
    document.getElementById("button_"+i).style.backgroundColor="#FFFFFF";
    document.getElementById("button_1_"+i).style.color="#31C27C";
   }
}
}


//翻页变色
function num_bgcolor_move(num){
    for (var i = 1; i <= 4; i++) {
    if(num==i){
    document.getElementById("num_"+i).style.backgroundColor="#31C27C";
    document.getElementById("num_1_"+i).style.color="#F5F5F5";
       }
   }
}
function num_bgcolor_out(num){
     for (var i = 1; i <= 4; i++) {
    if(num==i){
    document.getElementById("num_"+i).style.backgroundColor="#F5F5F5";
    document.getElementById("num_1_"+i).style.color="#31C27C";
   }
}
}
