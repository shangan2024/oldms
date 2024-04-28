<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<div class="banbox" style="width:100%;">
        <div class="banner">
          <div id="banner" class="fader">
		 <%
				int bhti=0;		
				int xxbbt=0;				
    for(HashMap map:new CommDAO().select("select shouyetupian from xinwentongzhi where leibie='±ä»ÃÍ¼'  order by id desc ")){
	bhti++;
	if(bhti<=5)
	{
     %>
            <li class="slide" ><a href="#"><img src="<%=map.get("shouyetupian")%>"></a></li>
           <%
	  }
	  }
	  %>
            <div class="fader_controls">
              <div class="page prev" data-target="prev"></div>
              <div class="page next" data-target="next"></div>
              <ul class="pager_list"></ul>
            </div>
          </div>
        </div>
      </div>