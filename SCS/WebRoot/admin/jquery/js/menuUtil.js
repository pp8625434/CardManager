var _operatorName_ = {};
function InitLeftMenu(menus) {
    $(".accordion").empty();
    var menulist = "";
    
    getIcon = function (menuid){
	var icon = 'icon ';
	$.each(menus, function(i, n) {
		 $.each(n.menus, function(j, o) {
		 	if(o.menuid==menuid){
				icon += o.icon;
			}
		 })
	})
	return icon;
	}
	if(menus==null){
		return false;
	}
    
    $.each(menus, function(i, n) {
        menulist += '<div title="'+n.menuname+'"  icon="icon '+n.icon+'" style="overflow:auto;">';
				menulist += '<ul>';
        $.each(n.menus, function(j, o) {
			  	menulist += '<li><div><a ref="'+o.menuid+'" href="#" rel="'+ctx+ o.url +'" ><span class="icon '+o.icon+'" >&nbsp;</span><span class="nav">' + o.menuname + '</span></a></div></li> ';
        })
        menulist += '</ul></div>';
        
    })
	$(".accordion").append(menulist);
	
	$('.accordion li a').click(function(){
		
		var tabTitle = $(this).children('.nav').text();
		
		var url = $(this).attr("rel");
		var menuid = $(this).attr("ref");
		var icon = getIcon(menuid,icon);
		
		addTab(tabTitle,url,icon);
		$('.accordion li div').removeClass("selected");
		$(this).parent().addClass("selected");
	}).hover(function(){
		$(this).parent().addClass("hover");
	},function(){
		$(this).parent().removeClass("hover");
	});
	
	$(".accordion").accordion({animate:false});
}

addTab = function(subtitle,url,icon){
	
	if(!$('#tabs').tabs('exists',subtitle)){
		$('#tabs').tabs('add',{
			title:subtitle,
			content:createFrame(url),
			closable:true,
			icon:icon
		});
	}else{
		$('#tabs').tabs('select',subtitle);
		//$('#mm-tabupdate').click();
		var currTab = $('#tabs').tabs('getSelected');
		$('#tabs').tabs('update',{
			tab:currTab,
			options:{
				content:createFrame(url)
			}
		})
		
	}
	$('#mm').data("currtab",subtitle);
	_operatorName_ = subtitle;
	tabClose();
}

createFrame = function(url){
	var  availWidth_screen=screen.availWidth;
	var  iframe_width=availWidth_screen-183;
	var s = '<iframe scrolling="yes" frameborder="0"  src="'+url+'" style="width:'+iframe_width+'px;height:100%;"></iframe>';
	return s;
}

msgShow = function(title, msgString, msgType) {
	$.messager.alert(title, msgString, msgType);
}



tabClose = function (){	
	$(".tabs-inner").dblclick(function(){
		var subtitle = $(this).children(".tabs-closable").text();
		$('#tabs').tabs('close',subtitle);
	})	
	$(".tabs-inner").bind('contextmenu',function(e){
		$('#mm').menu('show', {
			left: e.pageX,
			top: e.pageY
		});
				
		var subtitle =$(this).children(".tabs-closable").text();		
		$('#mm').data("currtab",subtitle);
		$('#tabs').tabs('select',subtitle);
		return false;
	});
}

tabCloseEven = function(){
		
	$('#mm-tabupdate').click(function(){
		var currTab = $('#tabs').tabs('getSelected');
		var url = $(currTab.panel('options').content).attr('src');
		$('#tabs').tabs('update',{
			tab:currTab,
			options:{
				content:createFrame(url)
			}
		})
	})
	//关闭当前
	$('#mm-tabclose').click(function(){
		var currtab_title = $('#mm').data("currtab");
		$('#tabs').tabs('close',currtab_title);
	})
	//全部关闭
	$('#mm-tabcloseall').click(function(){
		$('.tabs-inner span').each(function(i,n){
			var t = $(n).text();
			$('#tabs').tabs('close',t);
		});	
	});
	//关闭除当前之外的TAB
	$('#mm-tabcloseother').click(function(){
		$('#mm-tabcloseright').click();		
		$('#mm-tabcloseleft').click();
	});
	//关闭当前右侧的TAB
	$('#mm-tabcloseright').click(function(){
		var nextall = $('.tabs-selected').nextAll();
		if(nextall.length==0){
			//msgShow('系统提示','后边没有啦~~','error');
			alert('后边没有啦~~');
			return false;
		}
		nextall.each(function(i,n){
			var t=$('a:eq(0) span',$(n)).text();
			$('#tabs').tabs('close',t);
		});
		return false;
	});
	//关闭当前左侧的TAB
	$('#mm-tabcloseleft').click(function(){
		var prevall = $('.tabs-selected').prevAll();
		if(prevall.length==0){
			alert('到头了，前边没有啦~~');
			return false;
		}
		prevall.each(function(i,n){
			var t=$('a:eq(0) span',$(n)).text();
			$('#tabs').tabs('close',t);
		});
		return false;
	});

	//退出
	$("#mm-exit").click(function(){
		$('#mm').menu('hide');
	})
}

closePwd = function () {
            	$('#updatePass').window('close');
        	}

serverLogin = function () {
	
	            var $newpass = $('#newPass');
	            var $rePass = $('#rePass');
				
	            if ($newpass.val() == '') {
	                msgShow('系统提示', '请输入密码！', 'warning');
	                return false;
	            }
	            if ($newpass.val().length <6 ) {
	                msgShow('系统提示', '密码最少为6位！', 'warning');
	                return false;
	            }
	            if ($rePass.val() == '') {
	                msgShow('系统提示', '请输入确认密码！', 'warning');
	                return false;
	            }
	            if ($newpass.val() != $rePass.val()) {
	                msgShow('系统提示', '两次密码不一致！请重新输入', 'warning');
	                return false;
	            }
	            $.ajax({
					url: ctx+"/user/changePassWord.action",
					type: "post", 
					data: {"userName":$newpass.val()},
					dataType: 'json',
					success: function(data){
						if(data == "succ"){
							 msgShow('系统提示', '恭喜，密码修改成功！', 'info');
							 closePwd();
						}else if(data == "false"){
							 msgShow('系统提示', '密码修改失败！', 'info');
							 closePwd();
						}
					}
					
				})  
        	}	
        	
function chancleButton(currtab_title){
	if(currtab_title){
		$('#tabs').tabs('close',currtab_title);
	}
}
        	