package com.base.framework.web.taglib.component.builder;

import com.base.framework.BaseConfigHolder;
import com.base.framework.paging.Page;
import com.base.framework.web.taglib.component.TagBuilder;
import com.base.framework.web.taglib.component.TagBuilderFactory;
import com.base.framework.web.taglib.component.TagInfoBean;
import com.base.framework.web.taglib.component.bean.PageTagBean;


public class LucenePageTagBuilder implements TagBuilder {

	public String build(TagInfoBean bean) {
		PageTagBean pageBean = (PageTagBean)bean;
		StringBuffer sb = new StringBuffer();
		Page page = pageBean.getPage();
		String currentPage = pageBean.getCurrentPage();
		int maxPage = page.getTotalPage();
		int startPage = getStartPage(currentPage);
		int endPage = getEndPage(currentPage,maxPage);
		
		sb.append(  "共" + page.getTotalRecords() + "条 ");
		sb.append(  getFirstPageStr(currentPage, pageBean) );
		sb.append(  getBackPageStr( currentPage, pageBean ) );
		
		
		for (int i = startPage; i <= endPage; i++) {
			 
			if (currentPage.equals( new Integer(i).toString()))
			{
				sb.append( currentPageStr( new Integer(i).toString() , pageBean ));
			}
			else{
				sb.append( anchorPageStr( new Integer(i).toString(), i, pageBean ) ) ;
			}
			
		}
		
		sb.append(  getFrontPageStr(currentPage, maxPage, pageBean ) );
		sb.append(  getLastPageStr( currentPage, maxPage, pageBean ) );
		sb.append(  " 共" + page.getTotalPage() + "页");
		sb.append(  goPage(pageBean));
		
		sb.append(getHiddenInput(pageBean));// modify  -- add hidden filed to set currentpage value
		return sb.toString();
	}
	
	private String currentPageStr(String currntPage, PageTagBean pageBean){
		TagBuilder builder = TagBuilderFactory.getTextTagBuilder() ;
		TagInfoBean bean = new TagInfoBean();
		bean.setDefaultValue( currntPage );
		String html = builder.build(bean);
		if(pageBean.getCurrentPageClass() != null){
			html = "<span class=\"" + pageBean.getCurrentPageClass() + "\">" + html + "</span>"; 
		}
		
		return html+ "&nbsp;";
	}
	
	private String getLastPageStr(String currentPage2, int maxPage, PageTagBean pageBean) {
		  int currentPage_i = new Integer(currentPage2).intValue();
		  
		if ( currentPage_i >= maxPage )
			return textPageStr("尾页");
		else
				
		   return anchorPageStr("尾页", maxPage, pageBean);
	}

	
	private String getFrontPageStr(String currentPage2, int maxPage, PageTagBean pageBean) {
		  int currentPage_i = new Integer(currentPage2).intValue();
		  
			if ( currentPage_i >= maxPage )
				return textPageStr("下一页");
			else
					
			   return anchorPageStr("下一页",currentPage_i + 1, pageBean );
		 
	}

	private String getBackPageStr( String currentPage2, PageTagBean pageBean) {
		
       int currentPage_i = new Integer(currentPage2).intValue();
		
		if ( currentPage_i == 1 )
			return textPageStr("上一页");
		else
				
		   return anchorPageStr("上一页",currentPage_i -1, pageBean );
	}

	private String getFirstPageStr( String currentPage2, PageTagBean pageBean) {
		int currentPage_i = new Integer(currentPage2).intValue();
		
		if ( currentPage_i == 1 )
			return textPageStr("首页");
		else
				
		   return anchorPageStr("首页" ,1, pageBean);
	}


	private String anchorPageStr(String string, int i, PageTagBean pageBean) {
		TagBuilder builder = TagBuilderFactory.getAnchorTagBuilder();
     
		TagInfoBean bean = new TagInfoBean();

	    bean.setUrl("javascript:" +buildJS(i, pageBean));
	 
		bean.setDefaultValue( string );
		 
		return builder.build(bean)+ "&nbsp;"; 
	}

