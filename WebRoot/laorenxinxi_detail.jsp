<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>老人信息详细</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"laorenxinxi");
     %>
  老人信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%' height=44>编号：</td><td width='39%'><%=m.get("bianhao")%></td><td  rowspan=9 align=center><a href=<%=m.get("zhaopian")%> target=_blank><img src=<%=m.get("zhaopian")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>姓名：</td><td width='39%'><%=m.get("xingming")%></td></tr><tr><td width='11%' height=44>性别：</td><td width='39%'><%=m.get("xingbie")%></td></tr><tr><td width='11%' height=44>年龄：</td><td width='39%'><%=m.get("nianling")%></td></tr><tr><td width='11%' height=44>入院时间：</td><td width='39%'><%=m.get("ruyuanshijian")%></td></tr><tr><td width='11%' height=44>健康状况：</td><td width='39%'><%=m.get("jiankangzhuangkuang")%></td></tr><tr><td width='11%' height=44>饮食习惯：</td><td width='39%'><%=m.get("yinshixiguan")%></td></tr><tr><td width='11%' height=44>家属：</td><td width='39%'><%=m.get("jiashu")%></td></tr><tr><td width='11%' height=44>联系电话：</td><td width='39%'><%=m.get("lianxidianhua")%></td></tr><tr><td width='11%' height=100  >备注：</td><td width='39%' colspan=2 height=100 ><%=m.get("beizhu")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



