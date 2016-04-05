package com.base.solr;

import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.impl.HttpSolrServer;

import com.base.framework.BaseConfigHolder;


/**
 * SolrServer工厂类
 * 
 */
public class SolrServerFactory {
	
	
    
	private static SolrServer solrServer_ware=null; 
	
	private static SolrServer solrServer_shop=null; 
	

	private SolrServerFactory() {
		
	}
	
	public static SolrServer getHttpSolrServer_Ware(){
		if(solrServer_ware == null){
			solrServer_ware = new HttpSolrServer(BaseConfigHolder.getSolrWare());
		}
		return solrServer_ware;
	}
	
	public static SolrServer getHttpSolrServer_Shop(){
		if(solrServer_shop == null){
			solrServer_shop = new HttpSolrServer(BaseConfigHolder.getSolrShop());
		}
		return solrServer_shop;
	}

	
	

}
