package com.base.framework.web.taglib.component.builder;

import java.util.Iterator;
import java.util.Map;

import com.base.framework.web.taglib.component.TagBuilder;
import com.base.framework.web.taglib.component.TagInfoBean;
import com.base.framework.web.taglib.component.bean.SelectTagBean;


public class EntityTagBuilder implements TagBuilder {

	public String build(TagInfoBean bean) {
		SelectTagBean selectBean = (SelectTagBean) bean;
		Map mapping = selectBean.getMapping();
		StringBuffer sb = new StringBuffer();
		
		sb.append("<select");
		sb.append(BuilderTools.getParameters(bean.getParameters()));
		
		if(bean.getOnEvent() != null && !bean.getOnEvent().trim().equals(""))
			sb.append(" " + bean.getOnEvent());
		
		sb.append(" >");
		
		Iterator it = mapping.keySet().iterator();
		while (it.hasNext()) {
			Object key =  it.next();
			String value = (String) mapping.get(key);
			String selected = "";
			if (selectBean.getDefaultValue() != null
					&& selectBean.getDefaultValue().equals(key.toString())) {
				selected = "selected";
			}
			sb.append(" <option " + selected + " value=\"" + key + "\">");
			sb.append(value + "</option>");
		}
		sb.append("</select>");
		return sb.toString();
	}

}
