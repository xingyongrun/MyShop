<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
   <c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台模板管理系统</title>
<link type="text/css" rel="stylesheet" href="${ctx}/admin/css/style.css" />
<script type="text/javascript" src="${ctx}/admin/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${ctx}/admin/js/menu.js"></script>
</head>

<body>

<div class="top"></div>
<div id="header">
	<div class="logo">Yummy蛋糕后台管理系统</div>
	<div class="navigation">
	<c:if test="${adminname!= null }">
		<ul>
		 	<li>欢迎您！</li>
			<li><a href="">${adminname}</a></li>
			<li><a href="updatepassword.jsp?name=<%=request.getParameter("username") %>">修改密码</a></li>
			<li><a href="${ctx}/adminlogin.jsp">退出</a></li>
		</ul>
	</c:if>
	</div>
</div>
<div id="content">
	<div class="left_menu">
				<ul id="nav_dot">
      <li>
          <h4 class="M1"><span></span>系统公告</h4>
          <div class="list-item none">
            <a href='#'>系统公告1</a>
            <a href='#'>系统公告2</a>
            <a href='#'>系统公告3</a>
            <a href='#'>系统公告4</a>
          </div>
        </li>
        <li>
          <h4 class="M2"><span></span>商品管理</h4>
          <div class="list-item none">
            <a href='${ctx }/admin/cakelist'>所有商品</a>		   
           </div>
        </li>
        <li>
          <h4 class="M3"><span></span>用户管理</h4>
          <div class="list-item none">
            <a href='${ctx }/admin/userlist'>所有用户</a>
          </div>
        </li>
				<li>
          <h4 class="M4"><span></span>订单管理</h4>
          <div class="list-item none">
            <a href='#'>所有订单</a>
          </div>
        </li>


  </ul>
		</div>
	<div class="m-right">
			<div class="right-nav">
					<ul>
							<li><img src="images/home.png"></li>
								<li style="margin-left:25px;">您当前的位置：</li>
								<li><a href="#">系统公告</a></li>
								<li>></li>
								<li><a href="#">最新公告</a></li>
						</ul>
			</div>
			<div class="main">
				<center>
					<form  methot="post">
						<table border="1">
							<tr>
								<th>ID</th>
								<th>蛋糕名称</th>
								<th>价格</th>
								<th>折扣价格</th>
								<th>描述</th>
								<th>蛋糕类型</th>
								<th>图片</th>
								<th>修改</th>
								<th>删除</th>
							</tr>
						<c:forEach var="cake" items="${list}">	
							<tr>
								<td>${cake.id }</td>
								<td>${cake.name }</td>
								<td>${cake.price }</td>
								<td>${cake.discountprice }</td>
								<td>${cake.description }</td>
								<td>${cake.cakeType.name }</td>
								<td><img src="${ctx}/images/${cake.listimg}" height="150" width="150"></td>
								
								<td><a href="${ctx}/admin/doedit?id=${cake.id}">修改</a></td>
								<td><a href="${ctx}/admin/deletecake?id=${cake.id}">删除</a></td>
							</tr>
						</c:forEach>
						</table>
					</form>			
										<a href="${ctx}/adminaddcake.jsp">添加商品</a>
					<form  action="${ctx }/admin/cakelist" style="clear:left" method="post">
				            <table border="0" align="center" >
							    <tr>
						            <td colspan="6" align="center" >共${page.totalRecords}条记录 共${page.totalPages}页 当前第${page.pageNo}页<br>            
						                <a href="${ctx }/admin/cakelist?pageNo=${page.topPageNo}"><input type="button" name="fristPage" value="首页" /></a>
						                <c:choose>
						                  <c:when test="${page.pageNo!=1}">             
						                      <a href="${ctx }/admin/cakelist?pageNo=${page.previousPageNo }"><input type="button" name="previousPage" value="上一页" /></a>                
						                  </c:when>
						                  <c:otherwise>   
						                      <input type="button" disabled="disabled" name="previousPage" value="上一页" />       
						                  </c:otherwise>
						                </c:choose>
						                <c:choose>
						                  <c:when test="${page.pageNo != page.totalPages}">
						                    <a href="${ctx }/admin/cakelist?pageNo=${page.nextPageNo }"><input type="button" name="nextPage" value="下一页" /></a>
						                  </c:when>
						                  <c:otherwise>    
						                      <input type="button" disabled="disabled" name="nextPage" value="下一页" />
						                  </c:otherwise>
						                </c:choose>
						                <a href="${ctx }/admin/cakelist?pageNo=${page.bottomPageNo}"><input type="button" name="lastPage" value="尾页" /></a>
						            </td>
						        </tr>
				            </table> 
		 				</form>
				</center>
			</div>
	</div>
</div>

</body>
</html>
