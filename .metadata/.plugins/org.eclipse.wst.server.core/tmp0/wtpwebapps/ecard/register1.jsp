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
		<title>注册</title>
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
					注&nbsp;册
				</div>
				<div class="formdiv">
				<form class="form-horizontal" id="form" action="#" method="post">
				  <div class="form-group">
				   <label  class="col-sm-4 control-label fontset">用户名:</label>
				  <div class="col-sm-2">
				     <input type="text" class="form-control" maxlength="10" name="username" id="username" placeholder="请输入用户名">   
				     <span id="msg1"></span>
				  </div>
				  </div>
				  <div class="form-group">
				    <label  class="col-sm-4 control-label fontset">密码:</label>
				    <div class="col-sm-2">
				      <input type="password" class="form-control" max="10" name="password" id="password" placeholder="请输入密码">
				    <span id="msg2"></span>
				    </div>
				  </div>
				  <div class="form-group">
				    <label  class="col-sm-4 control-label fontset">邮箱:</label>
				    <div class="col-sm-2">
				      <input type="email" class="form-control" name="email" id="email" placeholder="请输入邮箱">
				   <span id="msg3"></span>
				    </div>
				  </div>
				  <div class="form-group">
				    <label  class="col-sm-4 control-label fontset">验证码:</label>
				    <div class="col-sm-1">
				      <input type="text" class="form-control" name="code" maxlength="6" id="code" placeholder="请输入验证码">     				     				      			  			
				      <button type="button" class="btn btn-default"  id="sendcode">发送</button>	     				  
				    </div>
				  </div>
				   <div class="form-group">
				    <div class="col-sm-2 msg">
				      <span  id="msg4"></span>
				    </div>
				  </div>
				  <div class="form-group btnf">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="button" class="btn btn-default btnset"  id="register-btn">注册</button>
				     
				    </div>
				  </div>
				  
				</form>
				</div>
			</div>
		</div>
	 <script>
	 	var userval=document.getElementById('username');
	 	var passval=document.getElementById('password');
	 	var emailval=document.getElementById("email");
	 	var sendcode=document.getElementById("sendcode");
	 	var code=document.getElementById("code")
	 	var loginbtn=document.getElementById('register-btn');
	 	var msg=document.getElementById('msg');
	 	var msg1=document.getElementById('msg1');
	 	var msg2=document.getElementById('msg2');
	 	var msg3=document.getElementById('msg3');
	 	var msg4=document.getElementById('msg4');
	 	var userstatus=false,passstatus=false,emailstatus=false,codestatus=false;
	 	var reg=/^[A-Za-z0-9]+$/;
	 	var regemail=/^[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$/;
	 	//失去焦点事件
	 	userval.onblur=function(){
	 	 if(userval.value==''){
         	msg1.style.color='red';
         	msg1.innerHTML='用户名不能为空';
         	userstatus=false;
         }else if(!reg.test(userval.value)){
         	msg1.style.color='red';
         	msg1.innerHTML='字母和数字组合';
         	userstatus=false;
         }else if(userval.value.length<3){
         	msg1.style.color='red';
         	msg1.innerHTML='3-10个字符';
         	userstatus=false;
         }else {
         	$.ajax({
         		type:"get",
         		url:"${pageScope.basePath}/usernamevalited",
         		async:true,
         		data:{"username":userval.value},
         		success:function(data){
         			if(data.msg=='1'){
         				msg1.innerHTML='';
         		        userstatus=true;
         			}else{
         				msg1.style.color='red';
         				msg1.innerHTML='用户名已经存在';
         		 		userstatus=false;
         			}
         		}
         	});
         }
	 	}
	 	passval.onblur=function(){
	 		if(passval.value==''){
         	msg2.style.color='red';
         	msg2.innerHTML='密码不能为空';
         	passstatus=false;
         }else if(passval.value.length<3){
         	msg2.style.color='red';
         	msg2.innerHTML='3-10个字符';
         	passstatus=false;
         }else if(!reg.test(passval.value)){
         	msg2.style.color='red';
         	msg2.innerHTML='字母和数字组合';
         	passstatus=false;
         }else{        	
         	msg2.innerHTML='';
         	passstatus=true;
         }
	 	}
	 	emailval.onblur=function(){
	 		 if(emailval.value==''){
         	msg3.style.color='red';
         	msg3.innerHTML='邮箱不能为空';
         	emailstatus=false;
         }else if(!regemail.test(emailval.value)){
         	msg3.style.color='red';
         	msg3.innerHTML='邮箱格式有问题';
         	emailstatus=false;
         }else{        	
         	msg3.innerHTML='';
         	emailstatus=true;
         }
	 	}
	 	 sendcode.onclick=function(){	 		
	 		if(emailval.value!=''&&regemail.test(emailval.value)){	 			
	 			$.ajax({
	 				type:"post",
	 				url:"${pageScope.basePath}/sendcode",
	 				async:true,
	 				data:{"email":emailval.value},
	 				success:function(data){
	 					 codes=data.msg;	 					 
	 				}
	 			});	 			
	 		}
	 	}
	 	/* var vercode	 = 0;
		var time = 60;
		var flag = true; 
		 	$('#sendcode').click(function(){            
		 		$(this).attr("disabled",true);			
		 		//var emailval = $('#email').val();            
		 		if(flag){                
		 			var timer = setInterval(function () {                     
		 				if(time == 60 && flag){                        
		 					flag = false;                         
		 					$.ajax({                            
		 						type : 'post',                            
		 						async : false,                            
		 						url : 'http://localhost:8080/ecard/sendcode',                            
		 						data : {                                
		 							"email" : emailval.value                            
		 						},                            
		 						dataType:"json",                            
		 						success : function(data) {                                
		 							if(data.status == '0'){                                    
		 								codes=data.msg;;                                    
		 								$("#sendcode").html("已发送");								
		 							}else {                                    
		 								//alert(data.msg);                                    
		 								flag = true;                                    
		 								time = 60;                                    
		 								clearInterval(timer);                                
		 							}                            
		 						}                        
		 					});					
		 				}else if(time == 0){                        
		 					$("#sendcode").removeAttr("disabled");                        
		 					$("#sendcode").html("免费获取验证码");                        
		 					clearInterval(timer);                        
		 					time = 60;                        
		 					flag = true;                    
		 				}else {                        
		 					$("#sendcode").html(time + " s 重新发送");                        
		 					time--;                    
		 				}                
		 			},1000);			
		 		} 		
		 	}); */
	 	
	 	//
	 	

	 	//整体验证空
	 	function  valide(){
	 		if(userval.value==''&&passval.value==''&&emailval.value==''&&code.value==''){
	 			msg1.style.color='red';
         	    msg1.innerHTML='用户名不能为空';
         	    msg2.style.color='red';
         	    msg2.innerHTML='密码不能为空';
         	    msg3.style.color='red';
         	    msg3.innerHTML='邮箱不能为空';
         	   
	 		}
	 		if(code.value==codes){
	 		  codestatus=true;	
	 		}else{
	 			msg4.style.color='red';
         	    msg4.innerHTML='输入验证码';
	 		}
	 	}
	 	//注册按钮事件
	 	loginbtn.onclick=function(){
//	 		type:"post",
//					url:"http://localhost:8080/ecard/sendmsg",
//					async:true,
//					data:$("#form1").serialize(),
//					success:function(data){
//						alert("成功")
//					}
             valide();
             if(userstatus==true&&passstatus==true&&emailstatus==true&&codestatus==true){
             	$.ajax({
             		url:"${pageScope.basePath}/register",
             		type:'post',
             		async:true,
             		data:$('#form').serialize(),
             		success:function(data){
             			if(data.msg=='0'){
             				window.location.href="${pageScope.basePath}/loginpage";
             			}
             		}
             	})
             }
         
         
//       if(userval.value==''){
//       	msg.style.color='red';
//       	msg.innerHTML='请输入用户名或密码';
//       }else if(userval.value!=''&&passval.value!=''){
//       	msg.innerHTML='';
//	 		$.ajax({
//	 		type:"post",
//	 		url:"http://localhost:8080/ecard/login",
//	 		async:true,
//	 		data:$('#form').serialize(),
//	 		success:function(data){
//	 			if(data.msg=='1'){
//	 				msg.innerHTML='用户名或密码错误';
//	 			}else{
//	 				Location.href="http://localhost:8080/ecard";
//	 			}
//	 		}
//	 		}
//	 	)};
 	}
	 	
	  
	 </script>
	</body>
</html>
