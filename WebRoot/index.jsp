<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!doctype html>
<html>
<head>
<title>11���龴��Ժ����ϵͳ</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="qtimages/css/base.css" rel="stylesheet">
<link href="qtimages/css/m.css" rel="stylesheet">
<script src="qtimages/js/jquery-1.8.3.min.js" ></script>
<script src="qtimages/js/comm.js"></script>
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
          <li class="newscurrent">������Ѷ</li>
        </ul>
      </div>
      <div class="newstab">
        <div class="newsitem">
          <div class="newspic">
            <ul>
              <li><a href="/"><img src="qtimages/images/2.jpg"><span>���˲��ͣ������ҵ�С���磡</span></a></li>
              <li><a href="/"><img src="qtimages/images/1.jpg"><span>������վ�����ˣ��ٶȲ���¼��ô�죿��������������ô����</span></a></li>
            </ul>
          </div>
          <ul class="newslist">
            <%
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='վ������' order by id desc ",1,5)){
     %>
		    <li><i></i><a href="gg_detail.jsp?id=<%=map.get("id")%>"><%=Info.ensubStr(map.get("biaoti"),46)%></a>
              <p><%=Info.ensubStr(map.get("zhaiyao"),46)%></p>
            </li>
			   <%
							}
							%>
            
          </ul>
        </div>
    </div>
    	<div class="zhuanti whitebg">
      <h2 class="htitle"><span class="hnav"></span>�����Ƽ�</h2>
      <ul>
	  	  <%
		  	int ihugongxinxi=0;						
    for(HashMap maphugongxinxi:new CommDAO().select("select * from hugongxinxi order by id desc "))
	{
		ihugongxinxi++;
		if(ihugongxinxi<=6)
		{
		  %>
        <li> <i class="ztpic"><a href="hugongxinxidetail.jsp?id=<%=maphugongxinxi.get("id")%>" ><img src="<%=maphugongxinxi.get("zhaopian")%>" ></a></i> <b><%=maphugongxinxi.get("xingming")%></b><a href="hugongxinxidetail.jsp?id=<%=maphugongxinxi.get("id")%>" class="readmore">�鿴��ϸ</a> </li>
       <%
		}
	}
			%>	
      </ul>
    </div>
    
    	
  </div>
  </div>
</article>
<%@ include file="qtdown.jsp"%>
</body>
</html>

