//左右箭头翻滚图片
var count = 1;
function left_img(){
	if(count == 1){
	document.getElementById("top_1").src="img/share_07.jpg";
	document.getElementById("top_2").src="img/share_08.jpg";
	document.getElementById("top_3").src="img/share_09.jpg";
	document.getElementById("bottom").innerHTML="晚餐时间";
    }
	if(count == 0 || count == 3 ){
    document.getElementById("top_1").src="img/share_04.jpg";
	document.getElementById("top_2").src="img/share_05.jpg";
	document.getElementById("top_3").src="img/share_06.jpg";
	document.getElementById("bottom").innerHTML="午餐时间";
	}
	if(count == -1 ||count == 2){
    document.getElementById("top_1").src="img/share_01.jpg";
	document.getElementById("top_2").src="img/share_02.jpg";
	document.getElementById("top_3").src="img/share_03.jpg";
	document.getElementById("bottom").innerHTML="早餐时间";
	}
	count--;
	console.log(count);
    if(count<-1){
       count=1;
    }
}

function right_img(){
	if(count == 1){
	document.getElementById("top_1").src="img/share_04.jpg";
	document.getElementById("top_2").src="img/share_05.jpg";
	document.getElementById("top_3").src="img/share_06.jpg";
	document.getElementById("bottom").innerHTML="午餐时间";
    }
    if(count == 2 || count == -1){
	document.getElementById("top_1").src="img/share_07.jpg";
	document.getElementById("top_2").src="img/share_08.jpg";
	document.getElementById("top_3").src="img/share_09.jpg";
	document.getElementById("bottom").innerHTML="晚餐时间";
    }
    if(count == 3 || count == 0){
	document.getElementById("top_1").src="img/share_01.jpg";
	document.getElementById("top_2").src="img/share_02.jpg";
	document.getElementById("top_3").src="img/share_03.jpg";
	document.getElementById("bottom").innerHTML="早餐时间";
    }
    count++;
    console.log(count);
    if(count>3){
       count=1;
    }
}

