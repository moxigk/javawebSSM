<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 <% 
String path=request.getContextPath();
String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
pageContext.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<style>
			.user_center{
				text-align: center;
				margin: 10px;
				padding-top: 40px;
			}
			.usermsg{				
				font-family: "微软雅黑";
				font-size: 20px;
				font-weight: bold;
			}
			.set{
				font-size: 20px;
				font-family: "微软雅黑";
				font-weight: bold;
			}
			.btn_user{
				
				font-size: 20px;
				background-color: antiquewhite;
				border-radius: 5px;
				border: 1px solid;
			}
		</style>
	</head>
	<body>
	<% /* String param=request.getParameter("username"); 
	   request.setAttribute("username", param); */
	   Cookie cookie[]=request.getCookies();
	   if(cookie!=null){
	   	 for(int i=0;i<cookie.length;i++){
	   		 Cookie c=cookie[i];
	   		 if(cookie[i].getName().equals("username")){
				  pageContext.setAttribute("username",c.getValue());	
				  System.out.println("usercenter+"+pageContext.getAttribute("username"));
		   		 }else{
		   			pageContext.setAttribute("username","");
		   			System.out.println("usercenter+"+pageContext.getAttribute("username"));
		   		 }
	   	 }	   	
	   }%>
		<div class="user_center">					
		<span class="usermsg">个人信息修改${pageScope.username}</span><br /><br /><br /><br />
		<form action="#" method="post">&nbsp;&nbsp;&nbsp;&nbsp;
			<span class="password set">新密码:</span>&nbsp;&nbsp;&nbsp;<input type="password" id="password" name="password" maxlength="10"  value=""/><br /><br />
			<span class="password set">确认密码:</span>&nbsp;&nbsp;&nbsp;<input type="password" id="commitpassword" name="password" maxlength="10" value=""/><br /><br />
			<div class="">
				<span class="msg" id="msg"></span>
			</div>
			<br />
			<input type="button" value="确认" class="btn_user" id="btn_user"/>
		</form>
		</div>
		<script>
			var userpass=document.getElementById('password');
			var commitpassword=document.getElementById('commitpassword');
			var btn_user=document.getElementById('btn_user');
			var msg=document.getElementById('msg')
			var reg=/^[A-Za-z0-9]+$/;
			var userstatus=false;
			var commistuserstatus=false;
		    function valitad(){
			userpass.onblur=function(){
			if(userpass.value==''){
				msg.style.color='red';
				msg.innerHTML='密码不能为空';
				userstatus=false;
			}else if(!reg.test(userpass.value)){
				msg.style.color='red';
				msg.innerHTML='字母和数字组合';
				userstatus=false;
			}else if(userpass.value<3||userpass.value>10){
				msg.style.color='red';
				msg.innerHTML='密码长度3-10位';
				userstatus=false;
			}else{
				msg.innerHTML='';
				userstatus=true;
			}
			}
			commitpassword.onblur=function(){
			if(commitpassword.value==''){
				msg.style.color='red';
				msg.innerHTML='密码不能为空';
				commistuserstatus=false;
			}else if(!reg.test(commitpassword.value)){
				msg.style.color='red';
				msg.innerHTML='字母和数字组合';
				commistuserstatus=false;
			}else if(commitpassword.value<3||commitpassword.value>10){
				msg.style.color='red';
				msg.innerHTML='密码长度3-10位';
				commistuserstatus=false;
			}else if(commitpassword.value!=userpass.value){
				msg.style.color='red';
				msg.innerHTML='两次密码输入不一样';
				commistuserstatus=false;
			}else{
				msg.innerHTML='';
				commistuserstatus=true;
			}
			}
		    }
			var username='<%=pageContext.getAttribute("username") %>';
			console.log(username);
			btn_user.onclick=function(){
				valitad();
				if(userstatus==false||commistuserstatus==false){
					msg.style.color='red';
					msg.innerHTML="请正确输入密码";
				}else{
					$.ajax({
						type:"post",
						url:"${pageScope.basePath}/updatepass",
						async:true,
						data:{"username":username,"userpass":userpass.value},
						success:function(data){
							if(data.msg=='0'){
								alert("密码修改成功");
								window.location.href="${pageScope.basePath}/loginpage";
							}
						}
					});
				}
			}
		</script>
	</body>
</html>