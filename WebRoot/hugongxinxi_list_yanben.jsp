<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������Ϣ</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
<link rel="stylesheet" href="images/bootstrap.min.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���л�����Ϣ�б���</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ���ţ�<input name="gonghao" type="text" id="gonghao" class="form-control2"  />  ������<input name="xingming" type="text" id="xingming" class="form-control2"  /> �Ա�<select name='xingbie' id='xingbie' class="form-control2"><option value="">����</option><option value="��">��</option><option value="Ů">Ů</option></select>  ְ��<input name="zhiwu" type="text" id="zhiwu" class="form-control2"  />  ��ְʱ�䣺<input name="ruzhishijian1" type="text" id="ruzhishijian1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />-<input name="ruzhishijian2" type="text" id="ruzhishijian2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='hugongxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="30" height="50" align="center" bgcolor="#E6E6E6">���</td>
    <td bgcolor='#cccccc'>����</td>
	<td width="90" align="center" bgcolor="#E6E6E6">���۹���</td>
    <td width="138" height="50" align="center" bgcolor="#E6E6E6">����ʱ��</td>
    
    <td width="60" height="50" align="center" bgcolor="#E6E6E6">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"hugongxinxi"); 
    String url = "hugongxinxi_list.jsp?1=1"; 
    String sql =  "select * from hugongxinxi where 1=1";
	
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
    <td><%=map.get("gonghao") %></td>
	<td width="90" align="center"><a class="btn btn-info btn-small" href="pinglun_list.jsp?id=<%=map.get("id")%>&biao=hugongxinxi">���۹���</a></td>
    <td width="138" height="50" align="center"><%=map.get("addtime") %></td>
    <td width="60" height="50" align="center"><!--lianjie1--> <a class="btn btn-info btn-small" href="hugongxinxidetail.jsp?id=<%=map.get("id")%>" target="_blank"> <i class="glyphicon glyphicon-random" > </i> ��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>
