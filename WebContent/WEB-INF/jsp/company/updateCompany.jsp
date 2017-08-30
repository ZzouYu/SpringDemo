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
<sf:form method="post" id="updateForm"  modelAttribute="company">
              公司名称:<sf:input path="name"/><sf:errors path="name"/><br/>
              公司描述:<sf:input path="descUs"/><sf:errors path="descUs"/><br/>
	公司地址:<sf:input path="address"/><sf:errors path="address"/><br/>
	公司电话:<sf:input path="phone"/><sf:errors path="phone"/><br/>
	公司邮箱:<sf:input path="mail"/><sf:errors path="mail"/><br/>
	</sf:form>
</body>
</html>