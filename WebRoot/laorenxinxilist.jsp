<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!doctype html>
<html>
<head>
<title>������Ϣ</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="qtimages/css/base.css" rel="stylesheet">
<link href="qtimages/css/m.css" rel="stylesheet">
<script src="qtimages/js/jquery-1.8.3.min.js" ></script>
<script src="qtimages/js/comm.js"></script>
  <link rel="stylesheet" href="./qtimages/sl_common_form.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>

<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<%

%>

<body style="padding-top:50px;">
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
<article> 
  <div class="lbox"> 
    <div class="clearblank"></div>
    <div class="tab_box whitebg">
      <div class="tab_buttons">
        <ul>
          <li class="newscurrent">������Ϣ</li>
        </ul>
      </div>
      <div class="newstab">
        <div class="newsitem">
          <ul class="newslist2">
		  <div class="content-form">
		  
           <link rel="stylesheet" href="images/hsgcommon/divqt.css" type="text/css">
 <form name="form1" id="form1" method="post" action="" style="width:100%">
   ����:  ������<input name="xingming" type="text" id="xingming" class="form-control2"  /> �Ա�<select name='xingbie' id='xingbie' class="form-control2"><option value="">����</option><option value="��">��</option><option value="Ů">Ů</option></select>  ������<%=Info.getselect("jiashu","yonghuzhuce","yonghuming"," 1=1 ")%>
   <input type="submit" name="Submit" value="����" class='hsgqiehuanshitu' />   
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align="center"  bgcolor='#CCFFFF'>���</td>
    <td  align="center" bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF' width='40' align='center'>�Ա�</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>��Ƭ</td>
    <td align="center"  bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>��Ժʱ��</td>
    <td align="center"  bgcolor='#CCFFFF'>����״��</td>
    <td align="center"  bgcolor='#CCFFFF'>��ʳϰ��</td>
    <td align="center"  bgcolor='#CCFFFF'>����</td>
    <td align="center"  bgcolor='#CCFFFF'>��ϵ�绰</td>
    
    
    
    <td width="30" align="center" bgcolor="CCFFFF">��ϸ</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"laorenxinxi"); 
    String url = "laorenxinxilist.jsp?2=2"; 
    
    String sql =  "select * from laorenxinxi where 1=1";
	
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}
if (request.getParameter("ruyuanshijian1")==""  ||request.getParameter("ruyuanshijian1")==null ) {}else{sql=sql+" and ruyuanshijian >= '"+request.getParameter("ruyuanshijian1")+"'";}
if (request.getParameter("ruyuanshijian2")==""  ||request.getParameter("ruyuanshijian2")==null ) {}else {sql=sql+" and ruyuanshijian <= '"+request.getParameter("ruyuanshijian2")+"'";}
if(request.getParameter("jiashu")=="" ||request.getParameter("jiashu")==null ){}else{sql=sql+" and jiashu like '%"+request.getParameter("jiashu")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td align="center" ><%=map.get("bianhao") %></td>
    <td align="center" ><%=map.get("xingming") %></td>
    <td align='center'><%=map.get("xingbie") %></td>
    <td width='90'><a  href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>
    <td align="center" ><%=map.get("nianling") %></td>
    <td align="center" ><%=map.get("ruyuanshijian") %></td>
    <td align="center" ><%=map.get("jiankangzhuangkuang") %></td>
    <td align="center" ><%=map.get("yinshixiguan") %></td>
    <td align="center" ><%=map.get("jiashu") %></td>
    <td align="center" ><%=map.get("lianxidianhua") %></td>
    
    <td width="50" align="center"> <a class="btn btn-info btn-small" href="laorenxinxidetail.jsp?id=<%=map.get("id")%>" >��ϸ</a></td>
  </tr>
  	<%
  }
   %>
</table><br>

  
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

<!--yoxudixtu-->
