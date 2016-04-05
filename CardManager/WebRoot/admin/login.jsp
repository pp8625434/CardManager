<%@ page language="java" errorPage="/error.jsp" import="java.util.*" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"  %>
<%@ taglib prefix="hi" uri="/WEB-INF/tld/hi.tld"%>
<%@ taglib prefix="z" uri="/WEB-INF/tld/z.tld"%>
<%@page import="com.base.framework.BaseConfigHolder"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title><%=BaseConfigHolder.getSystemName()%></title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/admin/jquery/js/jquery-1.8.0.min.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/admin/jquery/js/jquery.yy.min.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/admin/jquery/js/yy-lang-zh_CN.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/admin/jquery/js/menuUtil.js">
		</script>
		
		<style>
			*{ margin:0px; padding:0px;}
			ul,li{ list-style-type:none;}
			body{ font-family:"微软雅黑"; font-size:12px;}
			.clear{ clear:both;}
			a img{ border:0px;}
			a{ text-decoration:none;}
			.login{ width:485px; margin:0 auto; }
			.login .dibu{ font-size:14px; color:#676767; line-height:140px; height:140px; text-align:center;}
			.login .li1{ margin-top:150px; float:left; }
			.login .li2{ float:left; height:52px; width:485px; margin-top:76px;}
			.login .li2 em{ display:block; width:47px; height:52px; background:url(<%=request.getContextPath()%>/admin/images/dlyh.png) no-repeat; float:left;}
			.login .logintext{ width:437px; border:solid 1px #d4d4d4; border-left:0px; height:50px; font-size:14px; outline: none;line-height:50px;}
			.login .li3{ float:left; height:52px; width:485px;margin-top:12px;}
			.login .li3 em{ display:block; width:47px; height:52px; background:url(<%=request.getContextPath()%>/admin/images/dlmm.png) no-repeat; float:left;}
			.login .li4 input{ border:0px; height:45px; line-height:45px; margin-top:32px; font-weight:bold; width:485px; background:#cf0000; color:#fff; font-size:14px;}
		</style>

		<script type="text/javascript">
			var ctx = '<%=request.getContextPath()%>';
			function aa(){
				//document.forms[0].submit();
				var msg = '<%=request.getAttribute("msg") %>';
				if(msg != "" && msg!="null"){
					alert(msg);
				}
			}
		</script>
	</head>
	<body class="adminMain" onload="aa()" style="background:#f9f9f9 url(<%=request.getContextPath()%>/admin/images/loginbg.jpg) no-repeat center top;">
		<form action="<%=request.getContextPath()%>/admin/login.action" method="post" onSubmit="return checkedImage()">
			<div class="login">
			    <ul>
			    	<li class="li1">
			    		<img src="<%=request.getContextPath()%>/admin/images/dllogo.png" width="398" height="86" />
			    	</li>
			        <li class="li2">
			        	<em></em>
			        	<input type="text" class="logintext" id="j_username" name="user.name" value="" />
			        </li>
			        <li class="li3">
			        	<em></em>
			        	<input id="j_password" name="user.password" type="password" class="logintext" value=""  />
			        </li>
			        <li class="li4"><input type="submit" value="登 录" /></li>
			    </ul>
			    <div class="dibu">版权所有  孝易达科技服务有限公司   Tel:+86-010-87680268</div>
			</div>
			
		</form>
		<script language="javascript">
			//var imageValue = "";
			function checkedImage(){
				
				//var imageText = document.getElementById("checkcode").value;
				if(document.getElementById("j_username").value==""){
					//alert("请填写用户名！");
					alert('请填写用户名！');
					document.getElementById("j_username").focus();
					return false;
				}
				if(document.getElementById("j_password").value==""){
					alert("请填写密码！");
					document.getElementById("j_password").focus();
					return false;
				}
				/*if(imageText==""){
					alert("请输入验证码！");
					document.getElementById("checkcode").focus();
					return false;
				}
				if(imageValue!=imageText){
					alert("您输入的验证码有错！");
					document.getElementById("checkcode").focus();
					return false;
				}*/
				
				return true;
			}
			
			function check_name(){
				document.getElementById("infospan").innerHTML="如果您的帐号无法登录此平台，请与管理人员联系";
				if(document.getElementById("j_username").value==""){
					document.getElementById("infospan").innerHTML="<span style=\"color:red\">请填写用户名!</span>";
					//document.getElementById("j_username").focus();
					return false;
				}
			}
			
			function check_password(){
				document.getElementById("infospan").innerHTML="如果您的帐号无法登录此平台，请与管理人员联系";
				if(document.getElementById("j_password").value==""){
					document.getElementById("infospan").innerHTML="<span style=\"color:red\">请填写密码!</span>";
					//document.getElementById("j_password").focus();
					return false;
					}	
			}
			
			function check_Image(){
				document.getElementById("infospan").innerHTML="如果您的帐号无法登录此平台，请与管理人员联系";
				var imageText = document.getElementById("checkcode").value;
				if(imageValue!=imageText){
					$.messager.alert("您输入的验证码有错！");
					//document.getElementById("checkcode").focus();
					return false;
				}
				
			}
			function changeimg(){
				var charactors="1234567890";
				var value='';
				var i;
				for(j=1;j<=4;j++){
					i = parseInt(10*Math.random());
					value = value + charactors.charAt(i);
				}
				imageValue = value;
				document.getElementById("verifyImg").src="<%=request.getContextPath()%>/admin/image.jsp?sRand="+imageValue;
			}
		</script>
	</body>
</html>