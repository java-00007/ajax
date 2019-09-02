<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/29
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

<%--    这--%>
<%--    个--%>
<%--    代--%>
<%--    码--%>
<%--    有--%>
<%--    问--%>
<%--    题--%>
<%--    看--%>
<%--    alonetest.jsp--%>
<%--    --%>


    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        $(function () {
            $(":button").click(function () {
                //alert("ok");
                //post方法发送请求带数据给服务器端
                //方法1："名字1=值1&名字2=值2"
                //方法2：传js对象
                var user ={
                    username:"cxk",
                    age:12
                };
                //方法3.通过表单的序列化方法传数据
                //alert($("form[name=myform]").serialize());
                $.ajax({
                    type:"POST",
                    url:"${pageContext.request.contextPath}/ajaxThreeServlet",
                    data:$("form[name=myform]").serialize(),//:"username=qiaobiluo&age=58",
                    success:function (response) {
                        alert(response);
                    }
                })
            })
        })
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
