package com.base.framework.web.taglib.component.builder;

import com.base.framework.web.taglib.component.TagBuilder;
import com.base.framework.web.taglib.component.TagInfoBean;


public class InputTagBuilder implements TagBuilder {

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.base.framework.web.taglib.component.TagBuilder#build(com.base.framework.web.taglib.component.TagInfoBean)
	 */
	public String build(TagInfoBean bean) {
		return "<input type=\"text\" name=\"" + bean.getName() + "\" value=\"" + bean.getDefaultValue() + "\""
				+BuilderTools.getParameters(bean.getParameters())+"/>";
	}

}
