<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!doctype html>
<html>
<head>
<title>11吉祥敬老院管理系统</title>
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
          <li class="newscurrent">新闻资讯</li>
        </ul>
      </div>
      <div class="newstab">
        <div class="newsitem">
          <div class="newspic">
            <ul>
              <li><a href="/"><img src="qtimages/images/2.jpg"><span>个人博客，属于我的小世界！</span></a></li>
              <li><a href="/"><img src="qtimages/images/1.jpg"><span>个人网站做好了，百度不收录怎么办？来，看看他们怎么做的</span></a></li>
            </ul>
          </div>
          <ul class="newslist">
            <%
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='站内新闻' order by id desc ",1,5)){
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
      <h2 class="htitle"><span class="hnav"></span>护工推荐</h2>
      <ul>
	  	  <%
		  	int ihugongxinxi=0;						
    for(HashMap maphugongxinxi:new CommDAO().select("select * from hugongxinxi order by id desc "))
	{
		ihugongxinxi++;
		if(ihugongxinxi<=6)
		{
		  %>
        <li> <i class="ztpic"><a href="hugongxinxidetail.jsp?id=<%=maphugongxinxi.get("id")%>" ><img src="<%=maphugongxinxi.get("zhaopian")%>" ></a></i> <b><%=maphugongxinxi.get("xingming")%></b><a href="hugongxinxidetail.jsp?id=<%=maphugongxinxi.get("id")%>" class="readmore">查看详细</a> </li>
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

