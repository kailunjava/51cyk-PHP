<!DOCTYPE html>
<html>

<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <link rel="stylesheet" type="text/css" href="css/register.css">
    
    <script type="text/javascript" src="js/register.js"></script>
</head>

<body>
 
    <?php include "header2.php";?>
    <div class="register_div">
        
        <div class="register_div_left">
            <div class="register_name" onclick="onclick_phone()" id="register_name"
            >普通注册</div>
        <div class="register_mail" onclick="onclick_mail()" id="register_mail">其他方式注册</div>
        <hr id="name_hr"/>
        <hr id="mail_hr"/>
            <form action="php/register_db.php" id="form_name" method="post"  onsubmit="return submit_null()">
                <table>
                    <tr>
                       
                        <td>
                        <input type="hidden" name="register_phone" value="register_phone">
                            <input type="text" name="name" placeholder="请输入用户名" id="check_name"  onfocus="o_phone()"  onblur="c_phone()">
                            
                        </td>
                        <td style="font-family:simhei;color:#FFFFFF;padding-left:5px;"> 用户名为5-15位任意字符</td>
                    </tr>
                     <tr>
                        <td>
                            <font color="red" face="simhei" id="name_message">
                                
                            </font>
                        </td>
                    </tr>

                    <tr>
                       
                        <td>                     
                            <input type="text" name="nickname" placeholder="请输入昵称" id="check_nickname"  onfocus="o_nickname()"  onblur="c_nickname()">
                            
                        </td>
                        <td style="font-family:simhei;color:#FFFFFF;padding-left:5px;"> 昵称为2-15位汉字，字母，数字</td>
                    </tr>
                     <tr>
                        <td>
                            <font color="red" face="simhei" id="nickname_message">
                                
                            </font>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <input type="text" name="" placeholder="请输入验证码" style="width:161px;" id="check_yzm" onfocus="o_yzm()"  onblur="c_yzm()">
                            <input type="button" name="" value="获取验证码" id="get" onclick="number_suiji()">
                            
                        </td>
                         <td style="font-family:simhei;color:#FFFFFF;padding-left:5px;"> 验证码为6位数字</td>
                    </tr>
                     <tr>
                        <td>
                            <font color="red" face="simhei" id="yzm_message" >
                                
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="password" name="password" placeholder="请输入密码" id="check_password" onblur ="c_password()" onfocus="o_password()">
                            
                        </td>
                        <td style="font-family:simhei;color:#FFFFFF;padding-left:5px;"> 密码为6-15位任意字符</td>
                    </tr>
                      <tr>
                        <td>
                            <font color="red" face="simhei" id="password_message" >
                                
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="password" name="con_password" placeholder="请再次确认密码" id="check_conpassword" onblur ="c_conpassword()" onfocus="o_conpassword()">
                        </td>
                        <td style="font-family:simhei;color:#FFFFFF;padding-left:5px;"> 密码为6-15位任意字符</td>
                    </tr>
                     <tr>
                        <td>
                            <font color="red" face="simhei" id="conpassword_message">
                                 <?php echo @$_GET["message"] ?>
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td class="agree">
                            <input name="agree" type="checkbox" value="yes" checked="checked"  id="check_checkbox" onfocus="o_checkbox()" />我已阅读并同意<a href="">《用户协议》</a></td>
                    </tr>
                      <tr>
                        <td>
                            <font color="red" face="simhei" id="checkbox_message">
                                
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" name="" value="注册" id="register">
                        </td>
                    </tr>
                </table>
            </form>
            <!-- <form action="" id="form_mail">
                <table>
                    <tr>
                      
                        <td>
                         
                            <input type="mail" name="name" placeholder="请输入常用邮箱">
                        </td>
                        <td style="font-family:simhei;color:#FFFFFF;padding-left:5px;"> 邮箱为已注册邮箱</td>
                    </tr>
                     <tr>
                        <td>
                            <font color="red" face="simhei" id="phone_message">
                                
                            </font>
                        </td>
                    </tr>
                    
                    <tr>
                       
                        <td>                     
                            <input type="text" name="nickname" placeholder="请输入昵称" id="check_nickname"  onfocus="o_nickname()"  onblur="c_nickname()">
                            
                        </td>
                        <td style="font-family:simhei;color:#FFFFFF;padding-left:5px;"> 昵称为2-15位汉字，字母，数字</td>
                    </tr>
                     <tr>
                        <td>
                            <font color="red" face="simhei" id="nickname_message">
                                
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="" placeholder="请输入邮箱验证码" style="width:161px;">
                            <input type="button" name="" value="获取验证码" id="get">
                        </td>
                        <td style="font-family:simhei;color:#FFFFFF;padding-left:5px;"> 验证码为6位数字</td>
                    </tr>
                     <tr>
                        <td>
                            <font color="red" face="simhei" id="password_message" >
                                
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="password" name="password" placeholder="请输入密码">
                        </td>
                        <td style="font-family:simhei;color:#FFFFFF;padding-left:5px;"> 密码为6-15位任意字符</td>
                    </tr>
                    <tr>
                        <td>
                            <font color="red" face="simhei" id="password_message" >
                                
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="password" name="con_password" placeholder="请再次确认密码">
                        </td>
                        <td style="font-family:simhei;color:#FFFFFF;padding-left:5px;"> 密码为6-15位任意字符</td>
                    </tr>
                     <tr>
                        <td>
                            <font color="red" face="simhei">
                                <?php echo @$_GET["message"] ?>
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td class="agree">
                            <input name="" type="checkbox" value="" />我已阅读并同意<a href="">《用户协议》</a></td>
                    </tr>
                    <tr>
                        <td>
                            <font color="red" face="simhei" id="checkbox_message">
                                
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit"  value="注册" id="register"
                            >
                        </td>
                    </tr>
                </table>
            </form> -->
        </div>
    </div>
   
</body>

</html>
