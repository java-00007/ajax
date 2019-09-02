<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/29
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        // function show() {
        //     //alert("ok")
        //     //使用AJAX发送一个请求，获得服务器端的系统时间，将这个时间放在输入框里
        //     //1.创建XMLHttpRequest对象
        //     var xhr = new XMLHttpRequest();
        //     //2.注册onreadystatechange时间
        //     xhr.onreadystatechange = function () {
        //         if (xhr.readyState==4){
        //             //alert(xhr.responseText);
        //             //将时间放在输入框当中
        //                 document.getElementsByName("getTime")[0].value=xhr.responseText;
        //         }
        //     }
        //     //3.
        //     //4.发送请求
        //     xhr.open("GET","/ajax_json/showTimeServlet",true);
        //     xhr.send(null);
        // }

        $().ready(function () {
           $(":input[name=username]").keyup(function () {
               //alert("ok");
               $.ajax({
                   type:"GET",
                   url:"${pageContext.request.contextPath}/showTimeServlet",
                   success:function (data) {
                       //alert(data);
                       $(":input[name=getTime]").val(data);
                   }
               });
           });
        });
    </script>
</head>
<body>
    用户:<input type="text"  name="username"/>&nbsp;&nbsp;&nbsp;&nbsp;
    时间：<input type="text" name="getTime"/>

</body>
</html>
