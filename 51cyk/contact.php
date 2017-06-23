<!DOCTYPE html>
<html>

<head>
    <title></title>
    <!-- 引用头部css和js-->
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <script type="text/javascript" src="js/header.js"></script>
    <!-- 引用主界面css和js-->
    <link rel="stylesheet" type="text/css" href="css/contact.css">
    <script type="text/javascript" src="js/contact.js"></script>
</head>

<body onload="nav_bgcolor(5)">
    
    <?php include "header.php";?>

    <!-- 联系我们开始-->
    <div class="contact">
    <div class="contact_text">
            <h1>有话想说</h1>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;非常荣幸您能访问我的网站。在这里，你可以零距离接触开发者(Me)。在这里，你可以畅所欲言。在这里，你可以参与到网站的设计。我会第一时间接收到你的意见，并一一回复做出整改。所以请你不要吝啬你的意见！我相信良好的用户体验是最重要的，每一个访问我的网站的人是最重要的。</p>
            <h1>设计理念</h1>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;因为本人就是个吃货，所以一直很喜欢美食，特别是我们中国的传统美食。妈妈也是做菜的好手，所以很有口福，并且本人有个嗜好，每次吃的菜品种类要多(量不一定要多)，因为我感觉品尝多种美食很幸福。
                <br/> &nbsp;&nbsp;&nbsp;&nbsp;一直有很多疑问!!!
                <br/> &nbsp;&nbsp;&nbsp;&nbsp;美食为什么不能把人与人联系起来？
                <br/> &nbsp;&nbsp;&nbsp;&nbsp;中国传统美食真正纯正的口味还能吃到吗？
                <br/> &nbsp;&nbsp;&nbsp;&nbsp;在现在的互联网大潮中，如何拯救慢慢变味的中国传统美食？
                <br/> &nbsp;&nbsp;&nbsp;&nbsp;真正纯正的吃货交流平台有吗？
                <br/> &nbsp;&nbsp;&nbsp;&nbsp;不用害怕，一切都有我们。中国美食更多的是一种饮食文化。这种饮食文化更多又是人与人之间的联系。"吃一口"要用美食把人与人联系起来，"吃一口"要致力寻找真正纯正的传统美食，"吃一口"要致力帮助传统美食的坚守者(经营者)，"吃一口"要做最好最专业的吃货交流平台。在这里，你可以零距离接触网站开发者，我们会认真听取你的每一个意见。在这里，你不用担心有虚假的信息，因为我会竭力维护网站的环境，营造良好的氛围。</p>
            <h1>未来的路</h1>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;未来的路很远，我们只求走好当下。走好每一步。
            </p>
        </div>
        <ul>
            <li style="background-color: #6A7DA7;" id="contact_li_1" onmousemove="li_text_move(1)" onmouseout="li_text_out()">邮箱</li>
            <li style="background-color: #FFAB2D;" id="contact_li_2" onmousemove="li_text_move(2)" onmouseout="li_text_out()">QQ</li>
            <li style="background-color: #41B9AF;" id="contact_li_3" onmousemove="li_text_move(3)" onmouseout="li_text_out()">微信</li>
        </ul>
        <ul>
            <li style="background-color: #9EC568;" id="contact_li_4" onmousemove="li_text_move(4)" onmouseout="li_text_out()">支付宝</li>
            <li style="background-color: #FE6F6B;" id="contact_li_5" onmousemove="li_text_move(5)" onmouseout="li_text_out()">电话</li>
            <li style="background-color: #FBEBD4;color:#ABA7A7;" id="contact_li_6" onmousemove="li_text(6)" onmouseout="li_text_out()">更多</li>
        </ul>
        
    </div>
    <!-- 联系我们结束-->
    <?php include "footer.php";?>
</body>

</html>
