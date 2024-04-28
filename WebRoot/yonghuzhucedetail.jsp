<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!doctype html>
<html>
<head>
<title>用户详细</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="qtimages/css/base.css" rel="stylesheet">
<link href="qtimages/css/m.css" rel="stylesheet">
<script src="qtimages/js/jquery-1.8.3.min.js" ></script>
<script src="qtimages/js/comm.js"></script>
  <link rel="stylesheet" href="./qtimages/sl_common_form.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<%
  String id=request.getParameter("id");
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
          <li class="newscurrent">用户详细</li>
        </ul>
      </div>
      <div class="newstab">
        <div class="newsitem">
          <ul class="newslist2">
		  <div class="content-form">
		  
               <%
    HashMap mqt = new CommDAO().getmap(id,"yonghuzhuce");
     %>
                           <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%' height=44>用户名：</td><td width='39%'><%=mqt.get("yonghuming")%></td><td  rowspan=10 align=center><a href=<%=mqt.get("touxiang")%> target=_blank><img src=<%=mqt.get("touxiang")%> width=228 height=215 border=0></a></td></tr><tr>
         <td width='11%' height=44>密码：</td><td width='39%'>******</td></tr><tr>
         <td width='11%' height=44>姓名：</td><td width='39%'><%=mqt.get("xingming")%></td></tr><tr>
         <td width='11%' height=44>性别：</td><td width='39%'><%=mqt.get("xingbie")%></td></tr><tr>
         
         <td width='11%' height=44>邮箱：</td><td width='39%'><%=mqt.get("youxiang")%></td></tr>
         <tr>
           <td height=44>身份证：</td>
           <td>******</td>
         </tr>
         <tr>
           <td height=44>出生年月：</td>
           <td><%=mqt.get("chushengnianyue")%></td>
         </tr>
         <tr>
           <td height=44>QQ:</td>
           <td><%=mqt.get("QQ")%></td>
         </tr>
         <tr>
           <td height=44>地址：</td>
           <td><%=mqt.get("dizhi")%></td>
         </tr>
         <tr>
         <td width='11%' height=44>手机：</td>
         <td width='39%'><%=mqt.get("dianhua")%></td></tr><tr>
         <td width='11%' height=100  >备注：</td><td width='39%' colspan=2 height=100 ><%=mqt.get("beizhu")%></td></tr>
		 <tr><td colspan=3 align=center height=44><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />
<input type=button name=Submit52 value=打印 onClick="javascript:window.print()" />
</td></tr>
  </table>	
                   
  
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
