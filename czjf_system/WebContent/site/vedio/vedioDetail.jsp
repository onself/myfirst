<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link rel="stylesheet" href="/czjf_system/css/qiantai.css" type="text/css" charset="utf-8" />
	
	<style type="text/css">
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;}
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
    </style>
	
	<script type="text/javascript" src="/czjf_system/js/public.js"></script>
	
	<script type="text/javascript">
        function down1(path,oldName)
        {
            //var url="/czjf_system/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
            var url="/czjf_system/VedioServlet?method=downloadVedio&vedioAttachment="+path+"&vedioOldName="+oldName;
            /* url=encodeURI(url); 
            url=encodeURI(url); */ 
            window.open(url,"_self");
        }
        
        function vedioBofang(attachMent)
        {
              var url="/czjf_system/bofang/bofang.jsp";
              /**
              var url="/czjf_system/VedioServlet?method=playVedio&attachMent="+attachMent;
              var n="_self";
              var w="700px";
              var h="600px";
              var s="resizable:no;help:no;status:no;scroll:yes";
	          openWin(url,n,w,h,s);
        	  **/
        }
    </script>
  </head>
  
  <body>
  <div id="wrapper">
      <div id="header"></div>
      <div id="left">
	      <jsp:include flush="true" page="/site/left.jsp"></jsp:include>
      </div>
      <div id="right">
      	  <!-- 111 -->
      	  <h2>教学视频</h2>
	      <div id="welcome">
	        <div>
	           <div class="c1-body">
                   <table width="100%" border="0">
					    <tr>
					       <td align="center">${vedio.vedioName}<hr/></td>
					    </tr>
					    <tr>
					        <td align="center" style="word-break:break-all;">视频介绍：
					        		${vedio.vedioPro}
					         <hr/>
					        </td>
					    </tr>
					    <tr>
					       <td align="center">
			                    <a href="${pageContext.request.contextPath}/VideoServlet?method=downloadVedio&id=${vedio.vedioId}" style="font-size: 13px;color: red">${vedio.vedioName}</a>
					            &nbsp;&nbsp;&nbsp;
					            <a href="${pageContext.request.contextPath}/VideoServlet?method=playVedioById&id=${vedio.vedioId}"  class="pn-loperator" style="color: red">播放</a>
					             
					            <hr/>
					       </td>
					    </tr>
					    <tr>
					       <td align="center">发布时间:${vedio.uploadTime}<hr/></td>
					    </tr>
					</table>
		       </div>
	        </div>
	        <!-- <p class="more"><a href="#">more</a></p> -->
	      </div>
	      <!-- 111 -->
      </div>
      <div class="clear"> </div>
      <div id="footer">
	      <div id="copyright">
	        Copyright &copy; 2013 Company Name All right reserved&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/czjf_system/login.jsp">系统后台登陆</a>
	      </div>
	      <div id="footerline"></div>
      </div>
  </div>
</body>
</html>
