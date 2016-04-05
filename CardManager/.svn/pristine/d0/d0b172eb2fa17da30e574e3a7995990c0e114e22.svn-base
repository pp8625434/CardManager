package com.base.solr;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.response.FacetField;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.client.solrj.response.FacetField.Count;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.base.solr.reflect.EntityConvert;
import com.base.solr.util.SolrConstants;


public class SolrClient {
	
	private static Logger logger = LoggerFactory.getLogger(SolrClient.class);
	
	/**
	 * 利用solr的SolrQuery 对象查询
	 * （查询的字段默认为 solr配置文件 schema.xml中配置的默认查询字段，
	 *  查询结果转化为指定的对象cls）
	 * @param keyword 查询字符串    
	 *       如果keyword="中国" ==》 sql：where name="中国"; 
	 *       如果keyword="id:1 OR name:中国 " ==》 sql：where id=1 OR name="中国"; 同理AND
	 * @param cls 查询的类
	 * @param start 查询起始记录
	 * @param rows 查询条数
	 * @param server
	 * @param  page 分页对象
	 * @param  sort 排序参数  例如 order by id asc,name desc 则 sort.put("id","asc");sort.put("name","desc");
	 *         null:不设定排序参数。
	 * @return PaginationSupport<T>
	 */
//	public static Page query(String keyword_q,String keyword_fq, Class cls,String pkName,SolrServer solrServer,Page page,HashMap<String, String> sort,List<String> highLightFields,boolean isToCls) {
//		//System.out.println("keyword_q--"+keyword_q);
//		//System.out.println("keyword_fq--"+keyword_fq);
//		SolrQuery query = new SolrQuery();
//		//query.setQuery(keyword);
//	    query.set("q", keyword_q);
//		if(keyword_fq!=null && keyword_fq.length()!=0){
//			query.set("fq", keyword_fq);
//		}
//		int pageSize=page.getPageSize();
//		query.setStart( (page.getCurrentPage()-1)*page.getPageSize() );
//		query.setRows(pageSize);
//		//排序
//		if (sort != null && !sort.isEmpty()) {
//			for (Iterator i = sort.keySet().iterator(); i.hasNext();) {
//				Object o = i.next();
//				String key = o.toString();
//				if ("ASC".equals(sort.get(key).toUpperCase())) {
//					query.setSortField(o.toString(), ORDER.asc);
//				} else if ("DESC".equals(sort.get(key).toUpperCase())) {
//					query.setSortField(o.toString(), ORDER.desc);
//				} else {
//					// 默认是降序
//					query.setSortField(o.toString(), ORDER.desc);
//				}
//
//			}
//		}else{
//			// 默认是时间 降序
//			query.setSortField("createDate", ORDER.desc);
//		}
//		
//		//设置高亮
//		if(highLightFields!=null && !highLightFields.isEmpty() ){
//			query.setHighlight(true);
//			
//			for(String field:highLightFields){
//				query.addHighlightField(field);   
//			}
//			
//			query.setHighlightSimplePre(SolrConstants.SOLR_HIGHLIGHT_PRE);   
//			query.setHighlightSimplePost(SolrConstants.SOLR_HIGHLIGHT_POST);
//			
//		}
//		
//		
//		
//		QueryResponse response = null;
//		try {
//			response = solrServer.query(query);
//		} catch (SolrServerException e) {
//			e.printStackTrace();
//			return null;
//		}
//		SolrDocumentList sdl = response.getResults();
//		
//		if(highLightFields!=null && highLightFields.size()!=0){
//			//获取高亮字段
//			Map<String, Map<String, List<String>>>  highLightMap = response.getHighlighting(); //高亮字段信息
//			if (sdl != null && !sdl.isEmpty()) {
//				for (SolrDocument sd : sdl) {
//					Object key=sd.getFieldValue(pkName);
//					Map<String, List<String>> highLightFieldMap = highLightMap.get(key.toString());
//					
//					for(String field:highLightFields){
//						List<String> list=highLightFieldMap.get(field);
//						String highStr="";
//						if(list!=null && !list.isEmpty()){
//							for(String high:list){
//								highStr=highStr+high;
//							}
//							sd.setField(field,highStr);
//						}
//						
//					}
//					
//				}
//			}
//			
//		}
//		
//		int totalCount = Long.valueOf(sdl.getNumFound()).intValue();
//		
//		if(page==null){
//			page=new Page();
//		}
//	
//		if(!isToCls){
//			//SolrDocument 不转化为 cls 直接返回SolrDocument的集合
//			page.setList(sdl);
//		}else{
//			//SolrDocument 转化为 cls
//			List list=EntityConvert.solrDocument2Entity(sdl, cls);
//			page.setList(list);
//		}
//		
//		page.setTotalRecords(totalCount);
//		
//		int totoalPage= totalCount%pageSize> 0 ? totalCount/pageSize + 1  : totalCount/pageSize;
//		page.setTotalPage(totoalPage);
//	        
//	    return page;
//	}
	
