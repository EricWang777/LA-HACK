<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="data.*"%>
<%@ page import="server.*"%>
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
			$('#popupButton').click(function(){
				$('#dialogBg1').fadeOut(300,function(){
					$('#dialog1').addClass('bounceOutUp').fadeOut();
				});
			});
			$('#popupButton2').click(function(){
				$('#dialogBg1').fadeOut(300,function(){
					$('#dialog1').addClass('bounceOutUp').fadeOut();
				});
			});
			$('.claseDialogBtn').click(function(){
				$('#dialogBg1').fadeOut(300,function(){
					$('#dialog1').addClass('bounceOutUp').fadeOut();
				});
			});
		});
		</script>
		
		
		<title>Home Page</title>
	</head>
	<% User currentUser;
		if(InitializeDB.currentUser == null)
		{ 
			currentUser= new User();
			currentUser.firstname="Mingzhong";
			currentUser.lastname="Guo";
			currentUser.setUsername("MingzhongGuo");
			currentUser.setPassword("123456");
		}
		else
		{
			currentUser = InitializeDB.currentUser;
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
			<div class="question" style="margin-left:10%">
			 To Quentin Tarantino: I am a mediocre director with no big name. 
			 I have made several movies but all of them got dismal box office and bad reputations. 
			 The critics said I "lack vision to become good director". I am really confused right now. 
			 Should I give up my dream? Could you give me some advice? 
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
			<div class="question" style="margin-left:10%">
			  To Gene D.Block: What do you think about the fact that USC surpasses UCLA in the latest US News Standing?
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
			<div class="question" style="margin-left:10%">
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
		
			<div class="block" id="smallContent" style="display:block; margin-left:10%;">
				<span class="question">
				 To Harsh Parmer(emotional expert): I married my best friend and I just admire
				[<a href="javascript:" onclick="document.all.fullContent.style.display=(document.all.fullContent.style.display=='none')?'':'none';document.all.smallContent.style.display=(document.all.smallContent.style.display=='none')?'':'none'" >View All</a>]
				</span>
			</div>
			
			<div class="block" id="fullContent" style="display:none; margin-left:10%; ">
			<span class="question">
				To Harsh Parmer(emotional expert): I married my best friend and I just admire him as a person, but I don't love him. What should I do?
			 [<a href="javascript:" onclick="document.all.fullContent.style.display=(document.all.fullContent.style.display=='none')?'':'none';document.all.smallContent.style.display=(document.all.smallContent.style.display=='none')?'':'none'" >View Back</a>]
			 </span>
			 </div>
			
			<br>
			<div class="answer">
				<div class="img">
				  <img src="./images/profile_image_default.png" alt="The image" >
				  <span>username</span>
				</div>
				
				<div class="block2" id="smallContent2" style="display:block; margin-left:10%;">
			
					<button> Click and Pay for this answer</button>
				
				</div>
				
				<div class="block2" id="fullContent2" style="display:none; margin-left:15%;">
					Love passes through many stages. At first, particularly with 'bad boys' or 'bad girls' it is exciting in the extreme. 
					Hormones rage, passion is almost painful. Ideally every relationship would start that way, but people would not make the decision to live together until it wanes a bit (about six months). 
					Then physical passion usually continues pretty strong for two years (I'm quoting studies) and then that wanes more slowly. 
					Ideally you "loved" the person from the beginning in the sense of great respect for them, appreciation for their good qualities 
					and the value those have to you and, also ideally, you actually "like" the person all the way along in the sense of having fun doing non-sexual things with them, perhaps extending to raising and enjoying kids, but certainly pastimes and more.
					So, the trifecta is 'love, like and in love with' from the beginning, with the personal physical stuff between you playing less and less of a role 
					as time goes on until the two of you find a common, enjoyable amount which could be from zero physical on up to nearly as passionate as the first six months - people vary all the way in between and rarely scale down their interests at exactly the same rate, leading to lots of worry, discord and unhappiness often.
					If there was NO excitement at the beginning (sort of as you seem to describe), that's a lot to put onto the other two - 
					having fun activities and respecting ideal qualities to live with, but no sparks and no memories of any to keep you warm, 
					as many people are left with as the fire fades. One key piece is missing and it is the one that won't grow over time where the others might.
					<a href="javascript:" onclick="document.all.fullContent2.style.display=(document.all.fullContent2.style.display=='none')?'':'none';document.all.smallContent2.style.display=(document.all.smallContent2.style.display=='none')?'':'none'" ></a>			 
				</div>
				
			</div>
		</div>
		</td></tr>
		
		
		<tr><td>
		<div class="questionDiv">
			<div class="question" style="margin-left:10%">
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
		<script>
		function ask()
		{
			var answerer = document.question.answerer.value;
			var price = document.question.price.value;
			var content = document.question.content.value;
			var xhttp = new XMLHttpRequest();
			xhttp.open("GET","AskQuestionServlet?answerer="+answerer+"&price="+price+"&content="+content);
			xhttp.onreadystatechange = function() {
				if(xhttp.readyState == XMLHttpRequest.DONE && xhttp.status ==200)
				{
					var data = JSON.parse(this.responseText);
					if(!data['ask'])
					{
						document.getElementById("error").innerHTML = data['message'];
					}else
					{
						$('#dialogBg').fadeOut(300,function(){
							$('#dialog').addClass('bounceOutUp').fadeOut();
						});
					}
				}
			}
			
			xhttp.send();
			return false;
		}
		</script>
		<div id="dialogBg"></div>
		<div id="dialog" class="animated">
			<img class="dialogIco" width="50" height="50" src="images/ico.png" alt="" />
			<div class="dialogTop">
				<a href="javascript:;" class="claseDialogBtn">Close</a>
			</div>
			<form name="question" method="GET" id="editForm" onsubmit="return ask();">
				<ul class="editInfos">
					<li><label><font color="#ff0000">* </font>username: <input type="text" name="answerer" placeholder="(ex: Trump)" class="ipt" /></label></li>
					<li><label><font color="#ff0000">* </font>Amount of money willing to pay<input type="text" name="price" placeholder="$1000" class="ipt" /></label></li>
					<li><label><font color="#ff0000">* </font>content: <br/><textarea name="content" cols="40" rows="5" id="content"></textarea></label></li>
					<li><input type="submit" value="Ask Question" class="submitBtn"></li>
				</ul>
				<div id="error">
				</div>
			</form>
			
		</div>
		
		
		<div id="dialogBg1"></div>
		<div id="dialog1" class="animated">
			<img class="dialogIco" width="50" height="50" src="images/credit_card.png" alt="" />
			<div class="dialogTop">
				<a href="javascript:;" class="claseDialogBtn">Close</a>
			</div>
			Are you sure you want to spend 1 dollar to unlock this answer???<br/>
			<button id="popupButton" onclick="document.all.fullContent2.style.display=(document.all.fullContent2.style.display=='none')?'':'none';document.all.smallContent2.style.display=(document.all.smallContent2.style.display=='none')?'':'none'">Yes,I do!</button>
			<button id="popupButton2" onclick="document.all.fullContent2.style.display=(document.all.fullContent2.style.display=='none')?'':'none';document.all.fullContent2.style.display=(document.all.fullContent2.style.display=='none')?'':'none'">No!!!</button>
		</div>

	
	</body>

</html>