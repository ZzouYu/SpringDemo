<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公司列表</title>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
</head>
<body style="text-align: center;">
    <h1>公司信息</h1>
    
   <table width="70%" border="1" align="center">
        <tr>
            <td>公司名字</td>
            <td>公司描述</td>
            <td>公司地址</td>
            <td>公司电话</td>
            <td>公司邮箱</td>
        </tr>
     
            <tr>
                 <td>${company.name}</td>
                 <td>${company.descUs}</td>
                 <td>${company.address}</td>
                 <td>${company.phone}</td>
                 <td>${company.mail}</td>
               <td>
                 <a href="${company.id}/update">修改</a>
               </td>
            </tr>
    
    </table>
</body>
<script type="text/javascript">

   </script>
</html>