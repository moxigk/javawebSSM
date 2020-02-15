<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String path=request.getContextPath();
String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
pageContext.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>登录</title>
		<link rel="stylesheet" href="${pageScope.basePath }/css/login.css" />
		<link rel="stylesheet" href="${pageScope.basePath }/css/bootstrap.min.css" />
	   <script type="text/javascript" src="${pageScope.basePath }/js/jquery-3.4.1.min.js" ></script>
		<script type="text/javascript" src="${pageScope.basePath }/js/bootstrap.min.js" ></script>
		
	
	</head>
	<body>
		<!--头部-->
		<div class="header">
			<div class="loginwindow">
				<div class="loginlabel">
					登&nbsp;录
				</div>
				<div class="formdiv">
				<form class="form-horizontal" id="form" action="#" method="post">
				  <div class="form-group">
				   <label  class="col-sm-4 control-label fontset">用户名:</label>
				  <div class="col-sm-2">
				     <input type="text" class="form-control" name="username" id="username" placeholder="请输入用户名">   
				   </div>
				  </div>
				  <div class="form-group">
				    <label  class="col-sm-4 control-label fontset">密码:</label>
				    <div class="col-sm-2">
				      <input type="password" class="form-control" name="password" id="password" placeholder="请输入密码">
				    </div>
				  </div>
				   <div class="form-group">
				    <div class="col-sm-2 msg">
				      <span  id="msg"></span>
				    </div>
				  </div>
				  <div class="form-group btnf">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="button" class="btn btn-default btnset"  id="loginbtn">登录</button>
				     <a href="${pageScope.basePath}/registerpage"><button type="button" class="btn btn-default btnset" id="registerbtn" >注册</button></a>
				    </div>
				  </div>
				  
				</form>
				</div>
			</div>
		</div>
	 <script>
	 	var userval=document.getElementById('username');
	 	var passval=document.getElementById('password');
	 	var loginbtn=document.getElementById('loginbtn');
	 	var msg=document.getElementById('msg');
	 	loginbtn.onclick=function(){	 		
//	 		type:"post",
//					url:"http://localhost:8080/ecard/sendmsg",
//					async:true,
//					data:$("#form1").serialize(),
//					success:function(data){
//						alert("成功")
//					}
         if(userval.value==''||passval.value==''){
         	msg.style.color='red';
         	msg.innerHTML='请输入用户名或密码';
         }else if(userval.value!=''&&passval.value!=''){
         	msg.innerHTML='';
	 		$.ajax({
	 		type:"post",
	 		url:"${pageScope.basePath}/login",
	 		async:true,
	 		data:$('#form').serialize(),
	 		success:function(data){
	 			if(data.msg=='1'){
	 				msg.style.color='red';
	 				msg.innerHTML='用户名或密码错误';
	 			}else{
	 				window.location.href="${pageScope.basePath}/index";
	 			}
	 		}
	 		}
	 	)};
	 	}
	 	 
	  
	 </script>
	</body>
</html>
