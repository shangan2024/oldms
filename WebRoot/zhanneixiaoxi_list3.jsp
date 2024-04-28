<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>站内消息</title>
	 <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
<link rel="stylesheet" href="images/bootstrap.min.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有站内消息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  编号：<input name="bianhao" type="text" id="bianhao" class="form-control2"  />  姓名：<input name="xingming" type="text" id="xingming" class="form-control2"  />  性别：<input name="xingbie" type="text" id="xingbie" class="form-control2"  />  家属：<input name="jiashu" type="text" id="jiashu" class="form-control2"  />  发信人：<input name="faxinren" type="text" id="faxinren" class="form-control2"  />
     <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>编号</td>
    <td bgcolor='#cccccc'>姓名</td>
    <td bgcolor='#cccccc' width='40' align='center'>性别</td>
    <td bgcolor='#cccccc'>年龄</td>
    <td bgcolor='#cccccc'>家属</td>
     <td bgcolor='#cccccc'>内容</td>
     <td bgcolor='#cccccc'>回复</td>
    <td bgcolor='#cccccc'>发信人</td>
    
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    <td width="220" align="center" bgcolor="cccccc">操作</td>
  </tr>
 <% 
  	


  	 new CommDAO().delete(request,"zhanneixiaoxi"); 
    String url = "zhanneixiaoxi_list3.jsp?1=1"; 
    String sql =  "select * from zhanneixiaoxi where jiashu='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}
if(request.getParameter("jiashu")=="" ||request.getParameter("jiashu")==null ){}else{sql=sql+" and jiashu like '%"+request.getParameter("jiashu")+"%'";}
if(request.getParameter("faxinren")=="" ||request.getParameter("faxinren")==null ){}else{sql=sql+" and faxinren like '%"+request.getParameter("faxinren")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("bianhao") %></td>
 <td><%=map.get("xingming") %></td>
 <td><%=map.get("xingbie") %></td>
 <td><%=map.get("nianling") %></td>
 <td><%=map.get("jiashu") %></td>
  <td><%=map.get("neirong") %></td>
  <td><%=map.get("huifu") %></td>
 <td><%=map.get("faxinren") %></td>
 
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center">
    <a class="btn btn-danger btn" href="zhanneixiaoxi_updtlb.jsp?id=<%=map.get("id")%>"> <i class="glyphicon glyphicon-pencil" > </i> 回复</a>  
    <a class="btn btn-warning" href="zhanneixiaoxi_list3.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')"> <i class="glyphicon glyphicon-wrench" > </i> 删除</a>
       <a class="btn btn-info btn-small" href="zhanneixiaoxi_detail.jsp?id=<%=map.get("id")%>"> <i class="glyphicon glyphicon-random" > </i> 详细</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

