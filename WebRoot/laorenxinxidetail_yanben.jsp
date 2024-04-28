<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!doctype html>
<html>
<head>
<title>老人信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="qtimages/css/base.css" rel="stylesheet">
<link href="qtimages/css/m.css" rel="stylesheet">
<script src="qtimages/js/jquery-1.8.3.min.js" ></script>
<script src="qtimages/js/comm.js"></script>
  <link rel="stylesheet" href="./qtimages/sl_common_form.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'在线评论',550,250) ;
}
</script> 
<%

	String id=request.getParameter("id");
	HashMap mqt = new CommDAO().getmap(id,"laorenxinxi");
	
	
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
          <li class="newscurrent">老人信息</li>
        </ul>
      </div>
      <div class="newstab">
        <div class="newsitem">
          <ul class="newslist2">
		  <div class="content-form">
		  
           
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%' height=44>编号：</td><td width='39%'><%=mqt.get("bianhao")%></td><td  rowspan=9 align=center><a href=<%=mqt.get("zhaopian")%> target=_blank><img src=<%=mqt.get("zhaopian")%> width=228 height=215 border=0></a></td></tr><tr>         <td width='11%' height=44>姓名：</td><td width='39%'><%=mqt.get("xingming")%></td></tr><tr>         <td width='11%' height=44>性别：</td><td width='39%'><%=mqt.get("xingbie")%></td></tr><tr>                  <td width='11%' height=44>年龄：</td><td width='39%'><%=mqt.get("nianling")%></td></tr><tr>         <td width='11%' height=44>入院时间：</td><td width='39%'><%=mqt.get("ruyuanshijian")%></td></tr><tr>         <td width='11%' height=44>健康状况：</td><td width='39%'><%=mqt.get("jiankangzhuangkuang")%></td></tr><tr>         <td width='11%' height=44>饮食习惯：</td><td width='39%'><%=mqt.get("yinshixiguan")%></td></tr><tr>         <td width='11%' height=44>家属：</td><td width='39%'><%=mqt.get("jiashu")%></td></tr><tr>         <td width='11%' height=44>联系电话：</td><td width='39%'><%=mqt.get("lianxidianhua")%></td></tr><tr>                  <td width='11%' height=100  >备注：</td><td width='39%' colspan=2 height=100 ><%=mqt.get("beizhu")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 class='hsgqiehuanshitu' onClick="javascript:history.back()" /><input type=button name=Submit52 value=打印 class='hsgqiehuanshitu' onClick="javascript:window.print()" /> <!--jixaaxnnxiu--></td></tr>
    
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

<!--yoxudixtu-->
