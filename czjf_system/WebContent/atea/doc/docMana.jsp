<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="/czjf_system/css/base.css" />
		
		<script language="JavaScript" src="/czjf_system/js/public.js" type="text/javascript"></script>
        <script language="javascript">
           function docAdd()
           {
              var url="/czjf_system/atea/doc/docAdd.jsp";
              window.location.href=url;
           }
           function down1(fujianPath,fujianYuashiMing)
           {
               var url="/czjf_system/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
		       url=encodeURI(url); 
               url=encodeURI(url); 
               window.open(url,"_self");
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='/czjf_system/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="13" background="/czjf_system/images/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="4%">序号</td>
					<td width="20%">资料名称</td>
					<td width="20%">附件</td>
					<td width="10%">操作</td>
		        </tr>
		        
		        	
		        <%--
				<s:iterator value="#request.docList" id="doc" status="ss">
					<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						<td bgcolor="#FFFFFF" align="center">
							<s:property value="#ss.index+1"/>
						</td>
						<td bgcolor="#FFFFFF" align="center">
							<s:property value="#doc.mingcheng"/>
						</td>
						<td bgcolor="#FFFFFF" align="center">
							<s:property value="#doc.fujianYuanshiming"/>
							&nbsp;&nbsp;&nbsp;
							<a href="#" onclick="down1('<s:property value="#doc.fujian"/>','<s:property value="#doc.fujianYuanshiming"/>')" style="font-size: 10px;color: red">down</a>
						</td>
						<td bgcolor="#FFFFFF" align="center">
							<a class="pn-loperator" href="/czjf_system/docDel.action?id=<s:property value="#doc.id"/>">删除</a>
						</td>
					</tr>
				</s:iterator>
				--%>
				
				
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						<td bgcolor="#FFFFFF" align="center">XXX</td>
						<td bgcolor="#FFFFFF" align="center">XXX</td>
						<td bgcolor="#FFFFFF" align="center">
							XXXXX
							&nbsp;&nbsp;&nbsp;
							<a href="#" onclick="down1('222','222')" style="font-size: 10px;color: red">down</a>
						</td>
						<td bgcolor="#FFFFFF" align="center">
						    <%--
							<a class="pn-loperator" href="/czjf_system/docDel.action?id=<s:property value="#doc.id"/>">删除</a>
							 --%>
							<a class="pn-loperator" href="/czjf_system/docDel.action?id=001">删除</a>
						</td>
				 </tr>
				 
				 
				 <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						<td bgcolor="#FFFFFF" align="center">XXX</td>
						<td bgcolor="#FFFFFF" align="center">XXX</td>
						<td bgcolor="#FFFFFF" align="center">
							XXXXX
							&nbsp;&nbsp;&nbsp;
							<a href="#" onclick="down1('222','222')" style="font-size: 10px;color: red">down</a>
						</td>
						<td bgcolor="#FFFFFF" align="center">
						    <%--
							<a class="pn-loperator" href="/czjf_system/docDel.action?id=<s:property value="#doc.id"/>">删除</a>
							 --%>
							<a class="pn-loperator" href="/czjf_system/docDel.action?id=001">删除</a>
						</td>
				 </tr>
				 
				 <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						<td bgcolor="#FFFFFF" align="center">XXX</td>
						<td bgcolor="#FFFFFF" align="center">XXX</td>
						<td bgcolor="#FFFFFF" align="center">
							XXXXX
							&nbsp;&nbsp;&nbsp;
							<a href="#" onclick="down1('222','222')" style="font-size: 10px;color: red">down</a>
						</td>
						<td bgcolor="#FFFFFF" align="center">
						    <%--
							<a class="pn-loperator" href="/czjf_system/docDel.action?id=<s:property value="#doc.id"/>">删除</a>
							 --%>
							<a class="pn-loperator" href="/czjf_system/docDel.action?id=001">删除</a>
						</td>
				 </tr>
				 
				 <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						<td bgcolor="#FFFFFF" align="center">XXX</td>
						<td bgcolor="#FFFFFF" align="center">XXX</td>
						<td bgcolor="#FFFFFF" align="center">
							XXXXX
							&nbsp;&nbsp;&nbsp;
							<a href="#" onclick="down1('222','222')" style="font-size: 10px;color: red">down</a>
						</td>
						<td bgcolor="#FFFFFF" align="center">
						    <%--
							<a class="pn-loperator" href="/czjf_system/docDel.action?id=<s:property value="#doc.id"/>">删除</a>
							 --%>
							<a class="pn-loperator" href="/czjf_system/docDel.action?id=001">删除</a>
						</td>
				 </tr>
				 
				 <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						<td bgcolor="#FFFFFF" align="center">XXX</td>
						<td bgcolor="#FFFFFF" align="center">XXX</td>
						<td bgcolor="#FFFFFF" align="center">
							XXXXX
							&nbsp;&nbsp;&nbsp;
							<a href="#" onclick="down1('222','222')" style="font-size: 10px;color: red">down</a>
						</td>
						<td bgcolor="#FFFFFF" align="center">
						    <%--
							<a class="pn-loperator" href="/czjf_system/docDel.action?id=<s:property value="#doc.id"/>">删除</a>
							 --%>
							<a class="pn-loperator" href="/czjf_system/docDel.action?id=001">删除</a>
						</td>
				 </tr>
				 
				 
				
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 8px;">
			  <tr>
			    <td>
			      <input type="button" value="添加资料" style="width: 120px;" onclick="docAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
