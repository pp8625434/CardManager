
	//保存信息
	function selectType() {
		var nodesId = $("#ele_id").val();
		var nodesName = $("#ele_name").val();
		var type = $("#ntype").val();
		var url;
		if(type =="0"){//选择人员
			url = ctx+"/user/configUserList.action?lookup=1";
		}else if(type =="1"){//选择机构
			url = ctx+"/org/configorgList.action?lookup=1";
		}else if(type=="2"){//选择角色
			url = ctx+"/admin/configRoleList.action?lookup=1";
		}
		
		window.open(url, "frm", "width=1300,height=735,scrollbars=yes");
	}
	
	
	function  selectUserConfig(userid,uname){
		window.opener.document.getElementById("ele_name").value=uname;
		window.opener.document.getElementById("userid").value=userid;
		window.close();	
	}
	
	function selectOrgConfig(orgid,orgname){
		window.opener.document.getElementById("ele_name").value=orgname;
		window.opener.document.getElementById("orgid").value=orgid;
		window.close();	
	}
	
	function selectRoleConfig(roleid,rolename){
		window.opener.document.getElementById("ele_name").value=rolename;
		window.opener.document.getElementById("roleid").value=roleid;
		window.close();	
	}
	
	function selectOne(obj){
		if(obj =="1"){
			var temp="<tr id=\"orgdomtype\"><td>审批权限：</td>";
			temp+="<td><select id=\"orgtype\" name=\"fnConfig.orgtype\">";
			temp+="<option value=\"0\">所有人可以审批</option>";
			temp+="<option value=\"1\">领导可以审批 </option>";
			temp+="<option value=\"2\">正领导可以审批</option>";	
			temp+="<option value=\"2\">副领导可以审批</option>";	
			temp+="</select>";
			temp+="</td></tr>";
			$("#domName").append(temp);
		}
	}