<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML XMLNS:CC><HEAD><TITLE>支付宝 - 网上支付 安全快速！</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META content=网上购物/网上支付/安全支付/安全购物/购物，安全/支付,安全/支付宝/安全,支付/安全，购物/支付, 
name=description 在线 付款,收款 网上,贸易 网上贸易.>
<META content=网上购物/网上支付/安全支付/安全购物/购物，安全/支付,安全/支付宝/安全,支付/安全，购物/支付, name=keywords 
在线 付款,收款 网上,贸易 网上贸易.><LINK href="images/layout.css" 
type=text/css rel=stylesheet>

<SCRIPT language=JavaScript>
<!-- 
  //校验输入框  -->
function CheckForm()
{
	if (document.alipayment.aliorder.value.length == 0) {
		alert("请输入图书名称.");
		document.alipayment.aliorder.focus();
		return false;
	}
	if (document.alipayment.alimoney.value.length == 0) {
		alert("请输入付款金额.");
		document.alipayment.alimoney.focus();
		return false;
	}
	var reg	= new RegExp(/^\d*\.?\d{0,2}$/);
	if (! reg.test(document.alipayment.alimoney.value))
	{
        alert("请正确输入付款金额");
		document.alipayment.alimoney.focus();
		return false;
	}
	if (Number(document.alipayment.alimoney.value) < 0.01) {
		alert("付款金额金额最小是0.01.");
		document.alipayment.alimoney.focus();
		return false;
	}
}  

<!-- 
  //控制文字显示 -->
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
    <TD class=title>微信即时到帐付款快速通道</TD>
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
          <TD class=form-left>支付方式：</TD>
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
    <TD><FONT class=note-help>如果您点击“购买”按钮，即表示您已经接受“微信服务协议”，同意向卖家购买此物品。 
      <BR>
      您有责任查阅完整的物品登录资料，包括卖家的说明和接受的付款方式。卖家必须承担物品信息正确登录的责任！ 
  </FONT>
 </TD>
 </TR>
</TABLE>

<TABLE cellSpacing=0 cellPadding=0 width=760 align=center border=0>
  <TR align=middle>
    <TD class="txt12 lh15"><A href="http://china.alibaba.com/" 
      target=_blank>腾讯旗下公司</A> | 微信版权所有 2004-2012</TD>
  </TR>
  <TR align=middle>
    <TD class="txt12 lh15"><IMG alt="支付宝通过“国际权威安全认证” " 
      src="images/logo_vbvv.gif" border=0><BR>
    微信支付通过“国际权威安全 
  认证”
    </TD>
  </TR>
</TABLE>
</BODY></HTML>
