<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�ɷ���Ϣ</title>
	 <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
<link rel="stylesheet" href="images/bootstrap.min.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���нɷ���Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  �·ݣ�<select name='yuefen' id='yuefen' class="form-control2"><option value="">����</option><%int nyf=0;for(nyf=1;nyf<=12;nyf++){%><option value='<%=nyf%>'><%=nyf%></option><%}%></select>  ������<input name="xingming" type="text" id="xingming" class="form-control2"  /> �ɷ����ͣ�<select name='jiaofeileixing' id='jiaofeileixing' class="form-control2"><option value="">����</option><option value="סԺ��">סԺ��</option><option value="��ʳ��">��ʳ��</option><option value="ҩƷ��">ҩƷ��</option></select>
     <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" class="table table-striped table-bordered table-hover">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>�·�</td>    <td bgcolor='#cccccc'>�û���</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>�ɷ�����</td>    <td bgcolor='#cccccc'>�ɷѽ��</td>    <td bgcolor='#cccccc' width='80' align='center'>�Ƿ�֧��</td>    
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    <td width="220" align="center" bgcolor="cccccc">����</td>
  </tr>
 <% 
  	


  	 new CommDAO().delete(request,"jiaofeixinxi"); 
    String url = "jiaofeixinxi_list2.jsp?1=1"; 
    String sql =  "select * from jiaofeixinxi where yonghuming='"+request.getSession().getAttribute("username")+"' ";
	if(request.getParameter("yuefen")=="" ||request.getParameter("yuefen")==null ){}else{sql=sql+" and yuefen = '"+request.getParameter("yuefen")+"'";}if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}if(request.getParameter("jiaofeileixing")=="" ||request.getParameter("jiaofeileixing")==null ){}else{sql=sql+" and jiaofeileixing like '%"+request.getParameter("jiaofeileixing")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yuefen") %></td> <td><%=map.get("yonghuming") %></td> <td><%=map.get("xingming") %></td> <td><%=map.get("jiaofeileixing") %></td> <td><%=map.get("jiaofeijine") %></td>  <td align='center'><%=map.get("iszf")%>  <% if(map.get("iszf").equals("��")){%><a class="btn btn-info btn-small" href="zhifu/index.jsp?id=<%=map.get("id")%>&biao=jiaofeixinxi"><font color='red'>֧��</font></a> <%}%> </td>    
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-warning" href="jiaofeixinxi_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')"> <i class="glyphicon glyphicon-wrench" > </i> ɾ��</a><a class="btn btn-danger btn" href="jiaofeixinxi_updt.jsp?id=<%=map.get("id")%>"> <i class="glyphicon glyphicon-pencil" > </i> �޸�</a>     <a class="btn btn-info btn-small" href="jiaofeixinxi_detail.jsp?id=<%=map.get("id")%>"> <i class="glyphicon glyphicon-random" > </i> ��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

