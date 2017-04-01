<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="SideBar.css">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js">
	
	</script>
<title>Home Page</title>
</head>
<div class="nav-main">
<div class="nav-box">
<div class="nav">
  <ul class="nav-ul">
  	<li><a href="#" class="home"><span>Home</span></a></li>
  	<li><a href="#" class="develop"><span>Account</span></a></li>
  	<li><a href="#" class="wechat"><span>Credit</span></a></li>
  	<li><a href="#" class="case"><span>History</span></a></li>
  	<li><a href="#" class="news"><span>Contact us</span></a></li>
  	<li><a href="#" class="contact"><span></span></a></li>
  </ul>
</div>
<div class="nav-slide">
    <div class="nav-slide-o"></div>
    <div class="nav-slide-o">
    	<ul>
    		<li><a href="#"><span>Profile</span></a></li>
    		<li><a href="#"><span></span></a></li>
    	</ul>
    </div>
    <div class="nav-slide-o">
    	<ul>
    		<li><a href="#"><span>微信关注</span></a></li>
    		<li><a href="#"><span>微信关注</span></a></li>
    		<li><a href="#"><span>微信关注</span></a></li>
    		<li><a href="#"><span>微信关注</span></a></li>
    		<li><a href="#"><span>微信关注</span></a></li>
    		<li><a href="#"><span>微信关注</span></a></li>
    		<li><a href="#"><span>微信关注</span></a></li>
    		<li><a href="#"><span>微信关注</span></a></li>
    	</ul>
    </div>
    <div class="nav-slide-o">
    	<ul>
    		<li><a href="#"><span>网站设计</span></a></li>
    		<li><a href="#"><span>网站设计</span></a></li>
    		<li><a href="#"><span>网站设计</span></a></li>
    		<li><a href="#"><span>网站设计</span></a></li>
    		<li><a href="#"><span>网站设计</span></a></li>
    		<li><a href="#"><span>网站设计</span></a></li>
    		<li><a href="#"><span>网站设计</span></a></li>
    		<li><a href="#"><span>网站设计</span></a></li>
    		<li><a href="#"><span>网站设计</span></a></li>
    	</ul>
    </div>
    <div class="nav-slide-o">
    	<ul>
    		<li><a href="#"><span>企业建站</span></a></li>
    		<li><a href="#"><span>企业建站</span></a></li>
    		<li><a href="#"><span>企业建站</span></a></li>
    		<li><a href="#"><span>企业建站</span></a></li>
    		<li><a href="#"><span>企业建站</span></a></li>
    		<li><a href="#"><span>企业建站</span></a></li>
    		<li><a href="#"><span>企业建站</span></a></li>
    		<li><a href="#"><span>企业建站</span></a></li>
    		<li><a href="#"><span>企业建站</span></a></li>
    	</ul>
    </div>
</div>
</div>
</div>

<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(function(){
	var thisTime;
	$('.nav-ul li').mouseleave(function(even){
			thisTime	=	setTimeout(thisMouseOut,1000);
	})

	$('.nav-ul li').mouseenter(function(){
		clearTimeout(thisTime);
		var thisUB	=	$('.nav-ul li').index($(this));
		if($.trim($('.nav-slide-o').eq(thisUB).html()) != "")
		{
			$('.nav-slide').addClass('hover');
			$('.nav-slide-o').hide();
			$('.nav-slide-o').eq(thisUB).show();
		}
		else{
			$('.nav-slide').removeClass('hover');
		}
		
	})
	
	function thisMouseOut(){
		$('.nav-slide').removeClass('hover');
	}
	 
	$('.nav-slide').mouseenter(function(){
		clearTimeout(thisTime);
		$('.nav-slide').addClass('hover');
	})
	$('.nav-slide').mouseleave(function(){
		$('.nav-slide').removeClass('hover');
	})

})
</script>
</body>
</html>