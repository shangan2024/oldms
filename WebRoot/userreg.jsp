<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!doctype html>
<html>
<head>
<title>�û�ע��</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="qtimages/css/base.css" rel="stylesheet">
<link href="qtimages/css/m.css" rel="stylesheet">
<script src="qtimages/js/jquery-1.8.3.min.js" ></script>
<script src="qtimages/js/comm.js"></script>
  <link rel="stylesheet" href="./qtimages/sl_common_form.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
	 <% 
HashMap ext = new HashMap(); 
ext.put("issh","��"); 
new CommDAO().insert(request,response,"yonghuzhuce",ext,true,false,"index.jsp"); 
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
          <li class="newscurrent">�û�ע��</li>
        </ul>
      </div>
      <div class="newstab">
        <div class="newsitem">
          <ul class="newslist2">
		  <div class="content-form">
		  
              <form  action="userreg.jsp?f=f"  method="post" name="f1"  onsubmit="return checkform();">
					<table width="98%" height="927" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#58AC22" style="border-collapse:collapse" class="newsline">
                         
                            <tr>
                              <td width="15%" align="center">�û�����</td>
                              <td colspan="2" align="left"><input name='yonghuming' type='text' id='yonghuming' value='' onblur='checkform()'  class="user" style="width:200px;" /><label id='clabelyonghuming' />
                              &nbsp;*</td>
                            </tr>
                            <tr>
                              <td align="center">���룺</td>
                              <td width="27%" align="left"><input name='mima' type='password' id='mima' value='' onblur='checkform()' class="password" /><label id='clabelmima' />
                                &nbsp;* 
                              </td>
                              <td width="58%" align="left">ȷ�����룺
                              <input name='mima2' type='password' id='mima2' value='' onblur='checkform()' class="password" >  <label id='clabelmima2' /> </td>
                            </tr>
                            <tr>
                              <td align="center">������</td>
                              <td colspan="2" align="left"><input name='xingming' type='text' id='xingming' value='' onblur='checkform()' class="user"  style="width:200px;"  /><label id='clabelxingming' />
                              &nbsp;*</td>
                            </tr>
                            <tr>
                              <td align="center">�Ա�</td>
                              <td colspan="2" align="left"><select name='xingbie' id='xingbie' class="xingbie">
                                  <option value="��">��</option>
                                  <option value="Ů">Ů</option>
                              </select></td>
                            </tr>
                            <tr>
                              <td align="center">�������£�</td>
                              <td colspan="2" align="left"><input name='chushengnianyue' type='text' id='chushengnianyue' value='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})"  class="user" style="width:160px;" /></td>
                            </tr>
                            <tr>
                              <td align="center">QQ��</td>
                              <td colspan="2" align="left"><input name='QQ' type='text' id='QQ' value='' onblur='checkform()' class="user" style="width:200px;" /> <label id='clabelQQ' /></td>
                            </tr>
                            <tr>
                              <td align="center">���䣺</td>
                              <td colspan="2" align="left"><input name='youxiang' type='text' id='youxiang' value='' onblur='checkform()' class="user" style="width:200px;" /> <label id='clabelyouxiang' /></td>
                            </tr>
                            <tr>
                              <td align="center">�ֻ���</td>
                              <td colspan="2" align="left"><input name='dianhua' type='text' id='dianhua' value='' onblur='checkform()' class="user" style="width:200px;" /> <label id='clabeldianhua' /></td>
                            </tr>
                            <tr>
                              <td align="center">���֤��</td>
                              <td colspan="2" align="left"><input name='shenfenzheng' type='text' id='shenfenzheng' value='' onblur='checkform()' class="user" /> <label id='clabelshenfenzheng' /> </td>
                            </tr>
                            <tr>
                              <td align="center">ͷ��</td>
                              <td colspan="2" align="left"><input name='touxiang' type='text' id='touxiang' size='50' value='' class="user" />
                                &nbsp;
                              <input name="button" type='button' onClick="up('touxiang')" value='�ϴ�' class="content-form-signup" /></td>
                            </tr>
                            <tr>
                              <td align="center">��ַ��</td>
                              <td colspan="2" align="left"><input name='dizhi' type='text' id='dizhi' value='' size='50' class="user" /></td>
                            </tr>
                            <tr>
                              <td align="center">��ע��</td>
                              <td colspan="2" align="left"><textarea name='beizhu' cols='50' rows='5' id='beizhu' class="user" ></textarea></td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td colspan="2" align="left"><input type="submit" name="Submit5" value="�ύ" onClick="return checkform();" class="content-form-signup" />
                              <input type="reset" name="Submit22" value="����" class="content-form-signup" /></td>
                            </tr>
							
        </table>
				   </form>	
                   
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
<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script type="text/javascript" src="js/popup.js"></script>
<script language=javascript src='js/ajax.js'></script>
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<script language=javascript >  
 function checkform(){  
var yonghumingobj = document.getElementById("yonghuming");  
if(yonghumingobj.value==""){  
document.getElementById("clabelyonghuming").innerHTML="&nbsp;&nbsp;<font color=red>�������û���</font>";  
return false;  
}else{
document.getElementById("clabelyonghuming").innerHTML="  ";  
}  
  
var yonghumingobj = document.getElementById("yonghuming");  
if(yonghumingobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=yonghuzhuce&col=yonghuming&value="+yonghumingobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelyonghuming").innerHTML="&nbsp;&nbsp;<font color=red>�û����Ѵ���</font>";  
return false;
}else{document.getElementById("clabelyonghuming").innerHTML="  ";  
}  
}  
var mimaobj = document.getElementById("mima");  
if(mimaobj.value==""){  
document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>";  
return false;  
}else{
document.getElementById("clabelmima").innerHTML="  ";  
}  

