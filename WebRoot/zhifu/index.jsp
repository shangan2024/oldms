<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML XMLNS:CC><HEAD><TITLE>֧���� - ����֧�� ��ȫ���٣�</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META content=���Ϲ���/����֧��/��ȫ֧��/��ȫ����/�����ȫ/֧��,��ȫ/֧����/��ȫ,֧��/��ȫ������/֧��, 
name=description ���� ����,�տ� ����,ó�� ����ó��.>
<META content=���Ϲ���/����֧��/��ȫ֧��/��ȫ����/�����ȫ/֧��,��ȫ/֧����/��ȫ,֧��/��ȫ������/֧��, name=keywords 
���� ����,�տ� ����,ó�� ����ó��.><LINK href="images/layout.css" 
type=text/css rel=stylesheet>

<SCRIPT language=JavaScript>
<!-- 
  //У�������  -->
function CheckForm()
{
	if (document.alipayment.aliorder.value.length == 0) {
		alert("������ͼ������.");
		document.alipayment.aliorder.focus();
		return false;
	}
	if (document.alipayment.alimoney.value.length == 0) {
		alert("�����븶����.");
		document.alipayment.alimoney.focus();
		return false;
	}
	var reg	= new RegExp(/^\d*\.?\d{0,2}$/);
	if (! reg.test(document.alipayment.alimoney.value))
	{
        alert("����ȷ���븶����");
		document.alipayment.alimoney.focus();
		return false;
	}
	if (Number(document.alipayment.alimoney.value) < 0.01) {
		alert("����������С��0.01.");
		document.alipayment.alimoney.focus();
		return false;
	}
}  

<!-- 
  //����������ʾ -->
function glowit(which){
if (document.all.glowtext[which].filters[0].strength==2)
document.all.glowtext[which].filters[0].strength=1
else
document.all.glowtext[which].filters[0].strength=2
}
function glowit2(which){
if (document.all.glowtext.filters[0].strength==2)
document.all.glowtext.filters[0].strength=1
else
document.all.glowtext.filters[0].strength=2
}
function startglowing(){
if (document.all.glowtext&&glowtext.length){
for (i=0;i<glowtext.length;i++)
eval('setInterval("glowit('+i+')",150)')
}
else if (glowtext)
setInterval("glowit2(0)",150)
}
if (document.all)
window.onload=startglowing


</SCRIPT>
</HEAD>
<style>
<!--
#glowtext{
filter:glow(color=red,strength=2);
width:100%;
}
-->
</style>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=4>
<CENTER>

<TABLE cellSpacing=0 cellPadding=0 width=760 border=0>
  <TBODY>
  <TR>
    <TD class=title>΢�ż�ʱ���ʸ������ͨ��</TD>
  </TR></TBODY>
</TABLE><BR>
<FORM name=alipayment onSubmit="return CheckForm();" action=alipayto.asp 
method=post target="_blank">
<table>
 <tr>
   <td width="740">
     <TABLE cellSpacing=0 cellPadding=0 width=740 border=0>
        <TR>
          <TD colspan="3" align="center"><HR width=600 SIZE=2 color="#999999"></TD>
        </TR>
        <TR>
          <TD class=form-left>֧����ʽ��</TD>
          <TD class=form-star></TD>
          <TD class=form-right>
               <table>
                 <tr>
                   <td><img src="images/weixin.gif" border="0"/></td>
                 </tr>
               </table>          </TD>
        </TR>
         <TR>
          <TD class=form-left></TD>
          <TD class=form-star></TD>
          <TD class=form-right> <img src="images/button_sure.gif" onClick="javascript:location.href='../zhifu.jsp?id=<%=request.getParameter("id")%>&biao=<%=request.getParameter("biao")%>';"></TD>
        </TR>
</TABLE>   </td>
   </tr>
</table>

</FORM>

<TABLE cellSpacing=1 width=760 border=0>
  <TR>
    <TD><FONT class=note-help>�������������򡱰�ť������ʾ���Ѿ����ܡ�΢�ŷ���Э�顱��ͬ�������ҹ������Ʒ�� 
      <BR>
      �������β�����������Ʒ��¼���ϣ��������ҵ�˵���ͽ��ܵĸ��ʽ�����ұ���е���Ʒ��Ϣ��ȷ��¼�����Σ� 
  </FONT>
 </TD>
 </TR>
</TABLE>

<TABLE cellSpacing=0 cellPadding=0 width=760 align=center border=0>
  <TR align=middle>
    <TD class="txt12 lh15"><A href="http://china.alibaba.com/" 
      target=_blank>��Ѷ���¹�˾</A> | ΢�Ű�Ȩ���� 2004-2012</TD>
  </TR>
  <TR align=middle>
    <TD class="txt12 lh15"><IMG alt="֧����ͨ��������Ȩ����ȫ��֤�� " 
      src="images/logo_vbvv.gif" border=0><BR>
    ΢��֧��ͨ��������Ȩ����ȫ 
  ��֤��
    </TD>
  </TR>
</TABLE>
</BODY></HTML>
