<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!doctype html>
<html>
<head>
<title>护工信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="qtimages/css/base.css" rel="stylesheet">
<link href="qtimages/css/m.css" rel="stylesheet">
<script src="qtimages/js/jquery-1.8.3.min.js" ></script>
<script src="qtimages/js/comm.js"></script>
  <link rel="stylesheet" href="./qtimages/sl_common_form.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<%

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
          <li class="newscurrent">护工信息</li>
        </ul>
      </div>
      <div class="newstab">
        <div class="newsitem">
          <ul class="newslist2">
		  <div class="content-form">
		  
           <link rel="stylesheet" href="images/hsgcommon/divqt.css" type="text/css">
<form name="form1" id="form1" method="post" action="" style="width:100%">
   搜索:  工号：<input name="gonghao" type="text" id="gonghao" class="form-control2"  />  姓名：<input name="xingming" type="text" id="xingming" class="form-control2"  /> 性别：<select name='xingbie' id='xingbie' class="form-control2"><option value="">所有</option><option value="男">男</option><option value="女">女</option></select>  职务：<input name="zhiwu" type="text" id="zhiwu" class="form-control2"  />  入职时间：<input name="ruzhishijian1" type="text" id="ruzhishijian1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />-<input name="ruzhishijian2" type="text" id="ruzhishijian2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" class="form-control2" />
     <input type="submit" name="Submit" value="查找" class='hsgqiehuanshitu' /> <input type="button" name="Submit5" value="切换视图"  class='hsgqiehuanshitu' onClick="javascript:location.href='hugongxinxilist.jsp';" />
</form>
						<table width="100%" height="12%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                           <% 
  	


  	 new CommDAO().delete(request,"hugongxinxi"); 
    String url = "hugongxinxilisttp.jsp?1=1"; 
    String sql =  "select * from hugongxinxi where 1=1";
	if(request.getParameter("gonghao")=="" ||request.getParameter("gonghao")==null ){}else{sql=sql+" and gonghao like '%"+request.getParameter("gonghao")+"%'";}if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}if(request.getParameter("zhiwu")=="" ||request.getParameter("zhiwu")==null ){}else{sql=sql+" and zhiwu like '%"+request.getParameter("zhiwu")+"%'";}if (request.getParameter("ruzhishijian1")==""  ||request.getParameter("ruzhishijian1")==null ) {}else{sql=sql+" and ruzhishijian >= '"+request.getParameter("ruzhishijian1")+"'";}if (request.getParameter("ruzhishijian2")==""  ||request.getParameter("ruzhishijian2")==null ) {}else {sql=sql+" and ruzhishijian <= '"+request.getParameter("ruzhishijian2")+"'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
                           <td height="316" align="center"><table  height="285" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td height="250" align="center"><a href="hugongxinxidetail.jsp?id=<%=map.get("id")%>"><img src="<%=map.get("zhaopian")%>" width="210" height="250" border="0" style="border-radius: 18px;" /></a></td>
                                </tr>
                                <tr>
                                  <td height="26" align="center"><%=map.get("xingming")%></td>
                                </tr>
                            </table></td>
                            <%
								if (i==4)
								{
									i=0;
									out.print("</tr><tr>");
								}
				  	}
					
				  %>
                          </tr>
                        </table>
						
${page.info }
  
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

<!--yoxudixtu-->
