<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>缴费信息</title>
	
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
  
 

 HashMap mssdq = new CommDAO().getmaps("yonghuming",(String)request.getSession().getAttribute("username"),"yonghuzhuce");
 String yonghuming="";  	String xingming="";  	
 yonghuming=(String)mssdq.get("yonghuming");  	xingming=(String)mssdq.get("xingming");  	
   %>
<script language="javascript">

function gow()
{
	document.location.href="jiaofeixinxi_add.jsp?id=<%=id%>";
}

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){




ext.put("iszf","否");







new CommDAO().insert(request,response,"jiaofeixinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="jiaofeixinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加缴费信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td>月份：</td><td><select name='yuefen' id='yuefen' class="form-control2"><%int nyf=0;for(nyf=1;nyf<=12;nyf++){%><option value='<%=nyf%>'><%=nyf%></option><%}%></select></td></tr>		<tr><td  width="200">用户名：</td><td><input name='yonghuming' type='text' id='yonghuming' onblur='' class="form-control" value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr><script language="javascript">document.form1.yonghuming.value='<%=yonghuming%>';document.form1.yonghuming.setAttribute("readOnly",'true');</script>		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' class="form-control" /></td></tr><script language="javascript">document.form1.xingming.value='<%=xingming%>';document.form1.xingming.setAttribute("readOnly",'true');</script>		 
		<tr><td  width="200">缴费类型：</td><td><input name='jiaofeileixing' type='text' id='jiaofeileixing' value='住院费' onblur='checkform()' class="form-control" readonly="readonly" />&nbsp;<label id='clabeljiaofeileixing' /></td></tr>
		
		<tr><td  width="200">缴费金额：</td><td><input name='jiaofeijine' type='text' id='jiaofeijine' value='2000' onblur='checkform()' class="form-control" readonly="readonly" />&nbsp;<label id='clabeljiaofeijine' />必需数字型</td></tr>		<tr><td  width="200">备注：</td><td><textarea name='beizhu'  id='beizhu' onblur='' class="form-control" style="width:600px;height:80px;" ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var jiaofeijineobj = document.getElementById("jiaofeijine"); if(jiaofeijineobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(jiaofeijineobj.value)){document.getElementById("clabeljiaofeijine").innerHTML=""; }else{document.getElementById("clabeljiaofeijine").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
