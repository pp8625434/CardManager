package com.base.framework.web.taglib;

import java.io.IOException;
import java.util.Map;

import javax.servlet.jsp.JspException;

import com.manage.enumeration.EnumerationHelper;
import com.base.util.BeanUtil;
import com.base.framework.web.taglib.component.TagBuilder;
import com.base.framework.web.taglib.component.TagBuilderFactory;
import com.base.framework.web.taglib.component.bean.SelectTagBean;

/**
 * 
 * @author 
 * 
 */
public class SelectTag extends AbstractTag {
	public static final String SELECT_TAG_TYPE_SELECT = "select";
	public static final String SELECT_TAG_TYPE_RADIO = "radio";
	public static final String SELECT_TAG_TYPE_CHECKBOX = "checkbox";
	
	private String emu;

	private String defaultValue;

	private String name;

	//private String onclick;
	
	private String isLabel;
	
	private String type;
	
	private String multiple;

	public String getEmu() {
		return emu;
	}

	public void setEmu(String emu) {
		this.emu = emu;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	/*
	public String getOnclick() {
		return onclick;
	}

	public void setOnclick(String onclick) {
		this.onclick = onclick;
	}
	*/

	public int doEndTag() throws JspException {
		evaluateParams();
		
		TagBuilder builder = TagBuilderFactory.getSelectTagBuilder();
		SelectTagBean bean = new SelectTagBean();
		Map mapping = EnumerationHelper.getEnumerationValueMap(getEmu());
		bean.setName(this.getName());
		bean.setMapping(mapping);
		bean.setDefaultValue(getDefaultValue(this.getName()));
		bean.setLabel(needLabel());
		bean.setMultiple(needMultiple());
		bean.setType(type == null ? SELECT_TAG_TYPE_SELECT : type);
		bean.setParameters(this.getParameters());
		String html = builder.build(bean);
		try {
			pageContext.getOut().print(html);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}

	private String getDefaultValue(String fieldName) {
        int pointIndex = 0;
        pointIndex = fieldName.indexOf(".");
        if (pointIndex<=1 || pointIndex+1 >=fieldName.length() )
        	return "";
		String beanName = fieldName.substring(0,fieldName.indexOf("."));
		 String beanFieldName = fieldName.substring( fieldName.indexOf(".") +1 );
		 
		Object bean = pageContext.getRequest().getAttribute(beanName);
		if (bean == null )
			 return defaultValue != null ? defaultValue:"";
	 Object returnValue = BeanUtil.getPropertyValue(bean,beanFieldName);
	  if (returnValue != null )
           return returnValue.toString();
	  else
		  return defaultValue != null ? defaultValue:"";

	}

	
	private boolean needLabel() {
		return this.getIsLabel() != null && "true".equals(this.getIsLabel());
	}
	
	private boolean needMultiple() {
		return this.getMultiple() != null && "true".equals(this.getMultiple());
	}
	
	public String getDefaultValue() {
		return defaultValue;
	}

	public void setDefaultValue(String defaultValue) {
		this.defaultValue = defaultValue;
	}

	public String getIsLabel() {
		return isLabel;
	}

	public void setIsLabel(String isLabel) {
		this.isLabel = isLabel;
	}

	public String getMultiple() {
		return multiple;
	}

	public void setMultiple(String multiple) {
		this.multiple = multiple;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}
