﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>



		<div id="navid" class="top">
		   <div class="nav-bd">
			 
			   <ul class="login">
				 <li class="login_no-bg">
					  你好<%=request.getSession().getAttribute("username")%>，欢迎来到音乐网站！
					   <%
					    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
					   %>
					  <a href="userlog.jsp">[登陆]</a><a href="userreg.jsp">[用户注册]</a><a href="duliyinlerenadd.jsp">[音乐人注册]</a>
					   <%
							}
				  else
				  {
				 %>
				 <a href="logout.jsp">[退出]</a><a href="main.jsp">[个人后台]</a>
				 <% } %>
				 </li>
				</ul>    

			   
		   </div>
	</div>
	
	
  <div class="layout bg2 nav ">
    <div class="menu">
     
      <div class="menu_rig">
        <div class="clear"></div>
        <div class="nav">
          <ul class="nav_list">
		  
		   <div class="menu_lef">
      <a href="index.do">
       <div class="qtimages-img">
          <div class="zhuxuewang1" ><img src="qtimages/logo.jpg" width="100" height="99" /></div>
	      <div  class="zhuxuewang"  >音乐网站</div>
	   </div>
      </a>
      </div>
	  
            <li  class="drop-menu-effect"><a href="index.do"><span>首页</span></a></li>
			<li class="drop-menu-effect"><a href="xwtzList.do?lb=网站公告"><span>网站公告</span></a></li>
            <li class="drop-menu-effect"><a><span>留言举报</span></a>
              <ul class="submenu">
                <li><a href="lyb.jsp">我要留言</a></li>
                <li><a href="lybList.do">查看留言</a></li>
              </ul>
            </li>
			<li class="drop-menu-effect"><a href="dlylrList.do"><span>音乐人</span></a></li>
            <li class="drop-menu-effect"><a href="ylxxList.do"><span>音乐信息</span></a></li>
            <li class="drop-menu-effect"><a href="zjList.do"><span>专辑</span></a></li>
            <li class="drop-menu-effect"><a href="login.jsp"><span>后台管理</span></a></li>
             
            
          </ul>
        </div>
        
        
		  <script>
			    $(function () {
			      
			      $(window).scroll(function () {
			        //判断卷去的高度超过topPart的高度
			        //1. 让navBar有固定定位
			        //2. 让mainPart有一个marginTop
			        if($(window).scrollTop() >= $(".top").height() ){
			          $(".nav").addClass("fixed");
			          $(".main").css("marginTop", $(".nav").height() + 10);
//			          $("p").remove(".zhuxuewang");
			          
			        }else {
			          $(".nav").removeClass("fixed");
			          $(".main").css("marginTop", 0);
			         
			          
			        }
			        
			      });
			      
			    });
		</script>
        
        
        <script>
        function dropMenu(obj){
            $(obj).each(function(){
              var theSpan = $(this);
              var theMenu = theSpan.find(".submenu");
              var tarHeight = theMenu.height();
              theMenu.css({height:0,opacity:0});
              
              var t1;
              
              function expand() {
                clearTimeout(t1);
                theSpan.find('a').addClass("selected");
                theMenu.stop().show().animate({height:tarHeight,opacity:1},100);
              }
              
              function collapse() {
                clearTimeout(t1);
                t1 = setTimeout(function(){
                  theSpan.find('a').removeClass("selected");
                  theMenu.stop().animate({height:0,opacity:0},100,function(){
                    $(this).css({display:"none"});
                  });
                }, 150);
              }
              
              theSpan.hover(expand, collapse);
              theMenu.hover(expand, collapse);
            });
          }

        $(document).ready(function(){
          
          dropMenu(".drop-menu-effect");

        });
        </script>
        <div class="lanren-search-form">
        <form method="post" action="news.jsp">
            <div id="search-hd" class="search-hd">
                <div class="search-bg"></div>
                <input name="biaoti" type="text" id="s1" class="search-input" placeholder="搜索">
                <button id="submit" class="btn-search" value="搜索" type="submit"></button>
            </div>
        </form>
        </div>
      </div>
    </div>
  </div> 