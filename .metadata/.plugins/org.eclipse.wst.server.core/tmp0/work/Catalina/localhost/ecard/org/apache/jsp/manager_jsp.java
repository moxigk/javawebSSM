/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2020-02-15 04:27:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.apache.jasper.tagplugins.jstl.core.ForEach;

public final class manager_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write(" ");
 
String path=request.getContextPath();
String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
pageContext.setAttribute("basePath", basePath);

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t\t<meta charset=\"utf-8\">\r\n");
      out.write("\t\t<!--声明文档兼容模式，表示使用IE浏览器的最新模式-->\r\n");
      out.write("\t\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("\t\t<!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->\r\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("\t\t<title>ecard</title>\r\n");
      out.write("\t\t<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageScope.basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\t\t<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageScope.basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/shouye.css\" rel=\"stylesheet\">\r\n");
      out.write("\t\t<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageScope.basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("\t\t<!-- 引入BootStrap核心js文件 -->\r\n");
      out.write("\t\t<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageScope.basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/bootstrap.min.js\"></script>\r\n");
      out.write("\t\t<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageScope.basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/manager.css\" rel=\"stylesheet\">\r\n");
      out.write("\t\t<style>\r\n");
      out.write("\t\t   .user_center{\r\n");
      out.write("\t\t     display:block;\r\n");
      out.write("\t\t   }\r\n");
      out.write("\t\t</style>\t\t\r\n");
      out.write(" </head>\r\n");
      out.write(" <body>\r\n");
      out.write("     ");
 /* String param=request.getParameter("username"); 
	   request.setAttribute("username", param); */
	   Cookie cookie[]=request.getCookies();
	   if(cookie!=null){
	   	 for(int i=0;i<cookie.length;i++){
	   		 Cookie c=cookie[i];
	   		 if(cookie[i].getName().equals("username")){
				  pageContext.setAttribute("username",c.getValue());
				  System.out.println("manger+"+pageContext.getAttribute("username"));
		   		 }else{
		   			pageContext.setAttribute("username","");	
		   		 System.out.println("manger+"+pageContext.getAttribute("username"));
		   		 }
		  }
	   	 }
	   
	
      out.write("\r\n");
      out.write("\t<!--头部-->\r\n");
      out.write("      <div class=\"top\">\r\n");
      out.write("\t\t\t<div class=\"logo\">\r\n");
      out.write("\t\t\t\t<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageScope.basePath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/\"><img src=\"img/logo.png\"></a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"nav\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li class=\"feature\"><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageScope.basePath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/index\" class=\"top_link\">首页</a></li>\r\n");
      out.write("\t\t\t\t\t<li class=\"feature\"><a href=\"#\" class=\"top_link\">电子贺卡</a></li>\r\n");
      out.write("\t\t\t\t\t<li class=\"feature\"><a href=\"#\" class=\"top_link\">请帖</a></li>\r\n");
      out.write("\t\t\t\t\t<li class=\"feature\"><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageScope.basePath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/manager\" class=\"top_link\">个人管理</a></li>\r\n");
      out.write("\t\t\t\t\t<li class=\"feature\"><a href=\"#\" class=\"top_link\">系统管理</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"loginstatus\" id=\"loginstatus\">\r\n");
      out.write("\t\t\t<span class=\"usernamestatus\" id=\"usernamestatue\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageScope.username}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("&nbsp;&nbsp;:&nbsp;欢迎使用凯诚设计！</span>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"loading\" id=\"loading\">\r\n");
      out.write("\t\t\t\t<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageScope.basePath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/loginpage\"><button class=\"btn\" id=\"login-btn\" >登录</button></a>\r\n");
      out.write("\t\t\t\t<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageScope.basePath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/registerpage\"><button class=\"btn\" id=\"register-btn\">注册</button></a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"clear\"></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"main\">\r\n");
      out.write("\t\t\t<div class=\"sidebar\">\r\n");
      out.write("\t\t\t\t<!--个人信息显示-->\r\n");
      out.write("\t\t\t\t<div class=\"userdisplay\" id=\"userdisplay\">\r\n");
      out.write("\t\t\t\t\t");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageScope.username}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write(":你好！\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<!--导航标签-->\r\n");
      out.write("\t\t\t\t<ul class=\"sidemune\">\r\n");
      out.write("\t\t\t\t\t<li class=\"current\" data-id=\"center\" id=\"li1\">个人中心</li>\r\n");
      out.write("\t\t\t\t\t<li data-id=\"user\">个人贺卡管理</li>\r\n");
      out.write("\t\t\t\t\t<li data-id=\"usermanager\">用户管理</li>\r\n");
      out.write("\t\t\t\t\t<li data-id=\"cardmanager\">模板管理</li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"content\" id=\"content\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"clear\"></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"footer\">\r\n");
      out.write("\t\t\t<div class=\"footer_link\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">最新素材</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">热门话题</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">关于我们</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\">联系我们</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t <span>十秒解决PS难题</span>\r\n");
      out.write("\t\t</div>\t\r\n");
      out.write("\t\t<script>\t\r\n");
      out.write("            $(\".sidemune\").on(\"click\", \"li\", function() {\r\n");
      out.write("                var sId = $(this).data(\"id\"); //获取data-id的值\r\n");
      out.write("                window.location.hash = sId; //设置锚点\r\n");
      out.write("                loadInner(sId);\r\n");
      out.write("            }); \r\n");
      out.write("            function loadInner(sId) {\r\n");
      out.write("                var sId = window.location.hash;\r\n");
      out.write("                var pathn, i;\r\n");
      out.write("                switch(sId) {\r\n");
      out.write("                    case \"#center\":\r\n");
      out.write("                    \t/* $.ajax({\r\n");
      out.write("                    \t\turl:\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageScope.basePath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/user_center\",\r\n");
      out.write("                    \t\tasync:true,\r\n");
      out.write("                    \t\tdata:{\"username\":username},\r\n");
      out.write("                    \t\tsuccess:function(data){\r\n");
      out.write("                    \t\t\tif(data.msg=='1'){\r\n");
      out.write("                    \t\t\tpathn = \"user_center.jsp\";\r\n");
      out.write("                    \t\t\t}\r\n");
      out.write("                    \t\t\t}\r\n");
      out.write("                    \t\t}\r\n");
      out.write("                    \t)  */\r\n");
      out.write("                    \tpathn = \"user_center.jsp\";\r\n");
      out.write("                        i = 0;\r\n");
      out.write("                        break;\r\n");
      out.write("                    case \"#12\":\r\n");
      out.write("                        pathn = \"user_r.jsp\";\r\n");
      out.write("                        i = 1;\r\n");
      out.write("                        break;\r\n");
      out.write("                    case \"#usermanager\":\r\n");
      out.write("                        pathn = \"user_manager.jsp\";\r\n");
      out.write("                        i = 2;\r\n");
      out.write("                        break;\r\n");
      out.write("                    case \"#cardmanager\":\r\n");
      out.write("                        pathn = \"card_manager.jsp\";\r\n");
      out.write("                        i = 3;\r\n");
      out.write("                        break;\r\n");
      out.write("                    default:\r\n");
      out.write("                        pathn = \"user_center.jsp\";\r\n");
      out.write("                        i = 0;\r\n");
      out.write("                        break;\r\n");
      out.write("                }\r\n");
      out.write("\r\n");
      out.write("                $(\"#content\").load(pathn); //加载相对应的内容\r\n");
      out.write("\r\n");
      out.write("                $(\".sidemune li\").eq(i).addClass(\"current\").siblings().removeClass(\"current\"); //当前列表高亮\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            var sId = window.location.hash;\r\n");
      out.write("\r\n");
      out.write("            loadInner(sId);\r\n");
      out.write("\r\n");
      out.write("       \r\n");
      out.write("\t\t\t \r\n");
      out.write("\r\n");
      out.write("\t\t  \r\n");
      out.write("\t\t\t  var usernamestatue=document.getElementById('usernamestatue');\r\n");
      out.write("\t\t\t\t var loading=document.getElementById('loading');\r\n");
      out.write("\t\t\t\t var loginstatus=document.getElementById('loginstatus');\r\n");
      out.write("\t\t\t\t var li=document.getElementById('li1');\r\n");
      out.write("\t\t\t\t var userdisplay=document.getElementById('userdisplay');\r\n");
      out.write("\t\t    /*  function GetRequest() {\r\n");
      out.write("\t\t     var url = location.search; //获取url中\"?\"符后的字串\r\n");
      out.write("\t\t     var theRequest = new Object();\r\n");
      out.write("\t\t     if (url.indexOf(\"?\") != -1) {\r\n");
      out.write("\t\t     var str = url.substr(1);\r\n");
      out.write("\t\t     strs = str.split(\"&\");\r\n");
      out.write("\t\t     for(var i = 0; i < strs.length; i ++) {\r\n");
      out.write("\t\t        theRequest[strs[i].split(\"=\")[0]] = unescape(strs[i].split(\"=\")[1]);\r\n");
      out.write("\t\t       }\r\n");
      out.write("\t\t      }\r\n");
      out.write("\t\t       return theRequest;\r\n");
      out.write("\t\t  }\r\n");
      out.write("\t\t   var Request = new Object();\r\n");
      out.write("\t\t   Request = GetRequest();\r\n");
      out.write("\t\t   var username=Request[\"username\"];\r\n");
      out.write("\t\t    console.log(username); */\r\n");
      out.write("\t\t   var username='");
      out.print(pageContext.getAttribute("username") );
      out.write("';\r\n");
      out.write("\t\t   if(username==''||username==undefined){\r\n");
      out.write("\t\t     loading.style.display=\"block\";\r\n");
      out.write("\t\t     loginstatus.style.display=\"none\";\r\n");
      out.write("\t\t     userdisplay.style.display=\"none\";\r\n");
      out.write("\t\t    }else{\r\n");
      out.write("\t\t     loginstatus.style.display=\"block\";\r\n");
      out.write("\t\t     loading.style.display=\"none\";\r\n");
      out.write("\t\t     userdisplay.style.display=\"block\";\r\n");
      out.write("\t\t    } \r\n");
      out.write("\t\t \r\n");
      out.write("\t\t</script>\r\n");
      out.write(" </body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}