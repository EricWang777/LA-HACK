<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="client.*"%>
<html lang="zh-CN">

	<head>
		<meta name="super-H" content="QQ644531447" />
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
		<link rel="stylesheet" type="text/css" href="reset.css" />
		<link rel="stylesheet" type="text/css" href="index2.css" />
		<link rel="stylesheet" type="text/css" href="SideBar.css">
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="http://www.jq22.com/jquery/jquery-1.7.1.js"></script>
		<script src="unified2.js" type="text/javascript" charset="utf-8"></script>
		<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
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
		
		<script type="text/javascript">
		var w,h,className;
		function getSrceenWH(){
			w = $(window).width();
			h = $(window).height();
			$('#dialogBg').width(w).height(h);
		}

		window.onresize = function(){  
			getSrceenWH();
		}  
		$(window).resize();  

		$(function(){
			getSrceenWH();
			
			//show the pop-up
			$('.box1 a').click(function(){
				className = $(this).attr('class');
				$('#dialogBg').fadeIn(300);
				$('#dialog').removeAttr('class').addClass('animated '+className+'').fadeIn();
			});
			$('.answer button').click(function(){
				className = $(this).attr('class');
				$('#dialogBg1').fadeIn(300);
				$('#dialog1').removeAttr('class').addClass('animated '+className+'').fadeIn();
			});
			//close the pop-up
			$('.claseDialogBtn').click(function(){
				$('#dialogBg').fadeOut(300,function(){
					$('#dialog').addClass('bounceOutUp').fadeOut();
				});
			});
			$('.claseDialogBtn').click(function(){
				$('#dialogBg1').fadeOut(300,function(){
					$('#dialog1').addClass('bounceOutUp').fadeOut();
				});
			});
		});
		</script>
		
		
		<title>hahahaha</title>
	</head>
	<% User currentUser;
		if(true)
		{ currentUser= new User();
		currentUser.firstname="Mingzhong";
		currentUser.lastname="Guo";
		currentUser.setUsername("MingzhongGuo");
		currentUser.setPassword("123456");
		}
		else
		{
			currentUser = UserDatabase.allUsers.get(request.getAttribute("username"));
		}%>
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
						<a class="nav-off" href="#"><%=currentUser.firstname%></a>
					</li>
					
					<li class="box1">
						<a class="nav-on" href="javascript:;" class="bounceIn" >
						<img src="./images/askQ.png" alt="user_icon" width="30" height="30" class="userimage" id="user">
						</a>				
						<a class="nav-off" href="javascript:;" class="bounceIn" class="box">Ask Question</a>
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
			<div class="question">
			 Please tell me about your experience?
			</div>
			<div class="answer">
				<div class="img">
				  <img src="./images/profile_image_default.png" alt="The image" >
				  <span>username</span>
				</div>
				<div class="content">
				  <button>Click and Pay for this answer</button>
				</div>
			</div>
		</div>
		</td></tr>
		<tr><td>
		<div class="questionDiv">
			<div class="question">
			  Some questions are used principally as polite requests, as with "Would you pass the salt?"
			</div>
			<div class="answer">
				<div class="img">
				  <img src="./images/profile_image_default.png" alt="The image" >
				  <span>username</span>
				</div>
				<div class="content">
				  <button>Click and Pay for this answer</button>
				</div>
			</div>
		</div>
		</td></tr>
		<tr><td>
		<div class="questionDiv">
			<div class="question">
			 The principal use of questions is to elicit information from the person being addressed by indicating the information which 
			 the speaker (or writer) desires. However, questions can also be used for a number of other purposes?
			</div>
			<div class="answer">
				<div class="img">
				  <img src="./images/profile_image_default.png" alt="The image" >
				  <span>username</span>
				</div>
				<div class="content">
				  <button>Click and Pay for this answer</button>
				</div>
			</div>
		</div>
		</td></tr>
		<tr><td>
		<div class="questionDiv">
			<div class="question">
			 These interrogative statements serve as launching points for the academic pursuit of new knowledge
			  by directing and delimiting an investigation of a topic, a set of studies, or an entire program of research?
			</div>
			<div class="answer">
				<div class="img">
				  <img src="./images/profile_image_default.png" alt="The image" >
				  <span>username</span>
				</div>
				<div class="content">
				  <button>Click and Pay for this answer</button>
				</div>
			</div>
		</div>
		</td></tr>
		<tr><td>
		<div class="questionDiv">
			<div class="question">
			 Questions have developed a range of uses that go beyond the simple eliciting of information from another party. 
			 Rhetorical questions, for example, are used to make a point, and are not expected to be answered?
			</div>
			<div class="answer">
				<div class="img">
				  <img src="./images/profile_image_default.png" alt="The image" >
				  <span>username</span>
				</div>
				<div class="content">
				  <button>Click and Pay for this answer</button>
				</div>
			</div>
		</div>
		</td></tr>
		
		
		</table>
		</div>
		
		
		<div class="nav-main">
		<div class="nav-box">
		<div class="nav">
  <ul class="nav-ul">
  	<li><a href="#" class="home"><span><%=currentUser.firstname%></span></a></li>
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
    		<li><a href="#"><span>First Name: <%=currentUser.firstname%></span></a></li>
    		<li><a href="#"><span>Last Name: <%=currentUser.lastname%></span></a></li>
    		<li><a href="#"><span>Email: <%=currentUser.email%></span></a></li>
    	</ul>
    </div>
    <div class="nav-slide-o">
    	<ul>
    		<li><a href="#"><span>Balance($):<br/>
    		<img src = "./images/coins.png" width="40" height="40">
    		<%=":    "+currentUser.money%></span></a></li>
    		<li><a href="#"><span><button>Deposit</button><button>Withdraw</button></span></a></li>
    		<li><a href="#"><span>Card Number:<br/>
    		<img src = "./images/credit_card.png" width="40" height="40">
    		<%=":    "+currentUser.bindcardNum%></span></a></li>
    		<%if(currentUser.bindcardNum.equals("0000 0000 0000 0000")) {%>
    		<li><a href="#"><span><button>Bind a Card</button></span></a></li>
    		<%}else{ %>
    		<li><a href="#"><span><button>UnBind Current Card</button></span></a></li>
    		<%} %>
    	</ul>
    </div>
    <div class="nav-slide-o">
    	<ul>
    		<li><a href="#"><span>Asked Questions</span></a></li>
    		<%for(Question q:currentUser.askQuestion)
    		{%>
    		<li><a href="#"><span>q.getContent()</span></a></li>
    		<%} %>
    		<li><a href="#"><span>Answered Questions</span></a></li>
    		<%for(Question q:currentUser.answerQuestion)
    		{%>
    		<li><a href="#"><span>q.getContent()</span></a></li>
    		<%} %>
    		<li><a href="#"><span>Sneaked Questions</span></a></li>
    		<%for(Question q:currentUser.sneakQuestoin)
    		{%>
    		<li><a href="#"><span>q.getContent()</span></a></li>
    		<%} %>
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
	
		<div id="dialogBg"></div>
		<div id="dialog" class="animated">
			<img class="dialogIco" width="50" height="50" src="images/ico.png" alt="" />
			<div class="dialogTop">
				<a href="javascript:;" class="claseDialogBtn">Close</a>
			</div>
			<form action="" method="post" id="editForm">
				<ul class="editInfos">
					<li><label><font color="#ff0000">* </font>Username: <input type="text" name="" placeholder="(ex: Trump)" class="ipt" /></label></li>
					<li><label><font color="#ff0000">* </font>Amount of money willing to pay<input type="text" name="" placeholder="$1000" class="ipt" /></label></li>
					<li><label><font color="#ff0000">* </font>content: <br/><textarea name="content" cols="40" rows="5" id="content"></textarea></label></li>
					<li><input type="submit" value="Ask Question" class="submitBtn" /></li>
				</ul>
			</form>
		</div>
	
		
		<div id="dialogBg1"></div>
		<div id="dialog1" class="animated">
			<img class="dialogIco" width="50" height="50" src="images/credit_card.png" alt="" />
			<div class="dialogTop">
				<a href="javascript:;" class="claseDialogBtn">Close</a>
			</div>
			Are you sure you want to spend 1 dollar to unlock this answer???<br/>
			<button id="popupButton">Yes,I do!</button><button id="popupButton">No!!!</button>
		</div>

	
	</body>

</html>