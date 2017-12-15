<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>cake shop</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="${ctx}/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="${ctx}/css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- js -->
<script src="${ctx}/js/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->	
<!-- cart -->
<script src="${ctx}/js/simpleCart.min.js"> </script>
<!-- cart -->
</head>
<body>	
	<!--header-->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1 class="navbar-brand"><a  href="index.html">Yummy</a></h1>
				</div>
				<!--navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="index.html" class="active">Home</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Birthday<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx}/cake/list">Friend</a></li>
											<li><a class="list" href="${ctx}/cake/list">Lover</a></li>
									
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx}/cake/list">Chocolate</a></li>
											<li><a class="list" href="${ctx}/cake/list">Mixed Fruit</a></li>
								
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Theme</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx}/cake/list">Heart shaped</a></li>
											<li><a class="list" href="${ctx}/cake/list">Cartoon Cakes</a></li>
									
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>Weight</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx}/cake/list">1 kG</a></li>
											<li><a class="list" href="${ctx}/cake/list">1.5 kG</a></li>
										
										</ul>
									</div>
								</div>
							</ul>
						</li>
					   <li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Wedding<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx}/cake/list">Friend</a></li>
											<li><a class="list" href="${ctx}/cake/list">Lover</a></li>
											
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx}/cake/list">Chocolate</a></li>
											<li><a class="list" href="${ctx}/cake/list">Mixed Fruit</a></li>
											
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Theme</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx}/cake/list">Heart shaped</a></li>
											<li><a class="list" href="${ctx}/cake/list">Cartoon Cakes</a></li>
										
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>Weight</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx}/cake/list">1 kG</a></li>
											<li><a class="list" href="${ctx}/cake/list">1.5 kG</a></li>
										
										</ul>
									</div>
								</div>
							</ul>
						</li>				
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Special Offers <b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx}/cake/list">Friend</a></li>
											<li><a class="list" href="${ctx}/cake/list">Lover</a></li>
										
										</ul>
									</div>																		
									<div class="col-sm-3">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx}/cake/list">Chocolate</a></li>
											<li><a class="list" href="${ctx}/cake/list">Mixed Fruit</a></li>
											
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>By Theme</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx}/cake/list">Heart shaped</a></li>
											<li><a class="list" href="${ctx}/cake/list">Cartoon Cakes</a></li>
								
						
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>Weight</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx}/cake/list">1 kG</a></li>
											<li><a class="list" href="${ctx}/cake/list">1.5 kG</a></li>
										
			
										</ul>
									</div>
								</div>
							</ul>
						</li>
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">Store<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-4">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx}/cake/list">Friend</a></li>
											<li><a class="list" href="${ctx}/cake/listl">Lover</a></li>
							
										</ul>
									</div>																		
									<div class="col-sm-4">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx}/cake/list">Chocolate</a></li>
											<li><a class="list" href="${ctx}/cake/list">Mixed Fruit</a></li>
		
										</ul>
									</div>								
									<div class="col-sm-4">
										<h4>Specials</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="${ctx}/cake/list">Ice cream cake</a></li>
											<li><a class="list" href="${ctx}/cake/list">Swiss roll</a></li>
									
										</ul>
									</div>
								</div>
							</ul>
						</li>								
					</ul> 
					<!--/.navbar-collapse-->
				</div>
				<!--//navbar-header-->
			</nav>
			<div class="header-info">
				<div class="header-right search-box">
					<a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>				
					<div class="search">
						<form class="navbar-form">
							<input type="text" class="form-control">
							<button type="submit" class="btn btn-default" aria-label="Left Align">
								Search
							</button>
						</form>
					</div>	
				</div>
				<div class="header-right login">
					<a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
					<div id="loginBox">     
						<c:if test="${name != null }">
							<form id="loginForm">
					    	<ul>
                           		 <li><a href="${ctx}/user/cart">我的购物车</a></li>
                            	 <li><a href="${ctx}/user/loginout">退出登录</a></li>
                        	</ul>
							</form>
						</c:if>
					 
						<c:if test="${name == null}">          
						<form id="loginForm" action="${ctx}/user/login" method="post">
							<fieldset id="body">
								<fieldset>
									<label for="email">用户名</label>
									<input type="text" name="name" id="email">
								</fieldset>
								<fieldset>
									<label for="password">密码</label>
									<input type="password" name="pwd" id="password">
								</fieldset>
								<input type="submit" id="login" value="登录">
								<label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
							</fieldset>
							<p>新用户 ? <a class="sign" href="${ctx}/regist.jsp">注册</a> <span><a href="${ctx}/adminlogin.jsp">管理员登录</a></span></p>
						</form>
						</c:if>
					</div>
				</div>
				<div class="header-right cart">
					<a href=""><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
					<div class="cart-box">
						<p><a href="${ctx}/user/cart" class="simpleCart_empty">我的购物车</a></p>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-->
	<!--banner-->
	<div class="banner">
		<div class="container">
			<h2 class="hdng">Yummy <span>Cakes</span> for u</h2>
			<p>Our best cakes make your day special</p>
			<a href="${ctx}/cake/list">SHOP NOW</a>
			<div class="banner-text">			
				<img src="${ctx}/images/2.png" alt=""/>	
			</div>
		</div>
	</div>			
	<!--//banner-->
	<!--gallery-->
	<div class="gallery">
		<div class="container">
			<div class="gallery-grids">
				<div class="col-md-8 gallery-grid glry-one">
					<a href="${ctx}/cake/list"><img src="${ctx}/images/g1.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${ctx }/cake/single">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>	
					</a>
					<div class="galy-info">
						<p>蛋糕1</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$200.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-4 gallery-grid glry-two">
					<a href="${ctx}/cake/list"><img src="${ctx}/images/g2.jpg" class="img-responsive" alt=""/>
						<div class="gallery-info galrr-info-two">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${ctx}/cake/single">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>蛋糕2</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$200.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="${ctx}/images/g3.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${ctx}/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>蛋糕3</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$200.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="${ctx}/images/g4.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${ctx}/ctx}/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>蛋糕4</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$210.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="${ctx}/images/g5.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${ctx}/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>蛋糕5</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$230.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="${ctx}/images/g6.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${ctx}/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>蛋糕6</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$210.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="${ctx}/images/g7.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${ctx}/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>蛋糕7</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$198.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="${ctx}/images/g8.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${ctx}/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>蛋糕8</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$296.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="${ctx}/images/g9.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${ctx}/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>蛋糕9</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$298.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="${ctx}/images/g10.png" class="img-responsive" alt=""/>
						<div class="gallery-info">
							<p><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> view</p>
							<a class="shop" href="${ctx}/single.jsp">SHOP NOW</a>
							<div class="clearfix"> </div>
						</div>
					</a>
					<div class="galy-info">
						<p>蛋糕10</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$198.00</h5>
							</div>
							<div class="rating">
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
								<span>☆</span>
							</div>						
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>	
		</div>
	</div>
	<!--//gallery-->
	<!--subscribe-->
	<div class="subscribe">
		 <div class="container">
			 <h3>Newsletter</h3>
			 <form>
				 <input type="text" class="text" value="Email" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Email';}">
				 <input type="submit" value="Subscribe">
			 </form>
		 </div>
	</div>
	<!--//subscribe-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-2 footer-grid">
					<h4>company</h4>
					<ul>
						<li><a href="products.html">products</a></li>
						<li><a href="#">Work Here</a></li>
						<li><a href="#">Team</a></li>
						<li><a href="#">Happenings</a></li>
						<li><a href="#">Dealer Locator</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>service</h4>
					<ul>
						<li><a href="#">Support</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">Warranty</a></li>
						<li><a href="contact.html">Contact Us</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h4>order & returns</h4>
					<ul>
						<li><a href="#">Order Status</a></li>
						<li><a href="#">Shipping Policy</a></li>
						<li><a href="#">Return Policy</a></li>
						<li><a href="#">Digital Gift Card</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
					<h4>legal</h4>
					<ul>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Terms and Conditions</a></li>
						<li><a href="#">Social Responsibility</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid icons">
					<h4>Connect with Us</h4>
					<ul>
						<li><a href="#"><img src="images/i1.png" alt=""/>Follow us on Facebook</a></li>
						<li><a href="#"><img src="images/i2.png" alt=""/>Follow us on Twitter</a></li>
						<li><a href="#"><img src="images/i3.png" alt=""/>Follow us on Google-plus</a></li>
						<li><a href="#"><img src="images/i4.png" alt=""/>Follow us on Pinterest</a></li>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.17sucai.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
		</div>
	</div>
</body>
</html>