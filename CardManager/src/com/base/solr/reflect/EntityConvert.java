package com.base.solr.reflect;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.apache.solr.common.SolrInputDocument;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.base.solr.util.WareFields;


/**
 * 实体类与SolrInputDocument或者SolrDocument转换<br/>
 * @author lxh
 *
 */
public class EntityConvert {
	
	private static Logger logger = LoggerFactory.getLogger(EntityConvert.class);
	
	/**
	 * 实体类与SolrInputDocument转换
	 * @param obj
	 * @return SolrInputDocument
	 */
	public static SolrInputDocument entity2SolrInputDocument(Object obj) {
		if (obj != null) {
			Class<?> cls = obj.getClass();
			Method m = null;
			SolrInputDocument sid = new SolrInputDocument();
			for (WareFields albumFieldName : WareFields.values()) {
				String fieldName=albumFieldName.toString();
				try {
					m = cls.getMethod(getMethodName(albumFieldName.toString(), "get"));
					if(m.invoke(obj)!=null){
						Object value = null;
						
						value=m.invoke(obj);
					    sid.addField(fieldName, value);
					}
				} catch (IllegalArgumentException e) {
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				} catch (SecurityException e) {
					e.printStackTrace();
				} catch (NoSuchMethodException e) {
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					e.printStackTrace();
				}
			}
			return sid;
		}
		//logger.info("即将要转换的实体类为null！");
		return null;
	}
	
	/**
	 * @author LLJ
	 * @date Sep 28, 2015 3:40:09 PM
	 * @param ware
	 * @return
	 * @see 把商品放入检索
	 */
//	public static SolrInputDocument ware2SolrInputDocument(Ware ware){
//		if(ware != null){
//			SolrInputDocument sid = new SolrInputDocument();
//			sid.addField("id", ware.getId());
//			sid.addField("shopid", ware.getShopid());
//			sid.addField("shopname", ware.getShopname());
//			sid.addField("warename", ware.getWarename());
//			sid.addField("price", ware.getPrice());
//			sid.addField("unit", ware.getUnit());
//			sid.addField("monthsales", ware.getMonthsales());
//			sid.addField("warestate", ware.getWarestate());
//			
//			return sid;
//		}
//		return null;
//	}
//	
//	public static SolrInputDocument shop2SolrInputDocument(Shop shop){
//		if(shop != null){
//			SolrInputDocument sid = new SolrInputDocument();
//			sid.addField("id", shop.getId());
//			sid.addField("shopname", shop.getShopname());
//			sid.addField("operatetype", shop.getOperatetype());
//			sid.addField("shoplevel", shop.getShoplevel());
//			sid.addField("shopscore", shop.getShopscore());
//			sid.addField("monthorders", shop.getMonthorders());
//			sid.addField("servicetime", shop.getServicetime());
//			sid.addField("transportprice", shop.getTransportprice());
//			sid.addField("hasdiscount", shop.getHasdiscount());
//			sid.addField("hasinvoice", shop.getHasinvoice());
//			sid.addField("shopstate", shop.getShopstate());
//			sid.addField("logopath", shop.getLogopath());
//			
//			return sid;
//		}
//		return null;
//	}
//	
	
	/**
	 * 批量转换, 将实体类的List转换为SolrInputDocument Collection
	 * @param entityList
	 * @return Collection<SolrInputDocument>
	 */
	public static <T> Collection<SolrInputDocument> entityList2SolrInputDocument(List<T> entityList) {
		if (entityList != null && entityList.size() > 0) {
			Collection<SolrInputDocument> solrInputDocumentList = new ArrayList<SolrInputDocument>();
			SolrInputDocument sid = null;
			for (Object o : entityList) {
				sid = entity2SolrInputDocument(o);
				if (sid != null) {
					solrInputDocumentList.add(sid);
				}
			}
			return solrInputDocumentList;
		}
		//logger.info("即将要转换的entityList为null或者size为0！");
		return null;
	}
	
	
	
	/**
	 * SolrDocument与实体类转换
	 * @param sd
	 * @param cls
	 * @return <T>
	 */
   public static <T> T solrDocument2Entity(SolrDocument sd, Class<T> cls) {
		if (sd != null) {
			try {
				Object obj = cls.newInstance();
				Method m = null;
				Field f = null;
				Class<?> fieldType = null;
				for (WareFields fieldNames : WareFields.values()) {
					String fieldName=fieldNames.toString();
					
					// 如果是 int, float等基本类型，则需要转型
					if (fieldType.equals(Integer.TYPE)) {
						fieldType = Integer.class;
					} else if (fieldType.equals(Float.TYPE)) {
						fieldType = Float.class;
					} else if (fieldType.equals(Double.TYPE)) {
						fieldType = Double.class;
					} else if (fieldType.equals(Boolean.TYPE)) {
						fieldType = Boolean.class;
					} else if (fieldType.equals(Short.TYPE)) {
						fieldType = Short.class;
					} else if (fieldType.equals(Long.TYPE)) {
						fieldType = Long.class;
					}
					m.invoke(obj, fieldType.cast(sd.getFieldValue(fieldName)));
				}
				return cls.cast(obj);
			} catch (ClassCastException e) {
				logger.info("请检查schema.xml中的各个field的数据类型与PO类的是否一致！");
				e.printStackTrace();
			} catch (SecurityException e) {
				e.printStackTrace();
			} catch (IllegalArgumentException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			} catch (InstantiationException e) {
				e.printStackTrace();
			}
		}
		logger.info("即将要转换的SolrDocument为null！");
		return null;
	}
	
	
	
	/**
	 * 批量转换, 将solrDocumentList转换为实体类 List
	 * 
	 * @param solrDocumentList
	 * @param cls
	 * @return List<T>
	 */
	public static <T>List<T> solrDocument2Entity(SolrDocumentList solrDocumentList, Class<T> cls) {
		if (solrDocumentList != null && solrDocumentList.size() > 0) {
			List<T> objectList = new ArrayList<T>();
			for (SolrDocument sd : solrDocumentList) {
				Object obj = solrDocument2Entity(sd, cls);
				if (obj != null) {
					objectList.add(cls.cast(obj));
				}
			}
			return objectList;
		}else{
			logger.info("即将要转换的solrDocumentList为null或者size为0！");
		}
		return null;
	}
	
	
	
	
	
	/**
	 * 获得类的方法名，按照JAVABEAN的规范
	 * 
	 * @param property 属性名称
	 * @param prefix 前缀，一般为set 或 get
	 * @return String
	 */
	public static String getMethodName(String property, String prefix){   
        String prop = Character.toUpperCase(property.charAt(0)) + property.substring(1);   
        return prefix + prop;   
    }  
	
}
