<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="/czjf_system/css/base.css" />
        
        <script language="javascript">
            function c()
            {
                if(document.formAdd.teaNum.value=="")
                {
                    alert("请输入教师编号");
                    return false;
                }
                if(document.formAdd.teaRealName.value=="")
                {
                    alert("请输入教师姓名");
                    return false;
                }
                
                document.formAdd.submit();
            }
        
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='/czjf_system/images/allbg.gif'>
			<form action="${pageContext.request.contextPath}/TeachServlet?method=addTeacher" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="/czjf_system/images/wbg.gif" class='title'><span>&nbsp;</span></td>
					    </tr>
					    <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        编号：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="teaNum" size="20"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						              姓名：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="teaRealName" size="20"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        性别：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="radio" name="teaSex" value="男" checked="checked"/>男
						         &nbsp;&nbsp;
						         <input type="radio" name="teaSex" value="女"/>女
						         
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        年龄：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="teaAge" size="20"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        账号：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="loginName" size="20"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       密码：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="loginPw" size="20" value="000000"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="button" value="提交" onclick="c()"/>&nbsp;
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
