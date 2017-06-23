function tr_color_move(num){
	for (var i = 0; i < 4; i++) {
	    if(num==i){
	    document.getElementById("tr_"+i).style.backgroundColor="#31C27C";
	    document.getElementById("tr_"+i).style.color="#FFFFFF";
	       }
	   }
}
function tr_color_out(num){
	for (var i = 0; i < 4; i++) {
	    if(num==i){
	    document.getElementById("tr_"+i).style.backgroundColor="#F4F3F3";
	    document.getElementById("tr_"+i).style.color="#807E7E";
	       }
	   }
	   
}
function bt_color(num){
	for (var i = 0; i < 4; i++) {
	    if(num==i){
	    document.getElementById("bt_"+i).style.backgroundColor="#31C27C";
	    document.getElementById("bt_"+i).style.color="#FFFFFF";
	       }
	   }
	   if(num==0){
    document.getElementById("send_mes").style.display = "none";
   	document.getElementById("release").style.display = "";
   	document.getElementById("meses").style.display = "none";
   	document.getElementById("follows").style.display = "none";
   	document.getElementById("fans").style.display = "none";
    }
    if(num==1){
    document.getElementById("send_mes").style.display = "";  
    document.getElementById("release").style.display = "none";
   	document.getElementById("meses").style.display = "";
   	document.getElementById("follows").style.display = "none";
   	document.getElementById("fans").style.display = "none";
    }
    if(num==2){
    document.getElementById("send_mes").style.display = "none";
    document.getElementById("release").style.display = "none";
   	document.getElementById("meses").style.display = "none";
   	document.getElementById("follows").style.display = "";
   	document.getElementById("fans").style.display = "none";
    }
    if(num==3){
    document.getElementById("send_mes").style.display = "none";  
    document.getElementById("release").style.display = "none";
   	document.getElementById("meses").style.display = "none";
   	document.getElementById("follows").style.display = "none";
   	document.getElementById("fans").style.display = "";
    }
}

function ch_color(num){
	for (var i = 0; i < 2; i++) {
	    if(num==i){
	    document.getElementById("ch_"+i).style.backgroundColor="#31C27C";
	    document.getElementById("ch_"+i).style.color="#FFFFFF";
	       }
	   }
	if(num==0){
   	document.getElementById("touxian").style.display = "";
   	document.getElementById("password").style.display = "none";
    }
    if(num==1){
    document.getElementById("touxian").style.display = "none";
   	document.getElementById("password").style.display = "";
    }
}

//下面用于图片上传预览功能
function setImagePreview(avalue) {
var docObj=document.getElementById("fileId");
 
var imgObjPreview=document.getElementById("img");
if(docObj.files &&docObj.files[0])
{
//火狐下，直接设img属性
imgObjPreview.style.display = 'block';
imgObjPreview.style.width = '160px';
imgObjPreview.style.height = '160px'; 
//imgObjPreview.src = docObj.files[0].getAsDataURL();
 
//火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
}
else
{
//IE下，使用滤镜
docObj.select();
var imgSrc = document.selection.createRange().text;
var localImagId = document.getElementById("img_2");
//必须设置初始大小
localImagId.style.width = "160px";
localImagId.style.height = "160px";
//图片异常的捕捉，防止用户修改后缀来伪造图片
try{
localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
}
catch(e)
{
alert("您上传的图片格式不正确，请重新选择!");
return false;
}
imgObjPreview.style.display = 'none';
document.selection.empty();
}
return true;
}


function c_password() {
    var pas = document.getElementById("old_pas").value;
    var pasreg = /^[a-zA-Z0-9]{6,15}$/;
    var password_message = document.getElementById("password_mes1");
    if (pas != "") {
        if (!pasreg.test(pas)) {
            password_message.style.color = "red";
            password_message.innerHTML = "密码格式不正确";
        } else {
            password_message.style.color = "green";
            password_message.innerHTML = "输入格式正确";
        }
    }
}

function o_password() {
    document.getElementById("password_mes1").innerHTML = "";
    /*document.getElementById("conpassword_message").innerHTML = "";*/
}
 
 function c_new_password() {
    var pas = document.getElementById("new_pas").value;
    var pasreg = /^[a-zA-Z0-9]{6,15}$/;
    var password_message = document.getElementById("password_mes2");
    if (pas != "") {
        if (!pasreg.test(pas)) {
            password_message.style.color = "red";
            password_message.innerHTML = "密码格式不正确";
        } else {
            password_message.style.color = "green";
            password_message.innerHTML = "输入格式正确";
        }
    }
}

function o_new_password() {
    document.getElementById("password_mes2").innerHTML = "";
     document.getElementById("password_mes3").innerHTML = "";
    /*document.getElementById("conpassword_message").innerHTML = "";*/
}

function c_conpassword() {
    var pas = document.getElementById("new_pas").value;
    var pasreg = /^[a-zA-Z0-9]{6,15}$/;
    var conpas = document.getElementById("con_pas").value;
    var conpassword_message = document.getElementById("password_mes3");
    if (conpas != "") {
        if (!pasreg.test(conpas)) {
            conpassword_message.style.color = "red";
            conpassword_message.innerHTML = "密码格式不正确";
        } else {
            if (pas != conpas) {
                conpassword_message.style.color = "red";
                conpassword_message.innerHTML = "两次输入密码不一致";
                return false;
            } else {
                conpassword_message.style.color = "green";
                conpassword_message.innerHTML = "密码一致";
            }
        }
    }
}

function o_conpassword() {
    document.getElementById("password_mes3").innerHTML = "";
    
}

function send_mes_onclick(){
    document.getElementById("body_user").style.display="";
}


function quit(){
    document.getElementById("body_user").style.display="none";
}

function check_mes(){
     var getUser = document.getElementById("getUserName").value;
     var content = document.getElementById("content_mes").value;
     if(getUser == "" || getUser == undefined || getUser== null || content == "" || content == undefined || content== null){
         alert("请输入完整信息");
     }else{
      document.forms["send_mes"].submit();
     }
   }
