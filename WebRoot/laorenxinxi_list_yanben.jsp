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
  <p>����������Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ������<input name="xingming" type="text" id="xingming" class="form-control2"  /> �Ա�<select name='xingbie' id='xingbie' class="form-control2"><option value="">����</option><option value="��">��</option><option value="Ů">Ů</option></select>  ��Ժʱ�䣺<input name="ruyuanshijian1" type="text" id="ruyuanshijian1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />-<input name="ruyuanshijian2" type="text" id="ruyuanshijian2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />  ������<%=Info.getselect("jiashu","yonghuzhuce","yonghuming"," 1=1 ")%>
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='laorenxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F3F3F3" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="30" height="50" align="center" bgcolor="#E6E6E6">���</td>
    <td bgcolor='#cccccc'>���</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#E6E6E6' width='40' align='center'>�Ա�</td>    <td bgcolor='#E6E6E6' width='90' align='center'>��Ƭ</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#E6E6E6' width='65' align='center'>��Ժʱ��</td>    <td bgcolor='#cccccc'>����״��</td>    <td bgcolor='#cccccc'>��ʳϰ��</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>��ϵ�绰</td>        
	
    <td width="138" height="50" align="center" bgcolor="#E6E6E6">���ʱ��</td>
    
    <td width="60" height="50" align="center" bgcolor="#E6E6E6">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"laorenxinxi"); 
    String url = "laorenxinxi_list.jsp?1=1"; 
    String sql =  "select * from laorenxinxi where 1=1";
	if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}if (request.getParameter("ruyuanshijian1")==""  ||request.getParameter("ruyuanshijian1")==null ) {}else{sql=sql+" and ruyuanshijian >= '"+request.getParameter("ruyuanshijian1")+"'";}if (request.getParameter("ruyuanshijian2")==""  ||request.getParameter("ruyuanshijian2")==null ) {}else {sql=sql+" and ruyuanshijian <= '"+request.getParameter("ruyuanshijian2")+"'";}if(request.getParameter("jiashu")=="" ||request.getParameter("jiashu")==null ){}else{sql=sql+" and jiashu like '%"+request.getParameter("jiashu")+"%'";}
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
    <td><%=map.get("bianhao") %></td>    <td><%=map.get("xingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("nianling") %></td>    <td><%=map.get("ruyuanshijian") %></td>    <td><%=map.get("jiankangzhuangkuang") %></td>    <td><%=map.get("yinshixiguan") %></td>    <td><%=map.get("jiashu") %></td>    <td><%=map.get("lianxidianhua") %></td>        
	
    <td width="138" height="50" align="center"><%=map.get("addtime") %></td>
    <td width="60" height="50" align="center"><!--lianjie1--> <a class="btn btn-info btn-small" href="laorenxinxidetail.jsp?id=<%=map.get("id")%>" target="_blank"> <i class="glyphicon glyphicon-random" > </i> ��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

