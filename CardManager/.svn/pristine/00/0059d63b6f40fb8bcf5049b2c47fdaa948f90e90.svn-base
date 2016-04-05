package com.base.framework.web.taglib.component.builder;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

import com.base.util.StringUtils;
import com.base.framework.web.taglib.SelectTag;
import com.base.framework.web.taglib.component.TagBuilder;
import com.base.framework.web.taglib.component.TagInfoBean;
import com.base.framework.web.taglib.component.bean.SelectTagBean;


public class SelectTagBuilder implements TagBuilder {

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.base.framework.web.taglib.TagBuilder#build(com.base.framework.web.taglib.TagInfoBean)
	 */
	public String build(TagInfoBean bean) {
		SelectTagBean selectBean = (SelectTagBean) bean;
		Map mapping = selectBean.getMapping();
		
		Set<String> values = new LinkedHashSet<String>();

		String key = selectBean.getDefaultValue().trim();
		//����ѡ��ֵ�ŵ�������
		if( key != null ){
			if(selectBean.isMultiple())
				values = StringUtils.strToSet(key);
			else{
				if(key.indexOf(",")>=0){
					String[] tmp = key.split(",");
					for(int i=0;i<tmp.length;i++){
						values.add(tmp[i].trim());
					}
				}else{
					values.add(key);
				}
			}
		}
		
		if(selectBean.isLabel()){
			
			if( key == null || key.trim().equals(""))
				return "";
			
			
			StringBuffer sb = new StringBuffer("");
			int i = 0;
			for (String value : values) {
				Object obj = mapping.get(new Integer(value));
				
				if(i>0)
					sb.append(",");
				
				if(obj != null)
					sb.append(obj);
				
				i++;
			}
			
			return sb.toString();
		}
		
		if(selectBean.getType().equals(SelectTag.SELECT_TAG_TYPE_SELECT)){
			return buildSelect(selectBean, bean, values);
		}
		else if(selectBean.getType().equals(SelectTag.SELECT_TAG_TYPE_CHECKBOX) || selectBean.getType().equals(SelectTag.SELECT_TAG_TYPE_RADIO))
			return buildCheck(selectBean, bean, values, selectBean.getType());

		return "";

	}
	
	protected String buildSelect(SelectTagBean selectBean, TagInfoBean bean, Set values){
		Map mapping = selectBean.getMapping();
		StringBuffer sb = new StringBuffer();
		//sb.append("<DIV id=\"DivTag\" display=\"none\" > ");
		sb.append("<select");
		sb.append(" name=\"" + selectBean.getName() + "\" ");
		sb.append(BuilderTools.getParameters(bean.getParameters()));
		if(selectBean.isMultiple())
			sb.append(" multiple=\"multiple\"");
		sb.append(" >");
		Iterator it = mapping.keySet().iterator();
		while (it.hasNext()) {
			Object keyValue =  it.next();
			String value = (String) mapping.get(keyValue);
			String selected = "";
			if (selectBean.getDefaultValue() != null
					&& values.contains(keyValue.toString())) {
				selected = "selected";
			}
			sb.append(" <option " + selected + " value=\"" + keyValue + "\">");
			sb.append(value + "</option>");
		}
		sb.append("</select>");
		//sb.append(" </div> ");
		return sb.toString();
	}

	protected String buildCheck(SelectTagBean selectBean, TagInfoBean bean, Set values, String type){
		Map mapping = selectBean.getMapping();
		StringBuffer sb = new StringBuffer();
		Iterator it = mapping.keySet().iterator();
		String temp[]=null;
		while(it.hasNext()){
			Object keyValue = it.next();
			String value = (String) mapping.get(keyValue);
			String selected = "";
			if(type!=null && type.equals("checkbox")){
				if (selectBean.getDefaultValue() != null) {
					temp = selectBean.getDefaultValue().split(",");
					if(temp != null && temp.length>0){
						for(int i =0;i<temp.length;i++){
							if(keyValue.toString().equals(temp[i].trim())){
								selected = "checked";
							}
						}
					}
					
				}
			}else{
				if (selectBean.getDefaultValue() != null && values.contains(keyValue.toString())) {
					selected = "checked";
				}
			}
			
			sb.append("<label ").append(BuilderTools.getParameters(bean.getParameters())).append(">");
			sb.append("<input type=\""+type+"\" name=\""+ bean.getName() +"\" value=\""+keyValue+"\" ");
			sb.append(BuilderTools.getParameters(bean.getParameters()));
			sb.append(selected).append(" ");
			sb.append("/>" + value);
			sb.append("</label>");
		}
		
		return sb.toString();
	}
	

}
