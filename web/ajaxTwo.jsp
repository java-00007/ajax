<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/29
  Time: 13:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        $().ready(function () {
            $(":button").click(function () {
                $.ajax({
                    type:"GET",
                    url:"/ajax_json/ajaxoneServlet?id=1000",
                    success:function (response) {
                        alert(response);
                    }
                });
            });
        });

    </script>
</head>
<body>
        <input type="button" value="测试"/>
</body>
</html>
