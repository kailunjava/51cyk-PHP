window.onload = onclick_phone;

//切换邮箱注册与普通注册
function onclick_phone() {
    document.getElementById("register_name").style.color = "#31C27C";
    document.getElementById("register_mail").style.color = "#FFFFFF";
    document.getElementById("name_hr").style.borderColor = "#31C27C";
    document.getElementById("mail_hr").style.borderColor = "#FFFFFF";
    document.getElementById("form_name").style.display = "";
    document.getElementById("form_mail").style.display = "none";
}

function onclick_mail() {
    document.getElementById("register_mail").style.color = "#31C27C";
    document.getElementById("register_name").style.color = "#FFFFFF";
    document.getElementById("mail_hr").style.borderColor = "#31C27C";
    document.getElementById("name_hr").style.borderColor = "#FFFFFF";
    document.getElementById("form_name").style.display = "none";
    document.getElementById("form_mail").style.display = "";
}
/*var xmlhttp;
if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
} else { // code for IE6, IE5
    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange = function() {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

    }
}
xmlhttp.open("GET", "register.php", true);
xmlhttp.send();*/

// 验证大陆手机号 /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/
function c_phone() {
    var tel = document.getElementById("check_name").value;
    var telreg = /^[a-zA-Z0-9]{5,15}$/;
    var name_message = document.getElementById("name_message");
    if (tel != "") {
        if (!telreg.test(tel)) {
            name_message.style.color = "red";
            name_message.innerHTML = "用户名格式不正确";

        } else {
            name_message.style.color = "green";
            name_message.innerHTML = "输入正确";

        }
    }
}

function o_phone() {
    document.getElementById("name_message").innerHTML = "";
    document.getElementById("conpassword_message").innerHTML = "";
}

function c_nickname() {
    var tel = document.getElementById("check_nickname").value;
    var telreg = /^[\d\w\u4e00-\u9fa5,\.;\:"'?!\-]{2,15}$/;
    var nickname_message = document.getElementById("nickname_message");
    if (tel != "") {
        if (!telreg.test(tel)) {
            nickname_message.style.color = "red";
            nickname_message.innerHTML = "昵称格式不正确";

        } else {
            nickname_message.style.color = "green";
            nickname_message.innerHTML = "输入正确";

        }
    }
}

function o_nickname() {
    document.getElementById("nickname_message").innerHTML = "";
    document.getElementById("conpassword_message").innerHTML = "";
}



function c_yzm() {
    var yzm = document.getElementById("check_yzm").value;
    //var yzmreg = /^[0-9]{6}$/;
    var yzm_message = document.getElementById("yzm_message");
    if (yzm != "") {
        //if (!yzmreg.test(yzm)) {
            if(yzm!=num){
            yzm_message.style.color = "red";
            yzm_message.innerHTML = "验证码不正确";

        } else {
            yzm_message.style.color = "green";
            yzm_message.innerHTML = "输入正确";
        }
    }
}

function o_yzm() {
    document.getElementById("yzm_message").innerHTML = "";
    document.getElementById("conpassword_message").innerHTML = "";
}


function c_password() {
    var pas = document.getElementById("check_password").value;
    var pasreg = /^[a-zA-Z0-9]{6,15}$/;
    var password_message = document.getElementById("password_message");
    if (pas != "") {
        if (!pasreg.test(pas)) {
            password_message.style.color = "red";
            password_message.innerHTML = "密码格式不正确";
        } else {
            password_message.style.color = "green";
            password_message.innerHTML = "输入正确";
        }
    }
}

function o_password() {
    document.getElementById("password_message").innerHTML = "";
    document.getElementById("conpassword_message").innerHTML = "";
}

function c_conpassword() {
    var pas = document.getElementById("check_password").value;
    var pasreg = /^[a-zA-Z0-9]{6,15}$/;
    var conpas = document.getElementById("check_conpassword").value;
    var conpassword_message = document.getElementById("conpassword_message");
    if (conpas != "") {
        if (!pasreg.test(conpas)) {
            conpassword_message.style.color = "red";
            conpassword_message.innerHTML = "密码格式不正确";
        } else {
            if (pas != conpas) {
                conpassword_message.style.color = "red";
                conpassword_message.innerHTML = "两次输入密码不一致";
            } else {
                conpassword_message.style.color = "green";
                conpassword_message.innerHTML = "密码一致";
            }
        }
    }
}

function o_conpassword() {
    document.getElementById("conpassword_message").innerHTML = "";
    
}

function o_checkbox() {
    document.getElementById("checkbox_message").innerHTML = "";
    document.getElementById("conpassword_message").innerHTML = "";
}

function submit_null() {

    var tel = document.getElementById("check_name").value;
    var telreg = /^[a-zA-Z0-9]{5,15}$/;
    var yzm = document.getElementById("check_yzm").value;
    var yzmreg = /^[0-9]{6}$/;
    var pas = document.getElementById("check_password").value;
    var pasreg = /^[a-zA-Z0-9]{6,15}$/;
    var conpas = document.getElementById("check_conpassword").value;
    var check_checkbox = document.getElementById("check_checkbox").checked;
    if (tel == "") {
        document.getElementById("name_message").style.color = "red";
        document.getElementById("name_message").innerHTML = "用户名不能为空";       
    }
    if (yzm == "") {
        document.getElementById("yzm_message").style.color = "red";
        document.getElementById("yzm_message").innerHTML = "验证码不能为空";       
    }
    if (pas == "") {
        document.getElementById("password_message").style.color = "red";
        document.getElementById("password_message").innerHTML = "密码不能为空";      
    }
    if (conpas == "") {
        document.getElementById("conpassword_message").style.color = "red";
        document.getElementById("conpassword_message").innerHTML = "请再次确认密码";       
    }
    if (pas != conpas) {
        conpassword_message.style.color = "red";
        conpassword_message.innerHTML = "两次输入密码不一致";       
    }
    if (check_checkbox == false) {
        document.getElementById("checkbox_message").innerHTML = "请同意用户协议";  
    }
   if(telreg.test(tel)&&yzmreg.test(yzm)&&pasreg.test(pas)&&pasreg.test(conpas)&&(check_checkbox == true)&&
        (pas= conpas)){
           return true;
    }
    return false;
}
var num="";
//设置随机验证码
function number_suiji(){
     num="";
     for(var i=0;i<6;i++){
        num+=Math.floor(Math.random()*10);
     }
     document.getElementById("get").value = num;
}
