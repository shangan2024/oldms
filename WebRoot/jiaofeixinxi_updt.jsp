<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�ɷ���Ϣ</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>
<script language="javascript">

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
	}
}
</script>

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"jiaofeixinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"jiaofeixinxi"); 

%>
  <form  action="jiaofeixinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸Ľɷ���Ϣ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>�·ݣ�</td><td><select name='yuefen' id='yuefen' class="form-control2"><%int nyf=0;for(nyf=1;nyf<=12;nyf++){%><option value='<%=nyf%>'><%=nyf%></option><%}%></select></td></tr><script language="javascript">document.form1.yuefen.value='<%=mmm.get("yuefen")%>';</script>     <tr><td>�û�����</td><td><input name='yonghuming' type='text' id='yonghuming' value='<%= mmm.get("yonghuming")%>' class="form-control" /></td></tr>     <tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' class="form-control" /></td></tr>     <tr><td>�ɷ����ͣ�</td><td><select name='jiaofeileixing' id='jiaofeileixing' class="form-control2"><option value="סԺ��">סԺ��</option><option value="��ʳ��">��ʳ��</option><option value="ҩƷ��">ҩƷ��</option></select></td></tr><script language="javascript">document.form1.jiaofeileixing.value='<%=mmm.get("jiaofeileixing")%>';</script>     <tr><td>�ɷѽ�</td><td><input name='jiaofeijine' type='text' id='jiaofeijine' value='<%= mmm.get("jiaofeijine")%>' class="form-control" /></td></tr>     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="����" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


