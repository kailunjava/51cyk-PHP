<!DOCTYPE html>
<html>

<head>
    <title>
    </title>
    <link href="css/header.css" rel="stylesheet" type="text/css">
    <link href="css/login.css" rel="stylesheet" type="text/css">
    <script src="js/header.js" type="text/javascript">
    </script>
  
</head>

<body>

    <?php include "header2.php";?>
    <div class="login_div" id="login_div_one">
        <div class="login_to">

            <form action="php/login_db.php?url=<?php 
            echo @$_GET["url"]?>" method="post">
                <table>
                    <tr>
                        <td style="float:left;">
                            <a href="index.php">
                                    返回首页->
                                </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input name="login" type="hidden" value="login">
                            <input name="name" placeholder="请输入邮箱/手机号" type="text" onfocus="o_xiaochu()">
                        </td>
                    </tr>
                    <tr>
                        <td>
                                <input name="password" placeholder="请输入密码" type="password" onfocus="o_xiaochu()">

                            </td>
                    </tr>
                    <tr>
                        <td>
                            <font color="red" face="simhei" id="login_message">
                                <?php echo @$_GET["message"] ?>
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="">
                                    忘记密码？
                                </a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input id="login" name="" type="submit" value="登录">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="register.php">
                                    去注册->
                                </a>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="login_contact">
        </div>
    </div>
</body>

</html>
