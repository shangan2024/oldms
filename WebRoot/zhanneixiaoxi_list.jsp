<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>վ����Ϣ</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
<link rel="stylesheet" href="images/bootstrap.min.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>����վ����Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ��ţ�<input name="bianhao" type="text" id="bianhao" class="form-control2" />  ������<input name="xingming" type="text" id="xingming" class="form-control2" />  �Ա�<input name="xingbie" type="text" id="xingbie" class="form-control2" />  ������<input name="jiashu" type="text" id="jiashu" class="form-control2" />  �����ˣ�<input name="faxinren" type="text" id="faxinren" class="form-control2" />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='zhanneixiaoxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="35" height="50" align="center" bgcolor="#E6E6E6">���</td>
    <td bgcolor='#E6E6E6'>���</td>    <td bgcolor='#E6E6E6'>����</td>    <td bgcolor='#E6E6E6' width='40' align='center'>�Ա�</td>    <td bgcolor='#E6E6E6'>����</td>    <td bgcolor='#E6E6E6'>����</td>            <td bgcolor='#E6E6E6'>������</td>    
	
    <td width="138" height="50" align="center" bgcolor="#E6E6E6">���ʱ��</td>
    
    <td width="260" height="50" align="center" bgcolor="#E6E6E6">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"zhanneixiaoxi"); 
    String url = "zhanneixiaoxi_list.jsp?1=1"; 
    String sql =  "select * from zhanneixiaoxi where 1=1";
	if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";}if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}if(request.getParameter("jiashu")=="" ||request.getParameter("jiashu")==null ){}else{sql=sql+" and jiashu like '%"+request.getParameter("jiashu")+"%'";}if(request.getParameter("faxinren")=="" ||request.getParameter("faxinren")==null ){}else{sql=sql+" and faxinren like '%"+request.getParameter("faxinren")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" height="50" align="center"><%=i %></td>
    <td><%=map.get("bianhao") %></td>    <td><%=map.get("xingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td><%=map.get("nianling") %></td>    <td><%=map.get("jiashu") %></td>            <td><%=map.get("faxinren") %></td>    
	
    <td width="138" height="50" align="center"><%=map.get("addtime") %></td>
    <td width="220" height="50" align="center"><a class="btn btn-danger btn" href="zhanneixiaoxi_updt.jsp?id=<%=map.get("id")%>"> <i class="glyphicon glyphicon-pencil" > </i> �޸�</a>  <a class="btn btn-warning" href="zhanneixiaoxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')"> <i class="glyphicon glyphicon-wrench" > </i> ɾ��</a> <a class="btn btn-info btn-small" href="zhanneixiaoxi_detail.jsp?id=<%=map.get("id")%>"> <i class="glyphicon glyphicon-random" > </i> ��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

