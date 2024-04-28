<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=laorenxinxi.xls");
%>
<html>
  <head>
    <title>老人信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>已有老人信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>编号</td>    <td bgcolor='#cccccc'>姓名</td>    <td bgcolor='#E6E6E6' width='40' align='center'>性别</td>    <td bgcolor='#E6E6E6' width='90' align='center'>照片</td>    <td bgcolor='#cccccc'>年龄</td>    <td bgcolor='#E6E6E6' width='65' align='center'>入院时间</td>    <td bgcolor='#cccccc'>健康状况</td>    <td bgcolor='#cccccc'>饮食习惯</td>    <td bgcolor='#cccccc'>家属</td>    <td bgcolor='#cccccc'>联系电话</td>        
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    

  </tr>
  <% 

    String url = "laorenxinxi_list.jsp?1=1"; 
    String sql =  "select * from laorenxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("bianhao") %></td>    <td><%=map.get("xingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("nianling") %></td>    <td><%=map.get("ruyuanshijian") %></td>    <td><%=map.get("jiankangzhuangkuang") %></td>    <td><%=map.get("yinshixiguan") %></td>    <td><%=map.get("jiashu") %></td>    <td><%=map.get("lianxidianhua") %></td>        
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

