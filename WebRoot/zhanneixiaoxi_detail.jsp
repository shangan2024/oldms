<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>վ����Ϣ��ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"zhanneixiaoxi");
     %>
  վ����Ϣ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%'>��ţ�</td><td width='39%'><%=m.get("bianhao")%></td><td width='11%'>������</td><td width='39%'><%=m.get("xingming")%></td></tr><tr><td width='11%'>�Ա�</td><td width='39%'><%=m.get("xingbie")%></td><td width='11%'>���䣺</td><td width='39%'><%=m.get("nianling")%></td></tr><tr><td width='11%'>������</td><td width='39%'><%=m.get("jiashu")%></td><td width='11%'>���ݣ�</td><td width='39%'><%=m.get("neirong")%></td></tr><tr><td width='11%'>�ظ���</td><td width='39%'><%=m.get("huifu")%></td><td width='11%'>�����ˣ�</td><td width='39%'><%=m.get("faxinren")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



