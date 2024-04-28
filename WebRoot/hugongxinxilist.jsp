<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!doctype html>
<html>
<head>
<title>护工信息</title>
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
          <li class="newscurrent">护工信息</li>
        </ul>
      </div>
      <div class="newstab">
        <div class="newsitem">
          <ul class="newslist2">
		  <div class="content-form">
		  
           <link rel="stylesheet" href="images/hsgcommon/divqt.css" type="text/css">
 <form name="form1" id="form1" method="post" action="" style="width:100%">
   搜索:  工号：<input name="gonghao" type="text" id="gonghao" class="form-control2"  />  姓名：<input name="xingming" type="text" id="xingming" class="form-control2"  /> 性别：<select name='xingbie' id='xingbie' class="form-control2"><option value="">所有</option><option value="男">男</option><option value="女">女</option></select>  职务：<input name="zhiwu" type="text" id="zhiwu" class="form-control2"  />  入职时间：<input name="ruzhishijian1" type="text" id="ruzhishijian1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />-<input name="ruzhishijian2" type="text" id="ruzhishijian2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />
   <input type="submit" name="Submit" value="查找" class='hsgqiehuanshitu' />  <input type='button' name='Submit5' value='切换视图'  class='hsgqiehuanshitu' onClick="javascript:location.href='hugongxinxilisttp.jsp';" /> 
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>工号</td>    <td bgcolor='#CCFFFF'>姓名</td>    <td bgcolor='#CCFFFF' width='40' align='center'>性别</td>    <td bgcolor='#CCFFFF'>电话</td>    <td bgcolor='#CCFFFF'>住址</td>    <td bgcolor='#CCFFFF' width='90' align='center'>照片</td>    <td bgcolor='#CCFFFF'>职务</td>    <td bgcolor='#CCFFFF' width='65' align='center'>入职时间</td>        
    
    <td width="30" align="center" bgcolor="CCFFFF">详细</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"hugongxinxi"); 
    String url = "hugongxinxilist.jsp?2=2"; 
    String sql =  "select * from hugongxinxi where 1=1";
	if(request.getParameter("gonghao")=="" ||request.getParameter("gonghao")==null ){}else{sql=sql+" and gonghao like '%"+request.getParameter("gonghao")+"%'";}if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}if(request.getParameter("zhiwu")=="" ||request.getParameter("zhiwu")==null ){}else{sql=sql+" and zhiwu like '%"+request.getParameter("zhiwu")+"%'";}if (request.getParameter("ruzhishijian1")==""  ||request.getParameter("ruzhishijian1")==null ) {}else{sql=sql+" and ruzhishijian >= '"+request.getParameter("ruzhishijian1")+"'";}if (request.getParameter("ruzhishijian2")==""  ||request.getParameter("ruzhishijian2")==null ) {}else {sql=sql+" and ruzhishijian <= '"+request.getParameter("ruzhishijian2")+"'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("gonghao") %></td><td><%=map.get("xingming") %></td><td align='center'><%=map.get("xingbie") %></td><td><%=map.get("dianhua") %></td><td><%=map.get("zhuzhi") %></td><td width='90'><a  href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td><td><%=map.get("zhiwu") %></td><td><%=map.get("ruzhishijian") %></td>
    
    <td width="50" align="center"> <a class="btn btn-info btn-small" href="hugongxinxidetail.jsp?id=<%=map.get("id")%>" >详细</a></td>
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
