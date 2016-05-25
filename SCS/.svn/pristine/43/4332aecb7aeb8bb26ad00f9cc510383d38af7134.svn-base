package com.base.framework.web.taglib;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.jsp.JspException;

import org.apache.commons.collections.map.LinkedMap;
import com.manage.enumeration.EnumerationHelper;
import com.base.framework.web.taglib.component.TagBuilder;
import com.base.framework.web.taglib.component.TagBuilderFactory;
import com.base.framework.web.taglib.component.TagInfoBean;
import com.base.framework.web.taglib.component.bean.SelectTagBean;



public class SearchListTag extends AbstractTag {
	
	private String name;
	
	private String emu;
	
	private String defaultValue;
	
	private String id;

	private String lookup;

	private String needSelect;

	private String br;

	private String isDate;

	private String dateFormat;

	public String getDateFormat() {
		return dateFormat;
	}

	public void setDateFormat(String dateFormat) {
		this.dateFormat = dateFormat;
	}

	public String getIsDate() {
		return isDate;
	}

	public void setIsDate(String isDate) {
		this.isDate = isDate;
	}

	public int doEndTag() throws JspException {
		StringBuffer sb = new StringBuffer();
		evaluateParams();
		
		if (needSelect()) {
			sb.append(buildSelect());
		}
		
		sb.append(builderInput());

		if (isDateInput()) {
			sb = new StringBuffer();
			sb.append(builderDateInput());
		}
		if (isLookUp()) {
			sb.append(builderLookup());
		}
		if(isEmu()) {
			sb = new StringBuffer();
			sb.append(this.buildSelectElement());
		}
		if (needBR()) {
			sb.append("<br/>");
		}
		try {
			pageContext.getOut().print(sb.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}
	private String buildSelectElement() {
		TagBuilder builder = TagBuilderFactory.getSelectTagBuilder();
		SelectTagBean bean = new SelectTagBean();
		Map emuMapping = EnumerationHelper.getEnumerationValueMap(getEmu());
		Map resultMapping = new LinkedMap();
		resultMapping.put("","全部");
		resultMapping.putAll(emuMapping);
		bean.setName(this.getName());
		bean.setType(SelectTag.SELECT_TAG_TYPE_SELECT);
		bean.setMultiple(false);
		bean.setMapping(resultMapping);
		bean.setDefaultValue(this.getPageDefaultValue());
		bean.setParameters(this.getParameters());
		String html = builder.build(bean);
		return html;
	}
	private boolean isEmu() {
		return this.getEmu()!=null? true:false;
	}
	private boolean isLookUp() {
		return this.getLookup() != null ? true : false;
	}

	private String builderLookup(){
		TagBuilder builder = TagBuilderFactory.getLookupTagBuilder();
		SelectTagBean bean = new SelectTagBean();
		bean.setName(this.getName());
		bean.setLookup(this.lookup);
		bean.setParameters(this.getParameters());
		return builder.build(bean);
	}
	
	private String builderDateInput() {
		TagBuilder builder = TagBuilderFactory.getDateTagBuilder();
		TagInfoBean bean = new TagInfoBean();
		bean.setName(this.getName());
		bean.setParameters(this.getParameters());
		return builder.build(bean);
	}

	private String builderInput() {
		TagBuilder builder = TagBuilderFactory.getInputTagBuilder();
		TagInfoBean bean = new TagInfoBean();
		bean.setName(this.getName());
		bean.setDefaultValue(getPageDefaultValue());
		bean.setParameters(this.getParameters());
		return builder.build(bean);
	}

	private boolean isDateInput() {
		return this.getIsDate() != null && "true".equals(this.getIsDate());
	}

	private boolean needBR() {
		return this.getBr() == null || "true".equals(this.getBr());
	}

	private String buildSelect() {
		TagBuilder builder = TagBuilderFactory.getSelectTagBuilder();
		SelectTagBean bean = new SelectTagBean();
		Map map = new LinkedHashMap();
		map.put("", "操作符");
		map.put("&lt;", "小于");
		map.put("&gt;", "大于");
		map.put("=", "等于");
		map.put("&lt;=", "小于等于");
		map.put("&gt;=", "大于等于");
		bean.setMapping(map);
		bean.setType(SelectTag.SELECT_TAG_TYPE_SELECT);
		bean.setMultiple(false);
		bean.setName(this.getName() + "_op");
		bean.setDefaultValue("");
		return builder.build(bean);
	}

	private String getPageDefaultValue() {
		Object value = pageContext.getRequest().getParameter(this.getName());
		return value == null ? "" : value.toString();
	}

	private boolean needSelect() {
		boolean needSelect = false;
		if ("true".equals(this.getNeedSelect())) {
			needSelect = true;
		}
		return needSelect;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNeedSelect() {
		return needSelect;
	}

	public void setNeedSelect(String needSelect) {
		this.needSelect = needSelect;
	}

	public String getBr() {
		return br;
	}

	public void setBr(String br) {
		this.br = br;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLookup() {
		return lookup;
	}

	public void setLookup(String lookup) {
		this.lookup = lookup;
	}

	

	public void setEmu(String emu) {
		this.emu = emu;
	}

	public String getDefaultValue() {
		return defaultValue;
	}

	public void setDefaultValue(String defaultValue) {
		this.defaultValue = defaultValue;
	}

	public String getEmu() {
		return emu;
	}
}
