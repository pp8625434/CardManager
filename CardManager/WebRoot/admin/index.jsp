<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.HashMap,java.util.Iterator,java.util.Map,java.util.ArrayList,java.util.*" %>
<%@ page import="com.manage.menu.model.Menu,com.manage.menu.model.MenuLink" %>
<%@ page import="com.manage.user.model.User" %>
<%@page import="com.base.framework.BaseConfigHolder"%>
<%
   	java.util.HashMap map = (HashMap)request.getAttribute("map");
	StringBuffer sb = new StringBuffer("[");
	if(null != map && map.size() >0 ){
		Iterator iter = map.entrySet().iterator();
		String menuname = null;
		String menus = null;
		String icon = null;
		String url = null;
		int count = 0;
		while (iter.hasNext()) {
			count++; //记录循环次数
			Map.Entry entry = (Map.Entry) iter.next();
		    Menu key = (Menu)entry.getKey();
			ArrayList<MenuLink> val = (ArrayList<MenuLink>)entry.getValue();
			if(count==map.size()){   //判断如果count数和map的大小一致，则执行下面，json字符串结尾为"}]"
				//sb.append("[");
				sb.append("{\"icon\":\"icon-sys\",");			
				sb.append("\"menuname\":\"");	
				sb.append(key.getDisplayRef());
				sb.append("\",\"menuid\":\"");
				sb.append(count);
				sb.append("\",\"menus\":[");  
				if(null != val && val.size()>0){
						for(int i=0,cnt=val.size();i<cnt;i++){
							MenuLink menuLink = (MenuLink)val.get(i);
							if(i==val.size()-1){  
		                		sb.append("{\"icon\":\"icon-nav\",");			
					            sb.append("\"menuname\":\"");  
		                		sb.append(menuLink.getDisplayRef()); 
		                		sb.append("\",\"menuid\":\"");
								sb.append(count+""+(i+1));
		                		sb.append("\",\"url\":\"");  
								sb.append(menuLink.getLinkUrl());  
		                		sb.append("\"");  
		                		sb.append("}]");  
		            		}else{
								sb.append("{\"icon\":\"icon-nav\",");			
						        sb.append("\"menuname\":\"");
						        sb.append(menuLink.getDisplayRef());
						        sb.append("\",\"menuid\":\"");
								sb.append(count+""+(i+1));	
								//System.out.println(menuLink.getDisplayRef());
								sb.append("\",\"url\":\"");  
								sb.append(menuLink.getLinkUrl());
								//System.out.println(menuLink.getLinkUrl());
								sb.append("\"");  
				                sb.append("},"); 
			                }
						}
				}
				sb.append("}]");
			}else{  //其他情况则正常执行  拼接一级菜单
			//System.out.println(key.getDisplayRef()+"一级菜单");
			//sb.append("[");
			sb.append("{\"icon\":\"icon-sys\",");			
			sb.append("\"menuname\":\"");	
			sb.append(key.getDisplayRef());
			sb.append("\",\"menuid\":\"");
			sb.append(count);
			if(null != val && val.size()>0){
			sb.append("\",\"menus\":[");  
					for(int i=0,cnt=val.size();i<cnt;i++){  //二级菜单
						MenuLink menuLink = (MenuLink)val.get(i);
						if(i==val.size()-1){  
	                		sb.append("{\"icon\":\"icon-nav\",");			
				            sb.append("\"menuname\":\"");  
	                		sb.append(menuLink.getDisplayRef()); 
	                		sb.append("\",\"menuid\":\"");
							sb.append(count+""+(i+1));
	                		sb.append("\",\"url\":\"");  
							sb.append(menuLink.getLinkUrl());  
	                		sb.append("\"");  
	                		sb.append("}]");  
	            		} else{ 
							sb.append("{\"icon\":\"icon-nav\",");			
					        sb.append("\"menuname\":\"");
					        sb.append(menuLink.getDisplayRef()); //二级菜单名	
							//System.out.println(menuLink.getDisplayRef());
							sb.append("\",\"menuid\":\"");
							sb.append(count+""+(i+1));
							sb.append("\",\"url\":\"");  
							sb.append(menuLink.getLinkUrl()); //请求的url
							//System.out.println(menuLink.getLinkUrl());
							sb.append("\"");  
			                sb.append("},"); 
			                //System.out.println("i的值"+i+"   val的长度"+val.size()+">>"+sb);
		                }
				}
			}
			sb.append("},");
			}
		}
	}
			//System.out.println(sb.toString());
			String str = sb.toString();
			if("[".equals(str)){
				str="";
			}
			User user = (User)request.getSession().getAttribute("user");
		
			
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title><%=BaseConfigHolder.getSystemName() %></title>
		
		<link href="<%=request.getContextPath()%>/admin/jquery/css/default.css" rel="stylesheet" type="text/css" />
    	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/jquery/css/yy.css" />
    	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/jquery/css/icon.css" />
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/jquery/js/jquery-1.8.0.min.js"></script>
	    <script type="text/javascript" src="<%=request.getContextPath()%>/admin/jquery/js/jquery.yy.min.js"></script>
	    <script type="text/javascript" src="<%=request.getContextPath()%>/admin/jquery/js/yy-lang-zh_CN.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/jquery/js/menuUtil.js"> </script>
	</head>

	<script>
		var ctx = '<%=request.getContextPath()%>';
		$(function() {	
			//初始化左侧菜单
			InitLeftMenu(<%=str%>);
			tabClose();
			tabCloseEven();

	        $('#editpass').click(function() {
	        	$('#newPass').val('');
	        	$('#rePass').val('');
	            $('#updatePass').window('open');
	        });
	        $('#btnEp').click(function() {
	            serverLogin();
	        })
			$('#btnCancel').click(function(){closePwd();})
	        $('#loginOut').click(function() {
	        	$.messager.confirm('系统提示', '您确定要退出本次登录吗?', function(r) {
	                if (r) {
	                    //location.href = 'index.jsp';
	                    location.href = ctx+"/admin/logout.action"
	                }
	            });
	        })
	    });
    </script>	
    	
		<body class="yy-layout" style="overflow-y: hidden"  scroll="no">	
		
	<noscript>
		<div style=" position:absolute; z-index:100000; height:2046px;top:0px;left:0px; width:100%; background:white; text-align:center;">
		    <img src="jquery/images/noscript.gif" alt='抱歉，请开启脚本支持！' />
		</div>
	</noscript>
	
	  
    <div region="north" split="true" border="false" style="overflow:hidden;line-height:30px;height:45px; background-color:#4474C9;color: #fff; font-family: Verdana, 微软雅黑,黑体; font-weight:blod;">
			<div class="path">
				<a href="http://shop.letv.com/biyibi/index.html" target="_blank">平台首页</a>
			</div>
			<div class="userInfo">
			<strong><%=user.getRealname()%>   您好!</strong>&nbsp;&nbsp;<a href="#" id="editpass">修改密码</a>&nbsp;&nbsp;
			<a href="#" id="loginOut" >退出登陆</a></div>		
    </div>
  
    <div region="south" split="true" style="height: 30px; background: #D2E0F2; ">
        <div class="footer"> 欢迎使用 </div>
    </div>
    <div region="west" hide="true" split="true" title="导航菜单" style="width:180px;" id="west">
		<div class="accordion" fit="true" border="false"></div>
    </div>
    <div id="mainPanle" region="center" style="background: #eee; overflow-y:hidden">
        <div id="tabs" class="yy-tabs"  fit="true" border="false" >
			<div title="欢迎使用" style="padding:20px;overflow:hidden;" id="home">				
			<h1>欢迎使用!</h1>
			</div>
		</div>
    </div>    
    
    <!--修改密码窗口-->
    <div id="updatePass" class="yy-window" title="修改密码" collapsible="false" minimizable="false" closed="true"
        maximizable="false" icon="icon-save"  style="width: 300px; height: 150px; padding: 5px;background: #fafafa;" >
        <div class="yy-layout" fit="true">
            <div region="center" border="false" style="padding: 10px; background: #fff; border: 1px solid #ccc;overflow: hidden;">
                <table cellpadding=3>
                    <tr>
                        <td>新密码：</td>
                        <td><input id="newPass" type="password" class="txt01" /></td>
                    </tr>
                    <tr>
                        <td>确认密码：</td>
                        <td><input id="rePass" type="password" class="txt01" /></td>
                    </tr>
                </table>
            </div>
            <div region="south" border="false" style="text-align: right; height: 30px; line-height: 30px;">
                <a id="btnEp" class="yy-linkbutton" icon="icon-ok" href="javascript:void(0)" >确定</a>
				<a id="btnCancel" class="yy-linkbutton" icon="icon-cancel" href="javascript:void(0)">取消</a>
            </div>
        </div>
    </div>
	<div id="mm" class="yy-menu" style="width:150px;">
		<div id="mm-tabupdate">刷新</div>
		<div class="menu-sep"></div>
		<div id="mm-tabclose">关闭</div>
		<div id="mm-tabcloseall">全部关闭</div>
		<div id="mm-tabcloseother">除此之外全部关闭</div>
		<div class="menu-sep"></div>
		<div id="mm-tabcloseright">当前页右侧全部关闭</div>
		<div id="mm-tabcloseleft">当前页左侧全部关闭</div>
		<div class="menu-sep"></div>
		<div id="mm-exit">退出</div>
	</div>
</body>	
</html>