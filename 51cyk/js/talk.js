window.setInterval(img_tab, "4000");

var tab_count = 2;

//自动切换图片
function img_tab() {

    document.getElementById("left_1_img").style.background = "url(./img/talk_00" + tab_count + ".jpg) no-repeat";
    if (tab_count==1) {
        document.getElementById("left_1_text").innerHTML = "妈妈的味道";
        document.getElementById("left_1_text_two").innerHTML = "----儿时的小吃";
    }
    if (tab_count==2) {
        document.getElementById("left_1_text").innerHTML = "童年的乐趣";
        document.getElementById("left_1_text_two").innerHTML = "----好好玩超有趣";
    }
    if (tab_count==3) {
        document.getElementById("left_1_text").innerHTML = "老年的福利";
        document.getElementById("left_1_text_two").innerHTML = "----绵绵的超好吃";
    }
    if (tab_count==4) {
        document.getElementById("left_1_text").innerHTML = "大家都爱吃";
        document.getElementById("left_1_text_two").innerHTML = "----从小就知道";
    }
    if (tab_count==5) {
        document.getElementById("left_1_text").innerHTML = "你猜是什么做的";
        document.getElementById("left_1_text_two").innerHTML = "----神奇的食物";
    }
    tab_count++;
    if (tab_count > 5) {
        tab_count = 1;
    }

}

function right_1_color(num) {
    if (num == 1) {
        document.getElementById("right_1").style.backgroundColor = "#2CAB6E";
    }
    if (num == 2) {
        document.getElementById("right_1").style.backgroundColor = "#31C27C";
    }
}

function right_color(num) {
    if (num == 1) {
        document.getElementById("right").style.backgroundColor = "#2CAB6E";
    }
    if (num == 2) {
        document.getElementById("right").style.backgroundColor = "#31C27C";
    }
}

//话题排行榜颜色
window.onload = function(){
    document.getElementById("right_2_left_0").style.backgroundColor="#FC072F";
    document.getElementById("right_2_left_1").style.backgroundColor="#1EFC07";
    document.getElementById("right_2_left_2").style.backgroundColor="#FCBF07";
    document.getElementById("right_3_left_0").style.backgroundColor="#FC072F";
    document.getElementById("right_3_left_1").style.backgroundColor="#1EFC07";
    document.getElementById("right_3_left_2").style.backgroundColor="#FCBF07";
}