var mima2obj = document.getElementById("mima2");  
if(mima2obj.value==""){  
document.getElementById("clabelmima2").innerHTML="&nbsp;&nbsp;<font color=red>���ٴ���������</font>";  
return false;  
}else{
document.getElementById("clabelmima2").innerHTML="  ";  
}

if(mima2obj.value!=mimaobj.value){  
document.getElementById("clabelmima2").innerHTML="&nbsp;&nbsp;<font color=red>�����������벻һ��</font>";  
return false;  
}else{
document.getElementById("clabelmima2").innerHTML="  ";  
}
 
  
var xingmingobj = document.getElementById("xingming");  
if(xingmingobj.value==""){  
document.getElementById("clabelxingming").innerHTML="&nbsp;&nbsp;<font color=red>����������</font>";  
return false;  
}else{
document.getElementById("clabelxingming").innerHTML="  ";  
}  


var QQobj = document.getElementById("QQ");  
if(QQobj.value!=""){  
if(QQobj.value.length>12||isNaN(QQobj.value)){ 
document.getElementById("clabelQQ").innerHTML="&nbsp;&nbsp;<font color=red>��ϵQQ����Ϊ12λ��������</font>";  
return false;
}else{  
document.getElementById("clabelQQ").innerHTML="";  
}  
}  

var youxiangobj = document.getElementById("youxiang");  
if(youxiangobj.value!=""){  
if(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/.test(youxiangobj.value))
{ 
document.getElementById("clabelyouxiang").innerHTML="";  
}else{  
document.getElementById("clabelyouxiang").innerHTML="&nbsp;&nbsp;<font color=red>���������ʽ</font>";  
return false;
}  
}  
  
var dianhuaobj = document.getElementById("dianhua");  
if(dianhuaobj.value!=""){  
if(/^1[3|4|5|6|7|8|9][0-9]\d{4,8}$/.test(dianhuaobj.value) ||  /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/.test(dianhuaobj.value))
{ 
document.getElementById("clabeldianhua").innerHTML="";  
}else{  
document.getElementById("clabeldianhua").innerHTML="&nbsp;&nbsp;<font color=red>�����ֻ�(11λ)��绰(7��8λ��)��ʽ</font>";  
return false;
}  
}

var shenfenzhengobj = document.getElementById("shenfenzheng");  
if(shenfenzhengobj.value!=""){  
if(/^\d{15}$|^\d{18}$|^\d{17}[xX]$/.test(shenfenzhengobj.value))
{ 
document.getElementById("clabelshenfenzheng").innerHTML="";  
}else{  
document.getElementById("clabelshenfenzheng").innerHTML="&nbsp;&nbsp;<font color=red>�������֤��ʽ</font>";  
return false;
}  
}  
return true;   
}   
popheight=1150;
</script>  
