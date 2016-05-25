package com.base.framework.web.taglib.component.builder;

import com.base.framework.web.taglib.component.TagBuilder;
import com.base.framework.web.taglib.component.TagInfoBean;


public class DateTagBuilder implements TagBuilder {

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.base.framework.web.taglib.component.TagBuilder#build(com.base.framework.web.taglib.component.TagInfoBean)
	 */
	public String build(TagInfoBean bean) {
		// TODO Auto-generated method stub
		StringBuffer sb = new StringBuffer();
		sb.append("<script type='text/javascript'> \n");
		sb.append("Calendar.setup({\n");
		sb.append("inputField     :    '" + bean.getName() + "',\n");
		sb.append("ifFormat       :    '%Y-%m-%d', \n");
		// sb.append("button : 'order.sendTime_button',");
		sb.append("singleClick    :    true,\n");
		sb.append("step           :    1\n");
		sb.append("});\n");
		sb.append("</script>\n");
		return sb.toString();
	}

}
