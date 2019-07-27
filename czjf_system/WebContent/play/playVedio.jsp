<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html> <!-- 当前支持html5 -->

<html>
  <head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
  </head>
  
  <body>
 
	<div style="width:784px; margin:0 auto;border:3px solid #C3AD7C;">
	   <div style="width:100%;height:147px;background-image: url('/czjf_system/images/bg.bmp');border:0px solid #C3AD7C"></div>
	   <div style="width:100%; height:100%; margin-top:0px;border:0px solid green;padding:1px">
		<video width="100%" height="100%" controls>
		<!-- 在html5中，video支持播放  -->
		  <%--
		  <source src="${pageContext.request.contextPath}/upload/${attachMent}" type="video/mp4"/>
		   --%>
		   <source src="${pageContext.request.contextPath}/upload/${vedio.vedioAttachment}" type="video/mp4"/>
		</video>
		</div>
	</div>

  </body>
</html>