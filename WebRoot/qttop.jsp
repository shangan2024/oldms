<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<header id="header" style=" position: fixed; top:0; right: 0; z-index: 993;">
  <div class="navbox">
    <h2 id="mnavh"><span class="navicon"></span></h2>
    <div class="logo"><a href="index.jsp">���龴��Ժ����ϵͳ</a></div>
    <nav>
      <ul id="starlist" style="float:left;">
        <li><a href="index.jsp">��ҳ</a></li>
<li><a href="userreg.jsp">�û�ע��</a></li>
 
		  	<li><a href="hugongxinxilisttp.jsp">������Ϣ</a></li> 
           
		  	<li><a href="laorenxinxilist.jsp">������Ϣ</a></li> 
         
		  	<li><a href="news.jsp?lb=վ������">վ������</a></li> 
          	<li class="menu"><a href="#">��������</a>
          <ul class="sub">
		  	<li><a href="lyb.jsp">��������</a></li> <li><a href="lyblist.jsp">�鿴����</a></li> 
          </ul>
          <span></span></li><!--yoxulixuyaxn-->
<li><a href="login.jsp">ϵͳ��̨</a></li>
      </ul>
      <div style="float:left;" class="ww">
	 <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
	  <a style="color:#FF0000; cursor: pointer; margin-right: 5px;" href="userlog.jsp">��¼</a><a style="color:#FF0000; cursor: pointer;" href="userreg.jsp">ע��</a>
	    <%}else{ %>
			&nbsp;&nbsp;&nbsp;&nbsp;	 <font color="#FF0000"><%=request.getSession().getAttribute("username")%>,[<%=request.getSession().getAttribute("cx")%>]</font>&nbsp; &nbsp;&nbsp;<a style="color:#FF0000; cursor: pointer; margin-right: 5px;" href="main.jsp" class="content-form-signup">��̨</a> <a style="color:#FF0000; cursor: pointer; margin-right: 5px;" href="logout.jsp" class="content-form-signup">�˳�</a>
		      <%} %>
	  </div>
    </nav>
    <div class="searchico"></div>
  </div>
</header>
<div class="searchbox">
  <div class="search">
    <form method="post" action='laorenxinxilist.jsp' name="searchform" id="searchform">
      <input name='beizhu' id="keyboard" class="input_text" value="������ؼ��ִ�" style="color: rgb(153, 153, 153);" onFocus="if(value=='������ؼ��ִ�'){this.style.color='#000';value=''}" onBlur="if(value==''){this.style.color='#999';value='������ؼ��ִ�'}" type="text">
      <input name="Submit" class="input_submit" value="����" type="submit">
    </form>
  </div>
  <div class="searchclose"></div>
</div>