	/**
	 * 利用solr的SolrQuery 对象查询 
	 * （查询的字段默认为 solr配置文件 schema.xml中配置的默认查询字段，
	 *  查询结果转化为指定的对象cls）
	 * @param keyword 查询字符串    
	 *       如果keyword="中国" ==》 sql：where name="中国"; 
	 *       如果keyword="nameid:1 OR :中国 " ==》 sql：where id=1 OR name="中国"; 同理AND
	 * @param cls 查询的类
	 * @param start 查询起始记录
	 * @param rows 查询条数
	 * @param server
	 * @param  page 分页对象
	 * @param  sort 排序参数  例如 order by id asc,name desc 则 sort.put("id","asc");sort.put("name","desc");
	 *         null:不设定排序参数。
	 * @return PaginationSupport<T>
	 */
//	public static Page query(String keyword_q,String keyword_fq,Class cls,String pkName,SolrServer solrServer,Page page,HashMap<String, String> sort,List<String> highLightFields) {
//	    return  query(keyword_q, keyword_fq, cls,pkName,solrServer,page,sort,highLightFields,false);
//	}
	
	/**
	 * 自动补全
	 * @param keyWord 查询关键字
	 * @param prefix  前缀
	 * @param counts   返回的个数
	 * @param fieldName  查询的字段
	 * @param solrServer
	 * @return
	 */
	public static List<String> autoComplete(String keyWord,String prefix, int counts, String fieldName, SolrServer solrServer) {
		List<String> result = new ArrayList<String>();
		SolrQuery query = new SolrQuery();
		QueryResponse rsp = new QueryResponse();
		// Facet为solr中的层次分类查询
		try {
			query.setFacet(true);
			if(keyWord==null || "".equals(keyWord)){
				query.setQuery("*:*");
			}else {
				query.setQuery(keyWord);
			}
			query.setFacetPrefix(prefix);
			query.addFacetField(fieldName);
			rsp = solrServer.query(query);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

		if (null != rsp) {
			FacetField ff = rsp.getFacetField(fieldName);
			List<Count> countList = ff.getValues();
			if (null == countList) {
				return null;
			}
			for (int i = 0; i < countList.size(); i++) {
				String tmp[] = countList.get(i).toString().split(" ");
				//排除  结果显示的数量  只保留结果 ,{"中国",3} 取得"中国"
				if (tmp[0].length() < 2) {
					continue;
				}
				result.add(tmp[0]);
				counts--;
				if (counts == 0) {
					break;
				}
			}
		}
		return result;
	}
	
	
    /**
	 *  利用solr的SolrParams查询
	 * 
	 * @param params 查询参数Map
	 * @param cls 查询的类
	 * @param start 查询起始记录
	 * @param rows 查询条数
	 * @param server
	 * @return PaginationSupport<T>
	 */
/*
	public static SolrPageInfo query(SolrParams params, Class cls, int start, int rows, SolrServer server,SolrPageInfo pageInfo,HashMap<String, String> sort) {
		QueryResponse response = null;
		try {
			response = server.query(params);
		} catch (SolrServerException e) {
			e.printStackTrace();
			return null;
		}
		SolrDocumentList sdl = response.getResults();
		int totalCount = Long.valueOf(response.getResults().getNumFound()).intValue();
		return new SolrPageInfo(EntityConvert.solrDocument2Entity(sdl, cls), totalCount, start, rows);
	}*/
	
	// **********************添加索引start**************************
	
	/**
	 * 提交数据
	 * @param obj
	 * @param server
	 */
	public static void commitObject(Object obj, SolrServer server) {
		try {
			server.add(EntityConvert.entity2SolrInputDocument(obj));
			server.commit(false, false);
			//logger.info("成功提交 1 个元素到索引库中");
		} catch (SolrServerException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
//	public static void commitWare(Ware ware,SolrServer solrServer) throws Exception{
//		try {
//			solrServer.add(EntityConvert.ware2SolrInputDocument(ware));
//			solrServer.commit(false, false);
//			logger.info("成功提交 1 个元素到索引库中");
//		} catch (SolrServerException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//	}
//	
//	public static void commitShop(Shop shop,SolrServer solrServer) throws Exception{
//		try {
//			solrServer.add(EntityConvert.shop2SolrInputDocument(shop));
//			solrServer.commit(false, false);
//			logger.info("成功提交 1 个元素到索引库中");
//		} catch (SolrServerException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//	}
	
	/**
	 * 提交数据采用批量提交
	 * @param objectList
	 * @param server
	 */
	public static <T> void commitList(List<T> objectList, SolrServer solrServer) {
		try {
			solrServer.add(EntityConvert.entityList2SolrInputDocument(objectList));
			solrServer.commit(false, false);
			//logger.info("成功提交 " + objectList.size() + " 个元素到索引库中");
		} catch (SolrServerException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// **********************添加索引end **************************

	// **********************更新索引start **************************
	
	
	/**
	 * 更新数据
	 * 
	 * @param obj
	 * @param idName
	 * @param server
	 */
	public static void update(Object obj, String idName, SolrServer solrServer) {
		if (obj != null && StringUtils.isNotBlank(idName)) {
			Class<?> cls = obj.getClass();
			try {
				Method method = cls.getMethod(EntityConvert.getMethodName(idName, "get"));
				Object o = method.invoke(obj);
				
				if (o != null) {// 主键不能为空
					String id=o.toString();
					deleteById(id,solrServer); //删除原有的索引
					commitObject(obj,solrServer); //添加新索引
					//logger.info("从索引库中更新 1 个元素， id:" + o.toString());
				}
			} catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	
	
     	// **********************更新索引end **************************
	
	
	   // *********************删除索引start****************************************
	/**
	 * 删除数据
	 * @param id     Id值
	 * @param idName Id名称(主键名称)
	 * @param server
	 */
	public static void deleteById(String id,SolrServer solrServer) {
		try {
			solrServer.deleteById(id);
			solrServer.commit(false, false);
			//logger.info("从索引库中删除 1 个元素， id:" + id.toString());
		} catch (SolrServerException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 批量删除数据 (使用solrServer.deleteByQuery)
	 * @param idArrays Id数组
	 * @param idName   Id名称
	 * @param server
	 */
	public static void deleteByIds(String[] idArrays, String idName, SolrServer solrServer) {
		if (idArrays.length > 0) {
			try {
				StringBuffer query = new StringBuffer(idName + ":" + idArrays[0]);
				for (int i = 1; i < idArrays.length; i++) {
					if (idArrays[i] != null) {
						query.append(" OR " + idName + ":" + idArrays[i].toString());
					}
				}
				solrServer.deleteByQuery(query.toString());
				solrServer.commit(false, false);
				//logger.info("从索引库中删除 " + idArrays.length + " 个元素");
			} catch (SolrServerException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * 批量删除数据 (使用solrServer.deleteById(list))
	 * @param listIds   Id集合
	 * @param server
	 */
	public static void deleteByIds(List<String> listIds, SolrServer solrServer) {
		if (listIds.size() > 0) {
			try {
				solrServer.deleteById(listIds);
				solrServer.commit(false, false);
				//logger.info("从索引库中删除 " + listIds.size() + " 个元素");
			} catch (SolrServerException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * 删除所有元素
	 * @param server
	 */
	public static void deleteAll(SolrServer solrServer) {
		try {
			solrServer.deleteByQuery("*:*");
			solrServer.commit(false, false);
			//logger.info("从索引库中删除所有元素");
		} catch (SolrServerException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 * 设置高亮（指定高亮样式）
	 * @param query
	 * @param highlightSimplePre 
	 * @param highlightSimplePost
	 */
	private static void highlight(SolrQuery query,String highlightSimplePre,String highlightSimplePost){
		if(highlightSimplePre==null || "".equals(highlightSimplePre)){
			highlightSimplePre=SolrConstants.SOLR_HIGHLIGHT_PRE;
		}
		
		if(highlightSimplePost==null || "".equals(highlightSimplePost)){
			highlightSimplePost=SolrConstants.SOLR_HIGHLIGHT_POST;
		}
		query.setHighlight(true);
		query.setHighlightSimplePre(highlightSimplePre);
		query.setHighlightSimplePost(highlightSimplePost);
		query.setHighlightRequireFieldMatch(true);
		query.setHighlightFragsize(1000);//每个分片的最大长度，默认为100
		query.setHighlightSnippets(1);//结果分片数，默认为1
	}
	
	/**
	 * 设置高亮（使用默认高亮样式）
	 * @param query
	 */
	private static void highlight(SolrQuery query){
			String highlightSimplePre="";
			String highlightSimplePost="";
			highlight(query,highlightSimplePre,highlightSimplePost);
	}
	
	 //   *********************删除索引 end ****************************************
	
	
	public static void main(String[] args) {
		
	}
}
