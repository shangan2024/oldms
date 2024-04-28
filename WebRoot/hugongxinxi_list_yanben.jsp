<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>护工信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
<link rel="stylesheet" href="images/bootstrap.min.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有护工信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  工号：<input name="gonghao" type="text" id="gonghao" class="form-control2"  />  姓名：<input name="xingming" type="text" id="xingming" class="form-control2"  /> 性别：<select name='xingbie' id='xingbie' class="form-control2"><option value="">所有</option><option value="男">男</option><option value="女">女</option></select>  职务：<input name="zhiwu" type="text" id="zhiwu" class="form-control2"  />  入职时间：<input name="ruzhishijian1" type="text" id="ruzhishijian1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />-<input name="ruzhishijian2" type="text" id="ruzhishijian2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='hugongxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="30" height="50" align="center" bgcolor="#E6E6E6">序号</td>
    <td bgcolor='#cccccc'>工号</td>    <td bgcolor='#cccccc'>姓名</td>    <td bgcolor='#E6E6E6' width='40' align='center'>性别</td>    <td bgcolor='#cccccc'>电话</td>    <td bgcolor='#cccccc'>住址</td>    <td bgcolor='#E6E6E6' width='90' align='center'>照片</td>    <td bgcolor='#cccccc'>职务</td>    <td bgcolor='#E6E6E6' width='65' align='center'>入职时间</td>        
	<td width="90" align="center" bgcolor="#E6E6E6">评论管理</td>
    <td width="138" height="50" align="center" bgcolor="#E6E6E6">添加时间</td>
    
    <td width="60" height="50" align="center" bgcolor="#E6E6E6">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"hugongxinxi"); 
    String url = "hugongxinxi_list.jsp?1=1"; 
    String sql =  "select * from hugongxinxi where 1=1";
	if(request.getParameter("gonghao")=="" ||request.getParameter("gonghao")==null ){}else{sql=sql+" and gonghao like '%"+request.getParameter("gonghao")+"%'";}if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}if(request.getParameter("zhiwu")=="" ||request.getParameter("zhiwu")==null ){}else{sql=sql+" and zhiwu like '%"+request.getParameter("zhiwu")+"%'";}if (request.getParameter("ruzhishijian1")==""  ||request.getParameter("ruzhishijian1")==null ) {}else{sql=sql+" and ruzhishijian >= '"+request.getParameter("ruzhishijian1")+"'";}if (request.getParameter("ruzhishijian2")==""  ||request.getParameter("ruzhishijian2")==null ) {}else {sql=sql+" and ruzhishijian <= '"+request.getParameter("ruzhishijian2")+"'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr <%
  	if((i % 2)==0)
	{
		out.print("bgcolor='#F0F0F0'");
	}
	else
	{
		out.print("bgcolor='#FFFFFF'");
	}
	
	if((i % 2)==0)
	{
		%> onmouseover="this.style.backgroundColor='#F9DFEB'" onmouseout="this.style.backgroundColor='#F0F0F0'" <%
	}
	else
	{
		%> onmouseover="this.style.backgroundColor='#F9DFEB'" onmouseout="this.style.backgroundColor='#FFFFFF'" <%
	}
	
  %>>
    <td width="30" height="50" align="center"><%=i %></td>
    <td><%=map.get("gonghao") %></td>    <td><%=map.get("xingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td><%=map.get("dianhua") %></td>    <td><%=map.get("zhuzhi") %></td>    <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("zhiwu") %></td>    <td><%=map.get("ruzhishijian") %></td>        
	<td width="90" align="center"><a class="btn btn-info btn-small" href="pinglun_list.jsp?id=<%=map.get("id")%>&biao=hugongxinxi">评论管理</a></td>
    <td width="138" height="50" align="center"><%=map.get("addtime") %></td>
    <td width="60" height="50" align="center"><!--lianjie1--> <a class="btn btn-info btn-small" href="hugongxinxidetail.jsp?id=<%=map.get("id")%>" target="_blank"> <i class="glyphicon glyphicon-random" > </i> 详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

