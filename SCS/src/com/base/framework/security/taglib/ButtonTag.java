package com.base.framework.security.taglib;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.jsp.JspException;

import com.manage.cache.SecurityUtils;
import com.manage.menu.model.BMenuLink;

public class ButtonTag extends AbstractTag {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3335474485590253741L;

	public static final String BUTTON_TAG_TYPE_BUTTON = "button";
	
	public static final String BUTTON_TAG_TYPE_SUBMIT = "submit";
	
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


	public int doEndTag() throws JspException{
		
		//用来存储用户实际拥有的按钮权限
		Map<Integer,BMenuLink> buttonMap = new TreeMap<Integer,BMenuLink>();
		StringBuffer sb = null;
		String[] rID = rids.split(",");
		for (int i = 0; i < rID.length; i++) {
			Map<Integer, List<BMenuLink>> rbMap = SecurityUtils.getButtonHashMapByRole(Integer.parseInt(rID[i]));
			List<BMenuLink> mList = rbMap.get(Integer.parseInt(mlinkid));
			if(mList!=null&&mList.size()>0){
				for (BMenuLink menuLink : mList) {
					buttonMap.put(Integer.parseInt(menuLink.getOrderNum()+""+menuLink.getId()), menuLink);
				}
			}
		}
		
		if(buttonMap.size()>0){
			sb = new StringBuffer();
			Iterator<BMenuLink> mI = buttonMap.values().iterator();
			Map<Integer, BMenuLink> orderMap = new TreeMap<Integer, BMenuLink>();
			while (mI.hasNext()) {
				BMenuLink mLink = mI.next();
				if(type!=null&&!type.equals("")){
					sb.append("<input type=\""+type+"\" ");
				}else{
					sb.append("<input type=\""+BUTTON_TAG_TYPE_BUTTON+"\" ");
				}
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
				sb.append(" value=\""+mLink.getDisplayRef()+"\" ");
				String Url = mLink.getLinkUrl();
				if(parametervlue!=null&&!parametervlue.trim().equals("")){
					String p[] = parametervlue.split(",");
					for (String string : p) {
						String[] Temp = string.split(":");
						Url = Url.replace(":"+Temp[0], Temp[1]);
					}
				}
				sb.append(" onclick=\""+Url+"\" ");
				
				sb.append(" /> ");
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
}
