<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/29
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AJAX One</title>
    <script>
        //使用XMLHttpRequest发送请求
        //1.创建XMLHttpRequest对象
        var xhr =new XMLHttpRequest();
        //2.注册onreadystatechange事件
        //obj.onclick = function () {}
        xhr.onreadystatechange = function (){
            //readystate=4说明这次的请求响应处理结束
            if(xhr.readyState==4){
                //alert(xhr.status);
                alert(xhr.responseText);
            }

        }
        //3.准备带给服务器端的数据
        //4.发送请求
        xhr.open("GET","/ajax_json/ajaxoneServlet?id=100",true);
        xhr.send(null);

    </script>
</head>
<body>
    <input type="button" value="测试" onclick="zc()"/>
</body>
</html>
