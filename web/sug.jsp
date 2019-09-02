<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/29
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        $(function () {
            $(":text[name=username]").keyup(function () {
                alert("ok,"+this.value+","+$(this).val());
                $.ajax({
                    type:"POST",
                    url:"${pageContext.request.contextPath}/sugServlet",
                    data:"username="+this.value,
                    success:function (response) {
                        //response是一个用逗号分开的字符串-->数组
                        var arr = response.split(",");
                        $("datalist option").remove();
                        $.each(arr,function (index,content) {
                           $("datalist").append("<option>"+content+"<option/>");
                        });
                        alert(response);
                    }
                });
            });
        });
    </script>
</head>
<body>
    请输入：<input type="text" name="username" list="sel"/>
<%--    <select>--%>
<%--        <option>1</option>--%>
<%--    </select>--%>
<datalist id="sel" ></datalist>
</body>
</html>
