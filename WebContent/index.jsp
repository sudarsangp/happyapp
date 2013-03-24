<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.*, 
deb.youtube.YouTube" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
	YouTube youTube = new YouTube();
	List<String> alinks = youTube.getFunnyVideo("Happy Video");	
	int i = 0;	
	String webUrl ="";
%>
<html>
<head>
<title>Spreading Happiness</title>
<script src="jquery.js"></script>
<script src="happy.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap.css">
<link rel="stylesheet" type="text/css" href="bootstrap-responsive.css">
<style>
video {
	width: 200px;
	height: 112px;
	border: 1px solid black;
}

.video-container {
	display: inline-block;
	text-align: center;
}

p {
	font: 14px Arial;
}
</style>
<!-- <script type="text/javascript">
			function getHappiestVideo() {
				document.getElementById('happy_video').style.visibility="visible";
				//alert('Happy Video');
			}
		</script> -->
<script type="text/javascript">
		$(function() {
		    $("#ione").hide();
		    $("#leftIncr").hide();
		    $("#rightIncr").hide();
		    $("#fbshare").hide();
		});
		
			var frame_count = 0;	 
			
			if(<%=alinks.size()%> > 0){
				function rightIncr_OnClick(){
					if ( frame_count >= 49) {
						frame_count = 0;
					} else {
						frame_count++;
					}
					
						showFrame();
					}
							
			function leftIncr_OnClick(){
				if ( frame_count <= 0) {
					frame_count = 49;
				} else {
					frame_count--;
				}
				showFrame();	
			}
			
			}		
			var video_src = "";
			function showFrame(){
				//alert(frame_count);
				
				switch(frame_count) {
				case 0:
					video_src = "<%=alinks.get(0)%>";
					break;
				case 1:
					video_src = "<%=alinks.get(1)%>";
					break;
				case 2:
					video_src = "<%=alinks.get(2)%>";
					break;
				case 3:
					video_src = "<%=alinks.get(3)%>";
					break;
				case 4:
					video_src = "<%=alinks.get(4)%>";
					break;
				case 5:
					video_src = "<%=alinks.get(5)%>";
					break;	
				case 6:
					video_src = "<%=alinks.get(6)%>";
					break;	
				case 7:
					video_src = "<%=alinks.get(7)%>";
					break;	
				case 8:
					video_src = "<%=alinks.get(8)%>";
					break;	
				case 9:
					video_src = "<%=alinks.get(9)%>";
					break;	
				case 10:
					video_src = "<%=alinks.get(10)%>";
					break;	
				case 11:
					video_src = "<%=alinks.get(11)%>";
					break;
				case 12:
					video_src = "<%=alinks.get(12)%>";
					break;
				case 13:
					video_src = "<%=alinks.get(13)%>";
					break;
				case 14:
					video_src = "<%=alinks.get(14)%>";
					break;
				case 15:
					video_src = "<%=alinks.get(15)%>";
					break;	
				case 16:
					video_src = "<%=alinks.get(16)%>";
					break;	
				case 17:
					video_src = "<%=alinks.get(17)%>";
					break;	
				case 18:
					video_src = "<%=alinks.get(18)%>";
					break;	
				case 19:
					video_src = "<%=alinks.get(19)%>";
					break;		
				case 20:
					video_src = "<%=alinks.get(20)%>";
					break;		
				case 21:
					video_src = "<%=alinks.get(21)%>";
					break;
				case 22:
					video_src = "<%=alinks.get(22)%>";
					break;
				case 23:
					video_src = "<%=alinks.get(23)%>";
					break;
				case 24:
					video_src = "<%=alinks.get(24)%>";
					break;
				case 25:
					video_src = "<%=alinks.get(25)%>";
					break;	
				case 26:
					video_src = "<%=alinks.get(26)%>";
					break;	
				case 27:
					video_src = "<%=alinks.get(27)%>";
					break;	
				case 28:
					video_src = "<%=alinks.get(28)%>";
					break;	
				case 29:
					video_src = "<%=alinks.get(29)%>";
					break;		
				case 30:
					video_src = "<%=alinks.get(30)%>";
					break;		
				case 31:
					video_src = "<%=alinks.get(31)%>";
					break;
				case 32:
					video_src = "<%=alinks.get(32)%>";
					break;
				case 33:
					video_src = "<%=alinks.get(33)%>";
					break;
				case 34:
					video_src = "<%=alinks.get(34)%>";
					break;
				case 35:
					video_src = "<%=alinks.get(35)%>";
					break;	
				case 36:
					video_src = "<%=alinks.get(36)%>";
					break;	
				case 37:
					video_src = "<%=alinks.get(37)%>";
					break;	
				case 38:
					video_src = "<%=alinks.get(38)%>";
					break;	
				case 39:
					video_src = "<%=alinks.get(39)%>";
					break;		
				case 40:
					video_src = "<%=alinks.get(40)%>";
					break;			
				case 41:
					video_src = "<%=alinks.get(41)%>";
					break;
				case 42:
					video_src = "<%=alinks.get(42)%>";
					break;
				case 43:
					video_src = "<%=alinks.get(43)%>";
					break;
				case 44:
					video_src = "<%=alinks.get(44)%>";
					break;
				case 45:
					video_src = "<%=alinks.get(45)%>";
					break;	
				case 46:
					video_src = "<%=alinks.get(46)%>";
					break;	
				case 47:
					video_src = "<%=alinks.get(47)%>";
					break;	
				case 48:
					video_src = "<%=alinks.get(48)%>";
					break;	
				case 49:
					video_src = "<%=alinks.get(49)%>";
					break;		
				default:
					video_src = "<%=alinks.get(0)%>";
					break;
				}
				
     			var iframe = document.getElementById('ione'); 
				iframe.src = video_src;
				document.getElementById("hiddenField").value= video_src;
				<% webUrl = (request.getParameter("hiddenField"));%>
				//webUrl = video_src.substring(0,video_src.lastIndexOf("v/"))+"watch?v="+video_src.substring(video_src.lastIndexOf("/"),video_src.length);
				//System.out.println(webUrl );
				  
			}
		</script>
