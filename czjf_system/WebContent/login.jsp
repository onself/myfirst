<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
  "http://www.w3.org/TR/html4/loose.dtd">
<html>  
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<STYLE type=text/css>
		BODY{TEXT-ALIGN: center; PADDING-BOTTOM: 0px; 
		     BACKGROUND-COLOR: #ddeef2; MARGIN: 0px; 
		     PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px}
		A:link {COLOR: #000000; TEXT-DECORATION: none;}
		A:visited {COLOR: #000000; TEXT-DECORATION: none;}
		A:hover {COLOR: #ff0000; TEXT-DECORATION: underline;}
		A:active {TEXT-DECORATION: none}
		.input {BORDER-BOTTOM: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; 
		        LINE-HEIGHT: 20px; WIDTH: 182px; HEIGHT: 20px;
		        BORDER-TOP: #ccc 1px solid; BORDER-RIGHT: #ccc 1px solid}
		.input1 {
			BORDER-BOTTOM: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; 
			LINE-HEIGHT: 20px; WIDTH: 120px; HEIGHT: 20px;
			BORDER-TOP: #ccc 1px solid; BORDER-RIGHT: #ccc 1px solid
		}
	</STYLE>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>   
	<script language="javascript">
		function check1()
		{                                                                                         
		     if(document.ThisForm.userName.value=="")
			 {
			 	alert("请输入用户名");
				document.ThisForm.userName.focus();
				return false;
			 }
			 if(document.ThisForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.ThisForm.userPw.focus();
				return false;
			 }
			 if(document.ThisForm.userType.value=="-1")
			 {
			 	alert("请选择登陆身份");
				document.ThisForm.userType.focus();
				return false;
			 }
			 
			 
			 
			 if(document.ThisForm.userType.value=="0"){
				 
				 document.getElementById("fm").action="${pageContext.request.contextPath}/AdminServlet?method=adminLogin";
			     document.ThisForm.submit();
			 }
			 if(document.ThisForm.userType.value=="1"){
				 
				 document.getElementById("fm").action="${pageContext.request.contextPath}/TeachServlet?method=teachLogin";
			     document.ThisForm.submit();
			 }
		}
    </script>
  </head>
  
  <BODY>
      <DIV style="MARGIN:0px auto;
      			  WIDTH:936px;
      			  margin-top:180px;
      			  font-family:微软雅黑;
      			  font-size:33px;">
                          教学辅助系统
      </DIV>
      <DIV style="BACKGROUND-COLOR:#278296;margin-top:20px;">
	      <DIV style="MARGIN:0px auto;WIDTH:936px">
		      <DIV style="BACKGROUND: url(/${pageContext.request.contextPath}/images/body_05.jpg) no-repeat; HEIGHT: 155px">
			      <DIV style="TEXT-ALIGN:left;WIDTH:360px;FLOAT:right;HEIGHT:200px;_height: 95px;">
				      <form id="fm" action="${pageContext.request.contextPath}/UserServlet?method=userLogin" name="ThisForm" method="post">
				      <TABLE border="0" cellSpacing="0" cellPadding="0" width="100%">
				          <TR>
					          <TD style="HEIGHT:18px"><span id="msg" style="color:red;font-size:15px">${msg}</span></TD>
				          </TR>
				          <TR>
					          <TD style="HEIGHT: 30px">
					              <span style="font-family: 微软雅黑;font-size: 13px;">账号：</span>
					              <INPUT type="text" name="userName" id="userName" style="width: 110px;">
					          </TD>
				          </TR>
				          <TR>
					          <TD style="HEIGHT: 30px">
					              <span style="font-family: 微软雅黑;font-size: 13px;"> 密码：</span>
					              <INPUT type="password" name="userPw" id="userPw" style="width:110px;">
					          </TD>
				          </TR>
				          <TR>
					          <TD style="HEIGHT: 50px">
					              <span style="font-family: 微软雅黑;font-size: 13px;"> 类型：</span>
					              <select class="INPUT_text" name="userType" style="height:20px;width:115px;">
									<option value="0">管理员</option>
						            <option value="1">老师</option>	
								  </select>
					              <input type="button" value="登陆" style="width: 80px;" onclick='check1()'>
					              <img id="indicator" src="/${pageContext.request.contextPath}/images/loading.gif" style="display:none"/>
					          </TD>
				          </TR>   
					  </TABLE>
					  </form>
					  
					  <a href="/czjf_system/site/index.jsp">返回主页面</a>
			      </DIV>
		      </DIV>
	      </DIV>
      </DIV>
  </BOY>
</html>