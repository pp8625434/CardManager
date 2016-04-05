package com.base.framework.web.taglib.component.builder;

import com.base.framework.web.taglib.component.TagBuilder;
import com.base.framework.web.taglib.component.TagInfoBean;
import com.base.framework.web.taglib.component.bean.SelectTagBean;

public class LookupTextTagBuilder implements TagBuilder {

	public String build(TagInfoBean bean) {
		SelectTagBean selectBean = (SelectTagBean)bean;
		return "<span onclick=\"lookupPOP('" + selectBean.getLookup()+ "')\" style=\"cursor: hand\">���Ҵ��</span>";
	}

}
