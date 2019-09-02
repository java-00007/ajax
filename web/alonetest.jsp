<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/29
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        //1
        <%--$(function () {--%>
        <%--    $(":button").click(function () {--%>
        <%--        //alert("ok");--%>
        <%--        $.ajax({--%>
        <%--            type:"POST",--%>
        <%--            url:"${pageContext.request.contextPath}/ajaxThreeServlet",--%>
        <%--            data:"username=qiaolun&age=22",--%>
        <%--            success:function (response) {--%>
        <%--                alert(response);--%>
        <%--            }--%>
        <%--        });--%>
        <%--    });--%>
        <%--});--%>
        //2
        <%--$(function () {--%>
        <%--    $(":button").click(function () {--%>
        <%--        var user ={--%>
        <%--            username:"cxk",--%>
        <%--            age:12--%>
        <%--        };--%>
        <%--        $.ajax({--%>
        <%--            type:"POST",--%>
        <%--            url:"${pageContext.request.contextPath}/ajaxThreeServlet",--%>
        <%--            data:user,--%>
        <%--            success:function (response) {--%>
        <%--                alert(response);--%>
        <%--            }--%>
        <%--        })--%>
        <%--    })--%>
        <%--})--%>
        //3
        $(function () {
            $(":button").click(function () {

                $.ajax({
                    type:"POST",
                    url:"${pageContext.request.contextPath}/ajaxThreeServlet",
                    data:$("form[name=myform]").serialize(),
                    success:function (response) {
                        alert(response);
                    }
                });
            });
        });






    </script>
</head>
<body>
<form name="myform">
    用户名：<input type="text" name="username"><br />
    年龄：<input type="text" name="age" /><br />
    <input type="button" value="测试" />
</form>
</body>
</html>
