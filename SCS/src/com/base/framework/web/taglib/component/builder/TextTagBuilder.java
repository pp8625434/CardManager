package com.base.framework.web.taglib.component.builder;

import com.base.framework.web.taglib.component.TagBuilder;
import com.base.framework.web.taglib.component.TagInfoBean;


public class TextTagBuilder implements TagBuilder {

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.base.framework.web.taglib.component.TagBuilder#build(com.base.framework.web.taglib.component.TagInfoBean)
	 */
	public String build(TagInfoBean bean) {
		// TODO Auto-generated method stub
		String html =  bean.getDefaultValue();
		return html+"&nbsp;&nbsp;";
	}

}
