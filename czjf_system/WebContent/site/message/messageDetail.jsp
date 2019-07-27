<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
  </head>
  
  <body>
 
	<div style="width:784px; margin:0 auto;border:3px solid #C3AD7C;">
	  
	   <div style="width:100%;height:147px;background-image: url('/czjf_system/images/bg.bmp');border:0px solid #C3AD7C"></div>


	   <div style="width:100%; height:200px;border:0px solid green;margin-top:100px">
			   <form action="/czjf_system/MessageServlet?method=XXX" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="/czjf_system/img/wbg.gif" class='title'><span>&nbsp;</span></td>
					    </tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						          信息内容：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        ${message.content}
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						          发布时间：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        ${message.leaveWordTime}
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						          回复内容：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        ${message.replay}
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         回复时间：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        ${message.replayTime}
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td  bgcolor="#FFFFFF" align="right" colspan="2" style="text-align: center">
								<a href="/czjf_system/MessageServlet?method=findAllMessagesWithPage&num=1">返回</a>					        
						    </td>
						</tr>
					 </table>
			</form>
			   
	   </div>
	
	</div>

  </body>
</html>