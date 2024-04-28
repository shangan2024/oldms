<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<header id="header" style=" position: fixed; top:0; right: 0; z-index: 993;">
  <div class="navbox">
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <div class="logo"><a href="index.jsp">吉祥敬老院管理系统</a></div>
    <nav>
      <ul id="starlist" style="float:left;">
        <li><a href="index.jsp">首页</a></li>
<li><a href="userreg.jsp">用户注册</a></li>
 
		  	<li><a href="hugongxinxilisttp.jsp">护工信息</a></li> 
           
		  	<li><a href="laorenxinxilist.jsp">老人信息</a></li> 
         
		  	<li><a href="news.jsp?lb=站内新闻">站内新闻</a></li> 
          	<li class="menu"><a href="#">在线留言</a>
          <ul class="sub">
		  	<li><a href="lyb.jsp">在线留言</a></li> <li><a href="lyblist.jsp">查看留言</a></li> 
          </ul>
          <span></span></li><!--yoxulixuyaxn-->
<li><a href="login.jsp">系统后台</a></li>
      </ul>
      <div style="float:left;" class="ww">
	 <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
	  <a style="color:#FF0000; cursor: pointer; margin-right: 5px;" href="userlog.jsp">登录</a><a style="color:#FF0000; cursor: pointer;" href="userreg.jsp">注册</a>
	    <%}else{ %>
			&nbsp;&nbsp;&nbsp;&nbsp;	 <font color="#FF0000"><%=request.getSession().getAttribute("username")%>,[<%=request.getSession().getAttribute("cx")%>]</font>&nbsp; &nbsp;&nbsp;<a style="color:#FF0000; cursor: pointer; margin-right: 5px;" href="main.jsp" class="content-form-signup">后台</a> <a style="color:#FF0000; cursor: pointer; margin-right: 5px;" href="logout.jsp" class="content-form-signup">退出</a>
		      <%} %>
	  </div>
    </nav>
    <div class="searchico"></div>
  </div>
</header>
<div class="searchbox">
  <div class="search">
    <form method="post" action='laorenxinxilist.jsp' name="searchform" id="searchform">
      <input name='beizhu' id="keyboard" class="input_text" value="请输入关键字词" style="color: rgb(153, 153, 153);" onFocus="if(value=='请输入关键字词'){this.style.color='#000';value=''}" onBlur="if(value==''){this.style.color='#999';value='请输入关键字词'}" type="text">
      <input name="Submit" class="input_submit" value="搜索" type="submit">
    </form>
  </div>
  <div class="searchclose"></div>
</div>
