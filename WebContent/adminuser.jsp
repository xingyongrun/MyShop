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
				<form methot="post">
					<table border="1">
						<tr>
							<th>用户ID</th>
							<th>用户名</th>
							<th>电话</th>	
							<th>地址</th>
							<th>删除</th>
						</tr>
						<c:forEach var="user" items="${list}">
							<tr>
								<td>${user.id}</td>
								<td>${user.username}</td>
								<td>${user.telephone}</td>
								<td>${user.address}</td>
								<td><a href="${ctx}/admin/deleteuser?id=${user.id}">删除</a></td>
							</tr>
						</c:forEach>
					</table>
				</form>
			</center>
			</div>
	</div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2015 版权所有 京ICP备05019125号-10  来源:<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p></div>
<script>navList(12);</script>
</body>
</html>
