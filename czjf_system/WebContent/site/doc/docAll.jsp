<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
  "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link rel="stylesheet" href="/xjzx/css/qiantai.css" type="text/css" charset="utf-8" />
	
	<style type="text/css">
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;}
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
    </style>
	
	<script type="text/javascript">
	 function userReg()
     {
            var url="/xjzx/site/userReg/userReg.jsp";
            var ret = window.showModalDialog(url,"","dialogWidth:800px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
     }
	 function check()
	 {                                                                                         
	     if(document.ThisForm.userName.value=="")
		 {
		 	alert("请输入账号");
			return false;
		 }
		 if(document.ThisForm.userPw.value=="")
		 {
		 	alert("请输入密码");
			return false;
		 }
		 document.getElementById("indicator").style.display="block";
		 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,2,callback);
	  }
	  function callback(data)
	  {
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("账号或密码错误");
		    }
		    if(data=="yes")
		    {   
		        alert("登陆成功");
		        var url="/xjzx/site/default.jsp";
		        window.location.href=url;
		    }
	  }
     function logout()
     {
	    loginService.logout(callback1);
     }
     
     function callback1(data)
	 {
	    alert("退出系统");
	    window.location.reload();
	 }
    </script>
  </head>
  
  <body>
  <div id="wrapper">
     
      <!-- 头部区域start -->
      <div id="header"></div>
      <!-- 头部区域end -->
      
      
      <!-- left__start -->
      <div id="left">
          <%--  
	      	<jsp:include flush="true" page="/site/left.jsp"></jsp:include>
	      --%>
	        <div id="logo">
				<br/><br/><br/><span style="font-size: 25px;margin-left: 5px;">教学辅助系统</span>
			</div>
			
			<div id="nav">
				<ul>
					<li><a href="/xjzx/docAll.action" style="font-family: 微软雅黑;font-size: 12px;">教学资料</a></li>
					<li><a href="/xjzx/shipinAll.action" style="font-family: 微软雅黑;font-size: 12px;">教学视频</a></li>
					<li><a href="/xjzx/shitiAll.action" style="font-family: 微软雅黑;font-size: 12px;">试题下载</a></li>
					<li><a href="/xjzx/liuyanAll.action" style="font-family: 微软雅黑;font-size: 12px;">师生交流</a></li>
				</ul>
			</div>
			
			<div id="news">
			    <%--
				<jsp:include flush="true" page="/site/userlogin/userlogin.jsp"></jsp:include>
				--%>
				<!--login__start  -->
				<TABLE border="0" cellSpacing="3" cellPadding="3" width="178" height="22">
					 <TR>
						 <TD height="22" vAlign="middle" width="100%">
					<!-- <c:if test="${sessionScope.userType !=2}"> -->
								<form action="/xjzx/user?type=userLogin" name="ThisForm" method="post">
								<table cellspacing="0" cellpadding="0" width="98%" align="center" border="0" height="60">
								  <tr>
									<td align="center" colspan="2" height="10"></td>
								  </tr>
								  <tr>
									<td align="right" width="31%" height="30" style="font-size: 11px;">学号：</td>
									<td align="left" width="69%"><input name="userName" type="text" style="width: 100px;"/></td>
								  </tr>
								  <tr>
									<td align="right" height="30" style="font-size: 11px;">密码：</td>
									<td align="left"><input type="password" style="width: 100px;" name="userPw"/></td>
								  </tr>
								  <tr>
									<td align="center" colspan="2" height="3"></td>
								  </tr>
								  <tr>
									<td align="right" height="30" style="font-size: 11px;">&nbsp;</td>
									<td align="left">
										<input type="button" value="登录" onclick="check()" style="border:#ccc 1px solid; background-color:#FFFFFF; font-size:12px;font-family: 微软雅黑;width: 50px;" />
										<input type="reset" value="重置" style="border:#ccc 1px solid; background-color:#FFFFFF; font-size:12px;font-family: 微软雅黑;width: 50px;" />
										<img id="indicator" src="/xjzx/img/loading.gif" style="display:none"/>
									</td>
								  </tr>
								</table>
								</form>
					<!--   </c:if> -->
					<!-- 
							<c:if test="${sessionScope.userType==2}">
									<br/>
													欢迎您：${sessionScope.stu.stuRealname } &nbsp;&nbsp;
									<a href="#" onclick="logout()">安全退出</a> 
									<img id="indicator1" src="/xjzx/images/loading.gif" style="display:none"/>
									<br/><br/><br/>
							</c:if>
					-->								
						 </TD>           
					 </TR>
				 </TABLE>
				<!--login__end  -->
			
				<div class="hr-dots"></div>
				<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
			</div>
			<!-- 
			<div id="news">
				<h2 style="font-family:楷体;font-size: 15px;">联系我们</h2>
				<h3>02/03/07</h3>
				<p>地址：北京市顺义区马坡镇</p>
				<div class="hr-dots"> </div>
				<h3>01/03/07</h3>
				<p>电话：010-5982642/123</p>
				<p class="more"><a href="#">more</a></p>
				<p>传真: +0100-9856-789</p>
			</div>
			<div id="support">
				<p style="display: none">传真: +0100-9856-789</p>
			</div>
			-->
	      
      </div>
      <!-- left__end -->
      
      
      <!-- right__start -->
      <div id="right">
      	  <!-- 111 -->
      	  <h2>教学资料</h2>
	      <div id="welcome">
	        <div>
	           <div class="c1-body">
	               <!-- 
			        <c:forEach items="${requestScope.docList}" var="doc" varStatus="sta">
                        <div class="c1-bline" style="padding:7px 0px;">
	                        <div class="f-left">
	                             <img src="/xjzx/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
	                             <a href="/xjzx/docDetailQian.action?id=${doc.id }">${doc.mingcheng }</a>
	                        </div>
	                        <div class="f-right">${doc.shijian }</div>
	                        <div class="clear"></div>
                        </div>
                    </c:forEach>
                     -->
	                     <div class="c1-bline" style="padding:7px 0px;">
		                        <div class="f-left">
		                             <img src="/xjzx/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
		                             <a href="/xjzx/docDetailQian.action?id=0001">JavaSe中的NIO详细分析</a>
		                        </div>
		                        <div class="f-right">2018-2-3</div>
		                        <div class="clear"></div>
	                      </div>
	                      <div class="c1-bline" style="padding:7px 0px;">
		                        <div class="f-left">
		                             <img src="/xjzx/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
		                             <a href="/xjzx/docDetailQian.action?id=0001">JavaSe中的NIO详细分析</a>
		                        </div>
		                        <div class="f-right">2018-2-3</div>
		                        <div class="clear"></div>
	                      </div>
	                      <div class="c1-bline" style="padding:7px 0px;">
		                        <div class="f-left">
		                             <img src="/xjzx/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
		                             <a href="/xjzx/docDetailQian.action?id=0001">JavaSe中的NIO详细分析</a>
		                        </div>
		                        <div class="f-right">2018-2-3</div>
		                        <div class="clear"></div>
	                      </div>
	                      <div class="c1-bline" style="padding:7px 0px;">
		                        <div class="f-left">
		                             <img src="/xjzx/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
		                             <a href="/xjzx/docDetailQian.action?id=0001">JavaSe中的NIO详细分析</a>
		                        </div>
		                        <div class="f-right">2018-2-3</div>
		                        <div class="clear"></div>
	                      </div>
					<div class="pg-3"></div>		  
			   </div>
	        </div>
	        <!-- <p class="more"><a href="#">more</a></p> -->
	      </div>
	      <!-- 111 -->
      </div>
      <!-- right__end -->
      
      
      <div class="clear"> </div>
      
      
      
      <!-- footer___start -->
      <div id="footer">
	      <div id="copyright">
	        Copyright &copy; 传智播客版权所有&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/xjzx/login.jsp">系统后台登陆</a>
	      </div>
	      <div id="footerline"></div>
      </div>
      <!-- footer___end -->
  </div>
</body>
</html>
