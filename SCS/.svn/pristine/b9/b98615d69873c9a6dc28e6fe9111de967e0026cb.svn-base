package com.base.framework.web.taglib.component;

import com.base.framework.BaseConfigHolder;
import com.base.framework.web.taglib.component.builder.AnchorTagBuilder;
import com.base.framework.web.taglib.component.builder.DateTagBuilder;
import com.base.framework.web.taglib.component.builder.EntityTagBuilder;
import com.base.framework.web.taglib.component.builder.InputTagBuilder;
import com.base.framework.web.taglib.component.builder.LookupTagBuilder;
import com.base.framework.web.taglib.component.builder.LucenePageTagBuilder;
import com.base.framework.web.taglib.component.builder.PageTagBuilder;
import com.base.framework.web.taglib.component.builder.SelectTagBuilder;
import com.base.framework.web.taglib.component.builder.TextTagBuilder;


public class TagBuilderFactory {
	
	public static final String SELECT_BUILDER_KEY = "base.pageinfo.tagbuilder.select";
	public static final String DATE_BUILDER_KEY = "base.pageinfo.tagbuilder.date";
	public static final String INPUT_BUILDER_KEY = "base.pageinfo.tagbuilder.input";
	public static final String ANCHOR_BUILDER_KEY = "base.pageinfo.tagbuilder.anchor";
	public static final String TEXT_BUILDER_KEY = "base.pageinfo.tagbuilder.text";
	public static final String ENTITY_BUILDER_KEY = "base.pageinfo.tagbuilder.entity";
	public static final String PAGE_BUILDER_KEY = "base.pageinfo.tagbuilder.page";
	public static final String LOOKUP_BUILDER_KEY = "base.pageinfo.tagbuilder.lookup";
	public static final String LUCENE_PAGE_BUILDER_KEY = "base.pageinfo.tagbuilder.lucenepage";
	
	public static TagBuilder getSelectTagBuilder() {
		Class clzz = getTagBuilderClass(SELECT_BUILDER_KEY);
		if(clzz == null || clzz.equals(SelectTagBuilder.class))
			return new SelectTagBuilder();
		return getTagBuilder(clzz);
	}
	
	public static TagBuilder getDateTagBuilder() {
		
		Class clzz = getTagBuilderClass(DATE_BUILDER_KEY);
		if(clzz == null || clzz.equals(DateTagBuilder.class))
			return new DateTagBuilder();
		return getTagBuilder(clzz);
	}
	
	public static TagBuilder getInputTagBuilder() {
		Class clzz = getTagBuilderClass(INPUT_BUILDER_KEY);
		if(clzz == null || clzz.equals(InputTagBuilder.class))
			return new InputTagBuilder();
		return getTagBuilder(clzz);
	}
	
	public static TagBuilder getAnchorTagBuilder() {
		Class clzz = getTagBuilderClass(ANCHOR_BUILDER_KEY);
		if(clzz == null || clzz.equals(AnchorTagBuilder.class))
			return new AnchorTagBuilder();
		return getTagBuilder(clzz);
	}
	
	public static TagBuilder getTextTagBuilder() {
		Class clzz = getTagBuilderClass(TEXT_BUILDER_KEY);
		if(clzz == null || clzz.equals(TextTagBuilder.class))
			return new TextTagBuilder();
		return getTagBuilder(clzz);
	}
	
	public static TagBuilder getEntityTagBuilder(){
		Class clzz = getTagBuilderClass(ENTITY_BUILDER_KEY);
		if(clzz == null || clzz.equals(EntityTagBuilder.class))
			return new EntityTagBuilder();
		return getTagBuilder(clzz);
	}
	
	public static TagBuilder getPageTagBuilder(){
		Class clzz = getTagBuilderClass(PAGE_BUILDER_KEY);
		if(clzz == null || clzz.equals(PageTagBuilder.class))
			return new PageTagBuilder();
		return getTagBuilder(clzz);
	}
	
	public static TagBuilder getLucenePageTagBuilder(){
		Class clzz = getTagBuilderClass(PAGE_BUILDER_KEY);
		if(clzz == null || clzz.equals(LucenePageTagBuilder.class))
			return new LucenePageTagBuilder();
		return getTagBuilder(clzz);
	}
	
	public static TagBuilder getLookupTagBuilder(){
		Class clzz = getTagBuilderClass(LOOKUP_BUILDER_KEY);
		if(clzz == null || clzz.equals(LookupTagBuilder.class))
			return new LookupTagBuilder();
		return getTagBuilder(clzz);
	}
	
	private static TagBuilder getTagBuilder(Class clzz){
		try {
			return (TagBuilder)clzz.newInstance();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	private static Class getTagBuilderClass(String builderKey){
		String className = BaseConfigHolder.getTagBuilderClass(builderKey);
		if(className == null)
			return null;
		try {
			return Class.forName(className);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	
}
