window.setInterval(img_tab, "4000");
var tab_count = 2;

//菜系切换
function li_color_move(num) {
    for (var i = 1; i <= 10; i++) {
        if (num == i) {
            document.getElementById("li_" + i).style.backgroundColor = "#31C27C";
        }
    }
}
//菜系切换
function li_color_out() {
    for (var i = 1; i <= 10; i++) {
        document.getElementById("li_" + i).style.backgroundColor = "rgba(0,0,0,0)";
    }
}
//自动切换图片
function img_tab() {

    document.getElementById("img_tab").style.background = "url(./img/img_0" + tab_count + ".jpg) no-repeat";
    tab_count++;
    if (tab_count > 5) {
        tab_count = 1;
    }

}
