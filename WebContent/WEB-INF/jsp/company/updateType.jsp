<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<a href="javascript:document.getElementById('updateForm').submit()">保存</a> &nbsp;&nbsp;
<a href="javascript:history.go(-1)">退回 </a>
</head>
<body>
<sf:form method="post" id="updateForm" modelAttribute="type">
              公司类型:<sf:input path="type"/><br/>
              公司规模:<sf:input path="size"/><br/>
	服务质量:<sf:input path="quality"/><br/>
	公司体验:<sf:input path="experience"/><br/>
	公司价格:<sf:input path="price"/><br/>
	</sf:form>
</body>
</html>