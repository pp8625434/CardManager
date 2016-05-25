package com.base.framework.web.taglib.component.builder;

import com.base.framework.web.taglib.component.TagBuilder;
import com.base.framework.web.taglib.component.TagInfoBean;
import com.base.framework.web.taglib.component.bean.SelectTagBean;


public class LookupTagBuilder implements TagBuilder {

	public String build(TagInfoBean bean) {
		SelectTagBean selectBean = (SelectTagBean)bean;
		String lookup = selectBean.getLookup();
		String prefix = lookup.substring(0, lookup.indexOf("_") + 1);
		String lookupName = lookup.substring(prefix.length());
		return "<span onclick=\"" + prefix + "lookupPOP('" + lookupName+ "')\"><img src=\"/images/lookup.gif\" width=\"18\" height=\"17\" border=\"0\" style=\"cursor: hand\"/></span>";
	}

}