</head>
<body>
	<div>
		<div id="fs">
			<section class='row-fluid'>
				<section class='span4'>
					<p>
						<img class="img-rounded" src="image.png">
					</p>
				</section>
			</section>

			<button id="leftIncr" onclick="leftIncr_OnClick();">Prev</button>
			<% if(alinks.size() > 0){ %>
			<iframe id="ione" name="ione" width="560px" height="315px"
				src="<%=alinks.get(i)%>" frameborder="0" allowfullscreen></iframe>
			<% } %>
			<button id="rightIncr" onclick="rightIncr_OnClick();">Next</button>
			
		</div>
		
		<div id="fbshare"
			style="position: absolute;">
			<div style="position: absolute;">		 
				<button  style="background: url(facebook-share.png); width: 210px;height: 210px" onclick="window.open('http://www.facebook.com/sharer.php?u=http://www.youtube.com/watch?v=YNrn-7zjmYw&feature=player_embedded&amp;t=Social Sharing - Publish Your Videos to Facebook, Twitter &amp; YouTube | LongTail Video | Home of the JW Player','popup','width=600,height=300,scrollbars=no,resizable=no,toolbar=no,directories=no,location=no,menubar=no,status=no,left=0,top=0'); return false" >				
				<img src="facebook-share.png"  
						height="150px" width="150px" alt="Share" border="0" valign="middle" />
				</button>
			</div>
		</div>
		
		<button id="bone">Happy Video</button>
		</div>
		<!--<div style="position: absolute; middle: 14px; left: 0px; height: 16px; line-height: 16px;"
			align="left">			
		</div> 
		<img id="back" onclick="index.jsp" src="smiley-face.jpg" > Main </img> -->
		
		<!-- <div 
			>

			<div >		 
			<a onclick="window.open('http://www.facebook.com/sharer.php?u=http://www.youtube.com/v/YNrn-7zjmYw&feature=youtube_gdata_player&amp;t=Social Sharing - Publish Your Videos to Facebook, Twitter &amp; YouTube | LongTail Video | Home of the JW Player','popup','width=600,height=300,scrollbars=no,resizable=no,toolbar=no,directories=no,location=no,menubar=no,status=no,left=0,top=0'); return false" href="#">
			<img src="facebook-share.png" ></a>

			</div> -->
	
		</div>
		<form >
			<input type="hidden" id="hiddenField" value="${param.foo}"/>
		</form>
</body>
</html>