	private String textPageStr(String string) {
		TagBuilder builder = TagBuilderFactory.getTextTagBuilder() ;
	       
		TagInfoBean bean = new TagInfoBean();
		
		bean.setDefaultValue( string );
		 
		return builder.build(bean) + "&nbsp;";
	}

	private int getEndPage(String currentPage2,int maxPage) {
		int pageNum = BaseConfigHolder.getCurrnetMiddlePage() * 2 - 1;   // 每个页面中显示分页信息的数量
		int returnValue = 1;
		int startPage = getStartPage(currentPage2);
		returnValue = startPage + pageNum ;
		
		if (returnValue > maxPage )
			return maxPage ;
		
		return returnValue;
		
		
	}

	private int getStartPage(String currentPage2) {
		int middlePage = BaseConfigHolder.getCurrnetMiddlePage() - 1;  // 当前页在中间的位置。
		int returnValue = 1 ;
		int currPageNum = 1;
		
		try{
			currPageNum = new Integer(currentPage2).intValue();
		}
		catch(Exception e)
		{
			currPageNum = 1 ;
		}
		
		returnValue = currPageNum -middlePage ;
		if (returnValue < 1 )
			return 1 ;
		
		
		return returnValue;
		 
	}
	
	private String goPage(PageTagBean bean){
		StringBuffer sb = new StringBuffer();
		String textClass = bean.getTextClass();
		String buttonClass = bean.getButtonClass();
		String readOnly = "";
		if(bean.getPage().getTotalPage()<=1){
			readOnly = " readonly ";
		}
		sb.append("到<input type=\"text\"");
		sb.append(" name=\"pageOrder\"");
		sb.append(" id=\"pageOrder\"");
		sb.append(" size=\"1\"");
		sb.append(readOnly);
		sb.append(" maxlength=\"5\"");
		if(textClass != null)
			sb.append(" class=\"" + textClass + "\"");
		sb.append(" />页");
		
		sb.append("<input type='button'");
		sb.append(" name='button'");
		if(buttonClass != null)
			sb.append(" class=\"" + buttonClass + "\"");
		sb.append(" onclick=\"javascript:checkThenSubmit(\'" + bean.getPageBeanName() + "\',\'" + bean.getUrl()
				+ "\',\'" + bean.getForm() + "\',document.getElementById(\'pageOrder\').value,\'" + bean.getPage().getTotalPage() + "\')\"");
		sb.append(" value='跳转'");
		sb.append(" />");
//		sb.append("</form>");
		return sb.toString();
	}
	
	private String getHiddenInput(PageTagBean bean) {
		StringBuffer sb = new StringBuffer();
		sb.append("<input type='hidden'");
		sb.append(" value='" + bean.getCurrentPage() + "'");
		sb.append(" name='"+ bean.getPageBeanName() +".currentPage'");
		sb.append(" id='"+ bean.getPageBeanName() +".currentPage'");
		sb.append(" />");
		
		
		sb.append("<input type='hidden'");
		sb.append(" value='" + bean.getCurrentPage() + "'");
		sb.append(" name='currentPage'");
		sb.append(" id='currentPage'");
		sb.append(" />");
		
		if(bean.getLookup() != null)
			sb.append("<input type='hidden' name='lookup' value='1' id='lookup'/>");
		
		String pageSize = bean.getPageSize();
		if(pageSize != null)
			sb.append("<input type='hidden' name='pageInfo.pageSize' value='"+ pageSize +"' id='pageInfo.pageSize'/>");
		
		return sb.toString();
	}

	private String buildJS(int i, PageTagBean pageBean) {

		if (pageBean.getForm() == null)
			pageBean.setForm("formSearch");
		return "pageSubmit('" + pageBean.getPageBeanName() + "','" + pageBean.getUrl()
				+ "','" + pageBean.getForm() + "','" + i
				+ "')";
	}

}
