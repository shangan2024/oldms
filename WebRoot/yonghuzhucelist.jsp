<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!doctype html>
<html>
<head>
<title>�û��б�</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="qtimages/css/base.css" rel="stylesheet">
<link href="qtimages/css/m.css" rel="stylesheet">
<script src="qtimages/js/jquery-1.8.3.min.js" ></script>
<script src="qtimages/js/comm.js"></script>
  <link rel="stylesheet" href="./qtimages/sl_common_form.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body style="padding-top:50px;">
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
<article> 
  <div class="lbox"> 
    <div class="clearblank"></div>
    <div class="tab_box whitebg">
      <div class="tab_buttons">
        <ul>
          <li class="newscurrent">�û��б�</li>
        </ul>
      </div>
      <div class="newstab">
        <div class="newsitem">
          <ul class="newslist2">
		  <div class="content-form">
		  
              <form name="form1" id="form1" method="post" action="">
   ����: �û�����<input name="yonghuming" type="text" id="yonghuming" size="12" /> 
   ������<input name="xingming" type="text" id="xingming" size="12" /> 
   QQ��<input name="QQ" type="text" id="QQ" size="12" /> 
   ���䣺<input name="youxiang" type="text" id="youxiang" size="12" /> 
   �绰��<input name="dianhua" type="text" id="dianhua" size="12" /> 
   ����֤��<input name="shenfenzheng" type="text" id="shenfenzheng" size="15" />
   <input type="submit" name="Submit" value="����" />
</form>
 <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
  <tr>
    <td width="50" align="center" bgcolor="CCFFFF">���</td>
    <td width="100" bgcolor='#CCFFFF'>�û���</td>
   
    <td width="100" bgcolor='#CCFFFF'>����</td>
    <td width="50" bgcolor='#CCFFFF'>�Ա�</td>
    <td width="108" bgcolor='#CCFFFF'>��������</td>
    <td width="100" bgcolor='#CCFFFF'>QQ</td>
    <td width="100" bgcolor='#CCFFFF'>����</td>
    <td width="100" bgcolor='#CCFFFF'>�绰</td>
    <td width="259" bgcolor='#CCFFFF'>����֤</td>
    <td width="88" align="center" bgcolor='#CCFFFF'>ͷ��</td>
    <td width="200" align="center" bgcolor="CCFFFF">����ʱ��</td>
    <td width="50" align="center" bgcolor="CCFFFF">��ϸ</td>
  </tr>
   <% 
   new CommDAO().delete(request,"yonghuzhuce"); 
    String url = "yonghuzhuce_list.jsp?1=1"; 
    String sql =  "select * from yonghuzhuce where 1=1 ";
	if(request.getParameter("yonghuming")=="" ||request.getParameter("yonghuming")==null ){}else{sql=sql+" and yonghuming like '%"+request.getParameter("yonghuming").trim()+"%'";}
	if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming").trim()+"%'";}
	if(request.getParameter("QQ")=="" ||request.getParameter("QQ")==null ){}else{sql=sql+" and QQ like '%"+request.getParameter("QQ").trim()+"%'";}
	if(request.getParameter("youxiang")=="" ||request.getParameter("youxiang")==null ){}else{sql=sql+" and youxiang like '%"+request.getParameter("youxiang").trim()+"%'";}
	if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+request.getParameter("dianhua").trim()+"%'";}
	if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+request.getParameter("shenfenzheng").trim()+"%'";}
    sql+=" order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,10,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
  <tr>
    <td width="50" align="center"><%=i %></td>
    <td><%=map.get("yonghuming") %></td><td><%=map.get("xingming") %></td><td><%=map.get("xingbie") %></td><td><%=map.get("chushengnianyue") %></td><td><%=map.get("QQ") %></td><td><%=map.get("youxiang") %></td><td><%=map.get("dianhua") %></td><td><%=map.get("shenfenzheng") %></td><td><a href='<%=map.get("touxiang") %>' target='_blank'><img src='<%=map.get("touxiang") %>' width=88 height=99 border=0 /></a></td><td width="200" align="center"><%=map.get("addtime") %></td>
   
    <td width="50" align="center"><a href="yonghuzhucedetail.jsp?id=<%=map.get("id")%>">��ϸ</a></td>
  </tr>
  	<%
 
   }
   %>
</table>
<br>
${page.info } 
                   
  
  </div>
          </ul>
        </div>
    </div>
  </div>
  </div>
</article>
<%@ include file="qtdown.jsp"%>
</body>
</html>