package com.base.framework.security.taglib;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.jsp.JspException;

import com.base.util.Utils;
import com.manage.cache.SecurityUtils;
import com.manage.menu.model.BMenuLink;

public class LabelTag extends AbstractTag {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3335474485590253741L;

	public static final String Label_TAG_TYPE_A = "a";
	
	public static final String Label_TAG_TYPE_SPAN = "span";
	
	public static final String Label_TAG_TYPE_DIV = "div";
	
	public static final String Label_TAG_TYPE_P = "p";
	
	public static final String STRING_DH =",";
	
	public static final String STRING_SPACE="　　　　　";
	
	/**
	 * 菜单ID
	 */
	private String mlinkid;
	
	/**
	 * 角色ID字符串
	 */
	private String rids;
	
	/**
	 * 按钮类型
	 */
	private String type;
	
	/**
	 * 参数值
	 */
	private String parametervlue;
	private String showids;

	public int doEndTag() throws JspException{
		
		if(type==null || type.trim().equals("")){
			type = Label_TAG_TYPE_A;
		}
		
		//用来存储用户实际拥有的按钮权限
		Map<Integer,BMenuLink> divMap = new TreeMap<Integer,BMenuLink>();
		StringBuffer sb = null;
		String[] rID = rids.split(",");
		for (int i = 0; i < rID.length; i++) {
			Map<Integer, List<BMenuLink>> rbMap = SecurityUtils.getDivHashMapByRole(Integer.parseInt(rID[i]));
			List<BMenuLink> mList = rbMap.get(Integer.parseInt(mlinkid));
			if(mList!=null&&mList.size()>0){
				for (BMenuLink menuLink : mList) {
					divMap.put(Integer.parseInt(menuLink.getOrderNum()+""+menuLink.getId()), menuLink);
				}
			}
		}
		String isshow;
		if(divMap.size()>0){
			sb = new StringBuffer();
			Iterator<BMenuLink> mI = divMap.values().iterator();
			while (mI.hasNext()) {
				isshow = "";
				BMenuLink mLink = mI.next();
				
				if(Utils.isNotNullOrEmpty(showids) && showids.indexOf(STRING_DH+mLink.getId()+STRING_DH)>=0){
					isshow = " style=\"display:none\"";
				}
				sb.append("<"+type+" ");
				
				if(mLink.getMenulinkcss()!=null&&!mLink.getMenulinkcss().equals("")){
					if(cssClass!=null&&!cssClass.equals("")){
						sb.append(" class=\""+mLink.getMenulinkcss()+"\" ");
					}
				}else{
					if(cssClass!=null&&!cssClass.equals("")){
						sb.append(" class=\""+cssClass+"\" ");
					}
					if(cssStyle!=null&&!cssStyle.equals("")){
						sb.append(" style=\""+cssStyle+"\" ");
					}
				}
				String Url = mLink.getLinkUrl();
				if(parametervlue!=null&&!parametervlue.trim().equals("")){
					String p[] = parametervlue.split(",");
					for (String string : p) {
						String[] Temp = string.split(":");
						Url = Url.replace(":"+Temp[0], Temp[1]);
					}
				}
				
				if(type.equals(Label_TAG_TYPE_A)){
					sb.append(" href=\"javascript:"+Url+"\" ");
				}else{
					sb.append(" onclick=\"javascript:"+Url+"\" ");
				}
				sb.append(isshow+" > ");
				sb.append(mLink.getDisplayRef()+"</"+type+"> ");
			}
		}
		
		if(sb!=null){
			try {
				pageContext.getOut().print(sb.toString());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return EVAL_PAGE;
	}
	

	public String getMlinkid() {
		return mlinkid;
	}


	public void setMlinkid(String mlinkid) {
		this.mlinkid = mlinkid;
	}


	public String getRids() {
		return rids;
	}


	public void setRids(String rids) {
		this.rids = rids;
	}


	public String getType() {
		return this.type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getParametervlue() {
		return parametervlue;
	}


	public void setParametervlue(String parametervlue) {
		this.parametervlue = parametervlue;
	}


	public String getShowids() {
		return showids;
	}


	public void setShowids(String showids) {
		this.showids = showids;
	}
	
}
