<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<title>管理员登录</title>
	<link rel="stylesheet" href="${ctx}/denglu/style.css" type="text/css" />
	</head>
<body>
		<div id="container">
			<form action="admin/login">
				<div class="login">LOGIN</div>
				<div class="username-text">Adminname:</div>
				<div class="password-text">Password:</div>
				<div class="username-field">
					<input type="text" name="adminname"  value="xyr"/>
				</div>
				<div class="password-field">
					<input type="password" name="password" value="666"/>
				</div>
				<input type="checkbox" name="remember-me" id="remember-me" /><label for="remember-me">Remember me</label>
				<div class="forgot-usr-pwd">Forgot <a href="#">adminname</a> or <a href="#">password</a>?</div>
				<input type="submit" name="submit" value="GO" />
			</form>
		</div>
		<div id="footer">
			Copyright &copy; 2014.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
		</div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' 
charset='gb2312'></script></div>
</body>
</html>