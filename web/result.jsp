<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<h1>登录成功</h1>
<input type="button" value="get"  />
<script src="<%=path%>/js/jquery.min.js"></script>
<script>
    $.post(
        "<%=path%>/login/checkStatus",
        function(data){
            alert(data);
        },
        "json"
    );
</script>
</body>
</html>
