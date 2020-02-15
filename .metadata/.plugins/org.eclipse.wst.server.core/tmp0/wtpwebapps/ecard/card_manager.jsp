<%@page import="com.bishe.ecard.entity.user"%>
<%@page import="java.util.List"%>
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
		<meta charset="utf-8">
		<!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title></title>
		<link href="${pageScope.basePath}/css/bootstrap.min.css" rel="stylesheet">
		<link href="${pageScope.basePath}/css/shouye.css" rel="stylesheet">
		<script src="${pageScope.basePath}/js/jquery-3.4.1.min.js"></script>
		<!-- 引入BootStrap核心js文件 -->
		<script src="${pageScope.basePath}/js/bootstrap.min.js"></script>	
		
		<style>
			.topfont{
				text-align: center;
				font-family: "微软雅黑";
				font-size: 23px;
				font-weight: bold;
			}
			.swichbtn{
				margin-top: 20px;	
			}
			.carduploadbtn{
				margin-left: 50px;
			}
			.cardselect{
				width: 1000px;				
				
				display: none;
			    position: absolute;
			    margin-left: 30px;
				margin-top: 20px;
			}
			.cardupload{
				width: 1000px;
				
				background-color: yellow;
				position: relative;
				display: none;
				margin-left: 30px;
				margin-top: 20px;			
			}
			.swichbtn{
				text-align: center;
				display:none;
			}
			.cardmanager{
				text-align: center;
				display:none;
			}
			.msg2{
				margin-top: 5px;
				font-family: "微软雅黑";
				font-size: 15px;
				float: left;
				margin-left: 100px;
				
			}
			.delete{
				margin-left: 190px;
				margin-top: 10px;	
				float: left;		
			}
			table{
				margin-left: 150px;
			}
			th{
				padding-left: 40px;
			}
			td{
				padding-left: 40px;
			}
			.cardtable{
				margin-top: 5px;
			}
			.type1{
				
				margin-top: 5px;
				margin-left: 50px;
			}
			.cardtype1btn{
				margin-left: 20px;
			}
			.cardtype2btn{
				margin-left: 20px;
			}
			.msg{
			  font-size:20px;
			  font-family: "微软雅黑";
			  margin-left:50px;
			}
		</style>
	</head>
	<body>
	<% /* String param=request.getParameter("username"); 
	   request.setAttribute("username", param); */
	   Object user1=session.getAttribute("user");
	   Object user=request.getAttribute("user");
	   System.out.println("request----------"+user);
	   Cookie cookie[]=request.getCookies();
	   if(cookie!=null){
	   	 for(int i=0;i<cookie.length;i++){
	   		 Cookie c=cookie[i];
	   		 if(cookie[i].getName().equals("username")){
				  pageContext.setAttribute("username",c.getValue());	
				  System.out.println("usermanage+"+pageContext.getAttribute("username"));
		   		 }else{
		   			pageContext.setAttribute("username","");
		   			System.out.println("usermanage+"+pageContext.getAttribute("username"));
		   		 }
	   	 }	   	
	   }%>
		<!--顶部模板管理-->
		<div class="topfont">
			模板管理
		</div>
		 <br>
		 <span class="msg" id="msg"></span>
		<div class="swichbtn" id="swichbtn">
			<button type="button" class="cardselectbtn" id="cardselectbtn">模板查询</button>
			<button type="button" class="carduploadbtn" id="carduploadbtn">模板上传</button>
		</div>
		
		<div id="cardmanager" class="cardmanager">		
			
			<div class="cardselect" id="cardselect">
				<div class="type1" id="type1">
					<span>按模板类型查询:</span>
					<select name="type" id="selectType">
						<option value="0">请选择</option>
						<option value="1">贺卡</option>
						<option value="2">请帖</option>
					</select>
		   		 	<button type="button" class="cardtype1btn" id="cardtype1btn">查询</button>
		   		 	<button type="button" class="cardtype2btn" id="cardtype2btn">查询全部模板</button>
			   </div>
				<div class="delete" id="delete">
		   		 	<button type="button" class="deletecard" id="deletecard">删除</button>
				</div>
				<div class="msg2">
				   <span id="msg2" class="msg2"></span>
			      </div>
				<div class="clear"></div>
				<div class="cardtable">
					<table align="center" cellpadding="0" cellspacing="0" id="cardtable">
						<thead>
							<tr>
								<th>选择</th>
								<th>序号</th>
								<th>模板图片</th>
								<th>模板名称</th>
								<th>模板类型</th>
								<th>模板上传时间</th>
								<th>模板使用次数</th>
							</tr>
						</thead>
						<tbody>
							
						</tbody>
					</table>
					
				</div>
			</div>
			<div class="cardupload" id="cardupload">
				123
			</div>
	    </div>
		<script type="text/javascript">
			//顶部按钮切换
			var cardselectbtn=document.getElementById('cardselectbtn');
			var carduploadbtn=document.getElementById('carduploadbtn');
			var cardselect=document.getElementById('cardselect');
			var cardupload=document.getElementById('cardupload');
			cardselectbtn.onclick=function(){
				cardselect.style.display='block';
				cardupload.style.display='none';
			}
			carduploadbtn.onclick=function(){
				cardselect.style.display='none';
				cardupload.style.display='block';
			}
			//判断用户是否登录是否有权限
			var username='<%=pageContext.getAttribute("username")%>';
			var cardmanager=document.getElementById('cardmanager');
			var swichbtn=document.getElementById('swichbtn');
			var msg2=document.getElementById("msg2");
			$(function(){
				$.ajax({
					type:"post",
					url:"${pageScope.basePath}/selectstatus",
					async:true,
					data:{"username":username},
					success:function(data){
						if(data.msg=='1'){
							msg.style.color='red';							
							msg.innerHTML="你不是管理员用户，无权操作!";
						}else if(data.msg=='0'){
							cardmanager.style.display='block';
							swichbtn.style.display='block';						
						}else if(data.msg=='2'){
							msg.style.color='red';		
							msg.innerHTML="请你先登录";
						}
					}
				});				
			});				
			
			//按类型查询模板	
			var msg=document.getElementById('msg');
			var  selectType=document.getElementById('selectType');			
			var cardtype1btn=document.getElementById('cardtype1btn');
			cardtype1btn.onclick=function(){				
				  $.ajax({
					type:"post",
					url:"${pageScope.basePath}/selectcardType",
					async:true,
					data:{"type":selectType.value},
					success:function(data){
						if(data.msg=='0'){
						  $("tbody").detach();
						  var res=data.cardmsg;
						  msg2.innerHTML="";
						  var str='';
						  $.each(res,function(index,result){
								//console.log(index+result.userName);
								str='<td><input type="checkbox" name="cardname" id="cardname" value="'+result.cardId+'">'+'</td>'+'<td>'+result.cardId+'</td>'+'<td><img width="50px" height="40px" src="${pageScope.basePath}/'+result.cardPath+'"/>'+'</td>'+'<td>'+result.cardName+'</td>'+
								'<td>'+result.cardType+'</td>'+'<td>'+result.cardTime+'</td>'+'<td>'+
								result.cardCount+'</td>';
								$("#cardtable").append('<tbody><tr>'+str+'</tr><tbody>');
								
							});
						  
						}else if(data.msg=='1'){
							$("tbody").detach();
							 msg2.innerHTML="请选择贺卡或者请帖";
							 msg2.style.color='red';
						}
				}
			
			});
			}
			//查询全部模板
			var cardtype2btn=document.getElementById('cardtype2btn');
			cardtype2btn.onclick=function(){
				$.ajax({
					type:"post",
					url:"${pageScope.basePath}/selectcardAll",
					async:true,					
					success:function(data){
						if(data.msg=='0'){
						  $("tbody").detach();
						  var res=data.cardmsg;
						  msg2.innerHTML="";
						  var str='';
						  $.each(res,function(index,result){
								//console.log(index+result.userName);
								str='<td><input type="checkbox" name="cardname" id="cardname" value="'+result.cardId+'">'+'</td>'+'<td>'+result.cardId+'</td>'+'<td><img width="50px" height="40px" src="${pageScope.basePath}/'+result.cardPath+'"/>'+'</td>'+'<td>'+result.cardName+'</td>'+
								'<td>'+result.cardType+'</td>'+'<td>'+result.cardTime+'</td>'+'<td>'+
								result.cardCount+'</td>';
								$("#cardtable").append('<tbody><tr>'+str+'</tr><tbody>');
								
							});
						  
						}
				}
			
			});
			}
			
			var checkBoxValue=new Array();
			function getChexBoxValue(){
				var test=$("input[name='cardname']:checked");
				
				test.each(function(index){
					checkBoxValue[index]=$(this).val();
				});
				//checkBoxValue=checkBoxValue.substring(0,checkBoxValue.length-1);
				console.log(checkBoxValue);
			}
			var deletecard=document.getElementById("deletecard");
			deletecard.onclick=function(){
				getChexBoxValue();
				$.ajax({
					type:'post',
					url:'${pageScope.basePath}/deletecard',
					aysnc:true,
					data:{"cardcke":checkBoxValue},
					traditional : true,
					success:function(data){
						if(data.msg=='0'){
						  $("tbody").detach();
						  var res=data.cardmsg;
						  msg2.innerHTML="";
						  var str='';
						  $.each(res,function(index,result){
								//console.log(index+result.userName);
								str='<td><input type="checkbox" name="cardname" id="cardname" value="'+result.cardId+'">'+'</td>'+'<td>'+result.cardId+'</td>'+'<td><img width="50px" height="40px" src="${pageScope.basePath}/'+result.cardPath+'"/>'+'</td>'+'<td>'+result.cardName+'</td>'+
								'<td>'+result.cardType+'</td>'+'<td>'+result.cardTime+'</td>'+'<td>'+
								result.cardCount+'</td>';
								$("#cardtable").append('<tbody><tr>'+str+'</tr><tbody>');
								
							});
						  
						}
				}
			
			});
			}
	</script>
	</body>
</html>
