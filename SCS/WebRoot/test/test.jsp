<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'test.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" language="javascript" src="../js/util/jquery-2.2.3.js" ></script>
	<script type="text/javascript">
		$(document).ready(function(){
			
		});
	</script>
  </head>
  
  <body>
    <form id="testForm" action="asdasdas" onsubmit="onForm_Submits();"  >
    	用户名：<input type="text" name="input0" id="input0"  isnull="no" mes="用户名不能为空" value="" /></br>
    	出生日期：<input type="text" name="input1" id="input1" dtype="date(yyyy-MM)" isnull="no" mes="出生日期不能为空"  value="" /></br>
    	购买数量：<input type="text" name="input2" id="input2" dtype="number" value="" isnull="no" dmes="只能填写正数"  mes="购买数量不能为空" /></br>
    	账户余额：<input type="text" name="input3" id="input3" dtype="number(8,2)" isnull="no" dmes="只能填写数字" derrclass="inputCss" dorder="3" mes="账户余额不能为空" value="" /></br>
    	e-mail：<input type="text" name="input4" id="input4" dtype="mail" isnull="yes" value="" /></br>
    	身份证号：<input type="text" name="input5" id="input5" dtype="idnum" isnull="no" value="" /></br>
    	最高学历：<select name="input12" dorder="4" isnull="no" id="input12" mes="最高学历不能为空" >
    				<option value=" " >请选择</option>
    				<option value="1" >小学</option>
    				<option value="2" >初中</option>
    				<option value="3" >高中</option>
    				<option value="4" >大专</option>
    				<option value="5" >本科</option>
    				<option value="6" >研究生</option>
    		    </select></br>
    	性别：<input type="radio" name="input6" id="input6" dorder="6" isnull="no" mes="请选择性别" value="男" />男&nbsp;<input type="radio" name="input6" id="input7" value="女" />女</br>
    	喜欢的食物：<input type="checkbox" name="input8" isnull="no" mes="请选择喜欢的食物" id="input8" value="面条" />面条&nbsp;<input type="checkbox" name="input8" id="input9" value="馒头" />馒头&nbsp;<input type="checkbox" name="input8" id="input10" value="米饭" />米饭</br>
    	个人简介：<textarea name="input11" id="input11" rows="10" dorder="5" isnull="no" mes="个人简介不能空" cols="10"></textarea>
    	<input type="button" name="t" id="t" value="提交" onclick="test()" />
    	<input type="submit" name="dd" value="真的提交了" >
    	<div style="width:1000px;height:20000px;position:relative;border: solid #ccc 1px;"> <jsp:include page="a.html"></jsp:include> </div>
    	
    </form>
  </body>
</html>