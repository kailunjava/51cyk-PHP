function li_text_move(num) {
    var text = ["kailunjava@163.com", "274113729", "lalala233lalala", "你猜", "131****2570"];

    document.getElementById("contact_li_" + num).innerHTML = text[num - 1];

}

function li_text_out() {
    var text = ["邮箱", "QQ", "微信", "支付宝", "电话"];
    for (var i = 1; i <= 5; i++) {
        document.getElementById("contact_li_" + i).innerHTML = text[i - 1];
    }
}
