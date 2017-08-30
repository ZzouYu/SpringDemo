<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公司列表</title>
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<link rel="stylesheet" href="../css/index.css" />
<script src="../js/jquery-1.8.0.js"></script>
<script src="../js/bootstrap.min.js"></script>
</head>
<body style="text-align: center;">
<!-- <div class="nav">
    <div class="accordion" id="accordion2">
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                   公司
                </a>
            </div>
            <div id="collapseOne" class="accordion-body collapse" style="height: 0px; ">
                <div class="accordion-inner">
             公司概况  
                </div>
            </div>
        </div>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                     服务范围
                </a>
            </div>
            <div id="collapseTwo" class="accordion-body collapse">
                <div class="accordion-inner">
              公司业务  
                </div>
            </div>
        </div>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
                  成效
                </a>
            </div>
            <div id="collapseThree" class="accordion-body collapse">
                <div class="accordion-inner">
公司成果                </div>
            </div>
        </div>
    </div>
</div> -->
  <h1>公司信息</h1>
   <div class="container">
   <table width="80%"   class="table   table-hover table-bordered">
        <tr>
            <th>公司类型</th>
            <th>公司规模</th>
            <th>公司质量</th>
            <th>公司体验</th>
            <th>公司价格</th>
            <th>操作</th>
        </tr>
     <c:forEach items="${company_type}" var="types">
            <tr>
                 <td>${types.type}</td>
                 <td>${types.size}</td>
                 <td>${types.quality}</td>
                 <td>${types.experience}</td>
                 <td>${types.price}</td>
               <td>
                 <a href="${types.id}/updateType">修改</a>
               </td>
            </tr>
    </c:forEach>
    </table>
    
    <table width="80%" class="table  table-hover table-bordered" style="margin-top:50px">
        <tr>
            <th>商家</td>
            <th>金额</th>
            <th>节省</th>
            <th>操作</th>
        </tr>
         <c:forEach items="${serve}" var="serve">
            <tr>
                 <td>${serve.value.sellerCount}</td>
                 <td>${serve.value.money}</td>
                 <td>${serve.value.savemoney}</td>
               <td>
                 <a href="${serve.value.id}/updateType">修改</a>
               </td>
            </tr>
            </c:forEach>
    </table> 
    </div>
</body>
<script type="text/javascript">

   </script>
</html>