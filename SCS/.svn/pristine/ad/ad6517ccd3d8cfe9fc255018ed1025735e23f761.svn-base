package com.base.framework.web.taglib;

import java.io.IOException;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspException;

import com.base.framework.paging.Page;
import com.base.framework.web.taglib.component.TagBuilder;
import com.base.framework.web.taglib.component.TagBuilderFactory;
import com.base.framework.web.taglib.component.bean.PageTagBean;

/**
 * @see: 分页标签，从request中获得Page对象，通过page对象进行分页，
 */
public class PageTag extends AbstractTag {
	
	private String pageBeanName;
	private String form;
	private String currentPage;
	private String url;
	private String textClass;
	private String buttonClass;
	private String currentPageClass;

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}

	public String getPageBeanName() {
		return pageBeanName;
	}

	public void setPageBeanName(String pageBeanName) {
		this.pageBeanName = pageBeanName;
	}

	public int doEndTag() throws JspException {
		Page page = getPage(pageContext.getRequest());
		if (page == null) {
			return EVAL_PAGE;
		}
	
		if(pageContext.getRequest().getParameter("currentPage") != null ){
			currentPage = pageContext.getRequest().getParameter("currentPage");
		}
		
		TagBuilder builder = TagBuilderFactory.getPageTagBuilder();
		PageTagBean bean = new PageTagBean();
		
		if(this.currentPage == null || this.currentPage.trim().equals(""))
			this.currentPage = "1";
		bean.setCurrentPage(this.currentPage);
		
		bean.setUrl(this.url);
		bean.setForm(this.form);
		
		if(this.pageBeanName == null || this.pageBeanName.trim().equals(""))
			this.pageBeanName = "pageInfo";
		bean.setPageBeanName(this.pageBeanName);
		
		bean.setPage(page);
		bean.setLookup(pageContext.getRequest().getParameter("lookup"));
		bean.setPageSize(pageContext.getRequest().getParameter("pageInfo.pageSize"));
		bean.setButtonClass(buttonClass);
		bean.setTextClass(textClass);
		bean.setCurrentPageClass(currentPageClass);
		
		String html = builder.build(bean);
		try {
			pageContext.getOut().print(html);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}

	private Page getPage(ServletRequest request) {
		Object page = null;
		if ((page = request.getAttribute(this.getPageBeanName())) != null) {
			return (Page) page;
		}
		return (Page) page;
	}

	public String getAction() {
		return form;
	}

	public void setAction(String action) {
		this.form = action;
	}

	public String getForm() {
		return form;
	}

	public void setForm(String form) {
		this.form = form;
	}

	public String getButtonClass() {
		return buttonClass;
	}

	public void setButtonClass(String buttonClass) {
		this.buttonClass = buttonClass;
	}

	public String getCurrentPageClass() {
		return currentPageClass;
	}

	public void setCurrentPageClass(String currentPageClass) {
		this.currentPageClass = currentPageClass;
	}

	public String getTextClass() {
		return textClass;
	}

	public void setTextClass(String textClass) {
		this.textClass = textClass;
	}

}
