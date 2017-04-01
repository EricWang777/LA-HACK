<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">

	<head>
		<meta name="super-H" content="QQ644531447" />
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
		<link rel="stylesheet" type="text/css" href="reset.css" />
		<link rel="stylesheet" type="text/css" href="index2.css" />
		<link rel="stylesheet" type="text/css" href="SideBar.css">
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="http://www.jq22.com/jquery/jquery-1.7.1.js"></script>
		<script src="unified2.js" type="text/javascript" charset="utf-8"></script>
		<title>super-H</title>
	</head>

	<body onmousemove="" ontouchstart="">

		<nav id="mainNav" class="navbar navbar-default navbar-fixed-top hc-top-up">
			<div class="container-fluid">
				<a href="javascript:void(0)" class="hc-logobox">
					<img src="images/logo1.png" />
				</a>

				<div class="navbar-right hc-contact p768">

				</div>
				<div id="oiBtn" class="hc-oi p1100">
					<em></em>
				</div>
				
				<div id="search">		
				<form name="SearchForm" method="GET" action="SearchServlet">
				<input style="display:none" name="onPage" value="0">
				<input type="text" placeholder="Search for question ..." name="searchContent" id="search_box"/>
				<input title="search" src="./images/search_icon.png" name="search" type="image" id="search_icon" />
				</form>
				</div>
				
				<ul id="navBox" class="nav navbar-nav navbar-right hc-navbox">
					<li>
						<a class="nav-on" href="#">
						<img src="./images/home.png" alt="user_icon" width="30" height="30" class="userimage" id="user">
						</a>
						<a class="nav-off" href="#">Home Page</a>
					</li>
					<li>
						<a class="nav-on" href="#">
						<img src="./images/user.png" alt="user_icon" width="30" height="30" class="userimage" id="user">
						</a>
						<a class="nav-off" href="#">User Profile</a>
					</li>
					<li>
						<a class="nav-on" href="#">
						<img src="./images/askQ.png" alt="user_icon" width="30" height="30" class="userimage" id="user">
						</a>					
						<a class="nav-off" href="#">Ask Question</a>
					</li>
					<li>
						<a class="nav-on" href="#">
						<img src="./images/notifications.png" alt="user_icon" width="30" height="30" class="userimage" id="user">
						</a>
						<a class="nav-off" href="#">Notification</a>
					</li>
					<li>
						<a class="nav-on" href="#">
						<img src="./images/order.png" alt="user_icon" width="30" height="30" class="userimage" id="user">
						</a>
						<a class="nav-off" href="#">Sort</a>
					</li>
					<li>
						<a class="nav-on" href="login.html">
						<img src="./images/exit.png" alt="user_icon" width="30" height="30" class="userimage" id="user">
						</a>
						<a class="nav-off" href="login.html">Log out</a>
					</li>
				</ul>
			</div>

		</nav>

		<div id="right">
		<table id="questionTable">
		<tr><td>
		<div class="questionDiv">
			<div class="img">
			<img src="./images/profile_image_default.png" alt="The image" width="100" height="100">
			</div>
			<div class="question">
			sadhfajksdhfkjashdfasdjfhaskjdfkasjhdkfjahskdjfhaksdhfjkashdfjkadskfh
			asdfjasdfhkajshdkfjahskdjfhasjdhfkjahskdjfhajk
			</div>
		</div>
		</td></tr>
		<tr><td>
		<div class="questionDiv">
			<div class="img">
			<img src="./images/profile_image_default.png" alt="The image" width="100" height="100">
			</div>
			<div class="question">
			sadhfajksdhfkjashdfasdjfhaskjdfkasjhdkfjahskdjfhaksdhfjkashdfjkadskfh
			asdfjasdfhkajshdkfjahskdjfhasjdhfkjahskdjfhajk
			</div>
		</div>
		</td></tr>
		<tr><td>
		<div class="questionDiv">
			<div class="img">
			<img src="./images/profile_image_default.png" alt="The image" width="100" height="100">
			</div>
			<div class="question">
			sadhfajksdhfkjashdfasdjfhaskjdfkasjhdkfjahskdjfhaksdhfjkashdfjkadskfh
			asdfjasdfhkajshdkfjahskdjfhasjdhfkjahskdjfhajk
			</div>
		</div>
		</td></tr>
		</table>
		</div>
		
		
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
    		<li><a href="#"><span>Content 1</span></a></li>
    		<li><a href="#"><span>Content 2</span></a></li>
    		<li><a href="#"><span>Content 3</span></a></li>
    	</ul>
    </div>
    <div class="nav-slide-o">
    	<ul>
    		<li><a href="#"><span>Content 1</span></a></li>
    		<li><a href="#"><span>Content 2</span></a></li>
    		<li><a href="#"><span>Content 3</span></a></li>
    	</ul>
    </div>
    <div class="nav-slide-o">
    	<ul>
    		<li><a href="#"><span>Content 1™</span></a></li>
    		<li><a href="#"><span>Content 2</span></a></li>
    		<li><a href="#"><span>Content 3</span></a></li>
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