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
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'��������',550,250) ;
}
</script> 
<%

	String id=request.getParameter("id");
	HashMap mqt = new CommDAO().getmap(id,"hugongxinxi");
	
	
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
		  
           
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%' height=44>���ţ�</td><td width='39%'><%=mqt.get("gonghao")%></td><td  rowspan=7 align=center><a href=<%=mqt.get("zhaopian")%> target=_blank><img src=<%=mqt.get("zhaopian")%> width=228 height=215 border=0></a></td></tr><tr>         <td width='11%' height=44>������</td><td width='39%'><%=mqt.get("xingming")%></td></tr><tr>         <td width='11%' height=44>�Ա�</td><td width='39%'><%=mqt.get("xingbie")%></td></tr><tr>         <td width='11%' height=44>�绰��</td><td width='39%'><%=mqt.get("dianhua")%></td></tr><tr>         <td width='11%' height=44>סַ��</td><td width='39%'><%=mqt.get("zhuzhi")%></td></tr><tr>                  <td width='11%' height=44>ְ��</td><td width='39%'><%=mqt.get("zhiwu")%></td></tr><tr>         <td width='11%' height=44>��ְʱ�䣺</td><td width='39%'><%=mqt.get("ruzhishijian")%></td></tr><tr>                  <td width='11%' height=100  >��ע��</td><td width='39%' colspan=2 height=100 ><%=mqt.get("beizhu")%></td></tr><tr>							 
                                <td colspan="3"><table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">
                                  <tr>
                                    <td width="30" align="center" bgcolor="CCFFFF">���</td>
                                    <td width="471" bgcolor='#CCFFFF'>��������</td>
                                    <td width="88" bgcolor='#CCFFFF'>����</td>
                                    <td width="88" bgcolor='#CCFFFF'>������</td>
                                    <td width="138" align="center" bgcolor="CCFFFF">����ʱ��</td>
                                  </tr>
                                   <% 
							String sql =  "select * from pinglun where xinwenID='"+id+"' and biao='hugongxinxi' ";
							sql+=" order by id desc";
							int i=0;
							 for(HashMap map:new CommDAO().select(sql)){
							 i++;
							 %>
                                  <tr>
                                    <td width="30" align="center" bgcolor='#CCFF99'><%=i%></td>
                                    <td width="471" bgcolor='#CCFF99'><%=map.get("pinglunneirong")%></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pingfen")%></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pinglunren")%></td>
                                    <td width="138" align="center" bgcolor="CCFF99"><%=map.get("addtime")%></td>
                                  </tr>
                                  <%
								  }
								   %>
                                </table></td>
                                </tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=���� class='hsgqiehuanshitu' onClick="javascript:history.back()" /><input type=button name=Submit52 value=��ӡ class='hsgqiehuanshitu' onClick="javascript:window.print()" /> <!--jixaaxnnxiu--><input type=button name=Submit53 value=���� class='hsgqiehuanshitu' onClick="javascript:hsgpinglun('hugongxinxi','<%=id%>')"/></td></tr>
    
  </table>
  
  </div>
          </ul>
        </div>
    </div>
  </div>
  </div>
</article>
<%@ include file="qtdown.jsp"%>
<a class='bshareDiv' href='http://www.bshare.cn/share'>����ť</a><script type='text/javascript' charset='utf-8' src='http://static.bshare.cn/b/buttonLite.js#uuid=&amp;style=3&amp;fs=4&amp;textcolor=#fff&amp;bgcolor=#9C3&amp;text=����'></script>
</body> 
</html>

<!--yoxudixtu-->
