package com.base.framework;

import java.util.Properties;

import com.base.util.Utils;
import com.base.framework.BaseFrameworkConfig;

public class BaseConfigHolder {
	
	protected static BaseFrameworkConfig config ;
	public static String CONFIG_FILE_NAME = "systemGlobalsConfig";
	public static String RELOAD = "base.config.reload";
	protected static final int PAGE_SIZE = 10;
	private static final int PAGE_MAXRECORDS=0;
	public static String systemName;
	public static String systemUrl;
	public static String ftpImage;
	public static String database;
	public static String reporturl;
	public static String reportkey;
	public static String synchrourl;
	public static String anguanservice;
	public static String shenjiservice;
	public static String syscode;
	public static String sysip;
	public static String sysport;
	public static String shopfile;
	public static String pluginfile;
	public static String isreport;

	//private static final boolean RELOAD = false;
	
	public static String flvserver;
	
	public static String solr_product;
	
	public static String webshopurl; //店铺访问路径
	
	public static String fronturl; //前台发布路径（用户生成首页）
	
	public static String managementurl; //登录
	
	public static String orderurl; //订单
	
	public static String fronthttpurl; //项目地址
	
	public static String uploadfileservice; //文件上传服务
	
	public static String PrintOLIndexurl;//首页展示
	
	public static String ordersWebService; //更新订单缓存服务
	
	public static String personWebService;//更新个人缓存
	
	private static String solrware;
	private static String solrshop;
	
	private static String adpath;//广告图片地址
	
	private static String organizationpath;//社区接口
	
	private static String rechargeurl;//充值接口地址
	
	public static String getRechargeUrl(){
		if(rechargeurl==null){
			rechargeurl = getProperties().getProperty("recharge.path");
		}
		return rechargeurl;
	}
	
	public static String getOrganizationatPath(){
		if(organizationpath==null){
			organizationpath = getProperties().getProperty("organization.path");
		}
		return organizationpath;
	}
	
	public static String getAdPath(){
		if(adpath== null){
			adpath = getProperties().getProperty("ad.images.path");
			return adpath;
		}
		return adpath;
	}
	
	/**
	 * 订单缓存服务
	 * @return
	 */
	public static String getOrdersWebService(){
		if(ordersWebService == null){
			ordersWebService = getProperties().getProperty("webservice.orders");
			return ordersWebService;
		}
		return ordersWebService;
	}
	
	/**
	 * 个人中心缓存服务
	 * @return
	 */
	public static String getPersonWebService(){
		if(personWebService == null){
			personWebService = getProperties().getProperty("websercice.person");
			return personWebService;
		}
		return personWebService;
	}
	
	public static String getPrintOLIndexurl(){
		if(PrintOLIndexurl == null){
			PrintOLIndexurl = getProperties().getProperty("web.index.url");
			return PrintOLIndexurl;
		}
		return PrintOLIndexurl;
	}
	
	
	public static String getUploadfileservice(){
		if(uploadfileservice == null){
			uploadfileservice = getProperties().getProperty("web.uploadfileService");
			return uploadfileservice;
		}
		return uploadfileservice;
	}
	
	public static String getFronthttpurl(){
		if(fronthttpurl == null){
			fronthttpurl = getProperties().getProperty("web.front.httpurl");
			return fronthttpurl;
		}
		return fronthttpurl;
	}
	
	public static String getOrderurl(){
		if(orderurl == null){
			orderurl = getProperties().getProperty("web.order.url");
			return orderurl;
		}
		return orderurl;
	}
	
	public static String getManagementurl(){
		if(managementurl == null){
			managementurl = getProperties().getProperty("web.management.url");
			return managementurl;
		}
		return managementurl;
	}
	
	public static String getFronturl(){
		if(fronturl == null){
			fronturl = getProperties().getProperty("web.front.url");
			return fronturl;
		}
		return fronturl;
	}
	
	public static String getWebshopurl(){
		if(webshopurl == null){
			webshopurl = getProperties().getProperty("web.shop.url");
			return webshopurl;
		}
		return webshopurl;
	}
	
	public static Properties getProperties(){
		if(config == null)
			config = (BaseFrameworkConfig)SpringContextHolder.getBean(CONFIG_FILE_NAME);
		return config.getConfig();
	}
	
	public static boolean getFrameworkConfigReload(){
		
		String reload = getProperties().getProperty(RELOAD);
		if(reload == null)
			return false;
		
		return Boolean.parseBoolean(reload);
	}
	
	protected static void ObjectNull(){
		if(getFrameworkConfigReload()){
			config = null;
		}
	}
	
	/**
	 * 缺省列表页面一页的记录个数
	 * @return 返回缺省列表页面一页的记录个数
	 */
	public static int getPageSize(){
		String pageSize = getProperties().getProperty("base.pageinfo.pagesize");
		if(pageSize == null)
			return PAGE_SIZE;
		//ObjectNull();
		return Integer.parseInt(pageSize);
	}
	
	/**
	 * 缺省列表页最大限记录数的值,0为不受限制
	 * @return 列表页最大限记录数
	 */
	public static int getMaxRecords(){
		String maxRecords = getProperties().getProperty("base.pageinfo.maxrecords");
		if(maxRecords == null)
			return PAGE_MAXRECORDS;
		//ObjectNull();
		return Integer.parseInt(maxRecords);
	}
	
	/**
	 * 菜单配置文件存在的位置
	 * @return 返回菜单配置文件存在的位置
	 */
	public static String getMenuConfig(){
		String menuConfig = getProperties().getProperty("base.menu.menuconfig");
		//ObjectNull();
		return menuConfig;
	}
	
	/**
	 * 设置在画树型页面是否每次都重新加载菜单配置文件
	 * @return 否每次都重新加载菜单配置文件，在画树型页面时
	 */
	public static boolean getMenuReload(){
		String reload = getProperties().getProperty("base.menu.reload");
		if(reload == null)
			return true;
		//ObjectNull();
		return Boolean.parseBoolean(reload);
	}

	/**
	 * 返回表现层框架的后缀,如action/do...
	 * @return
	 */
	public static String getViewFrameworkSuffix(){
		String actionSuffix = getProperties().getProperty("base.view.framework.action.suffix");
		//ObjectNull();
		if(actionSuffix == null || actionSuffix.trim().equals(""))
			return "action";
		return actionSuffix;
	}
	
	public static String getSecurityFilterCalss(){
		String className = getProperties().getProperty("base.pageinfo.securityfilterclass");
		//ObjectNull();
		if(className == null || className.trim().equals(""))
			return "com.base.framework.dao.impl.SecurityFilterImpl";
		return className;
		
	}
	
	public static String getTagBuilderClass(String builderKey){
		String className = getProperties().getProperty(builderKey);
		//ObjectNull();
		return className;
	}
	
	public static int getCurrnetMiddlePage(){
		String currnetMiddlePage = getProperties().getProperty("base.pageinfo.currnetmiddlepag");
		//ObjectNull();
		if(currnetMiddlePage == null || currnetMiddlePage.trim().equals(""))
			return Integer.parseInt("5");
		return Integer.parseInt(currnetMiddlePage);
	}
	
	public static Boolean getBbsFlag(){
		
		String bbsFlag = getProperties().getProperty("bbs.flag");
		//ObjectNull();
		if(Utils.isNullOrEmpty(bbsFlag) || bbsFlag.equals("0")){
			return false;
		}
		return true;
	}
	
	public static boolean getMailFlag(){
		String mailFlag = getProperties().getProperty("ulms.mail.flag");
		//ObjectNull();
		if(Utils.isNullOrEmpty(mailFlag) || mailFlag.equals("0")){
			return false;
		}
		return true;
	}
	
	public static String getSystemName(){
		
		//ObjectNull();
		if(Utils.isNullOrEmpty(systemName)){
			if(null != getProperties() && Utils.isNotNullOrEmpty(getProperties().getProperty("base.system.name"))){
				systemName = getProperties().getProperty("base.system.name").trim();
			}
			return systemName;
		}
		return systemName;
	}
	
	public static String getSystemUrl(){
		if(systemUrl == null){
			systemUrl = getProperties().getProperty("base.system.url");
			
			return systemUrl;
		}
		return systemUrl;
	}	

	public static String getFlvServer(){
		if(flvserver == null || "".equals(flvserver)){
			flvserver = getProperties().getProperty("base.video.flvserver");
		}
		return flvserver;
	}
	
	public static String getFtpImage() {
		if(ftpImage == null){
			ftpImage = getProperties().getProperty("base.path.ftp.image");
			return ftpImage;
		}
		return ftpImage;
	}
	
	public static String getResourceFilePath(){
		
		String filePath = getProperties().getProperty("base.path.resource.file");
		//ObjectNull();
		if(Utils.isNullOrEmpty(filePath)){
			return "resource";
		}
		return filePath.trim();
	}
	
	public static String getSolrProduct() {
		if(solr_product == null){
			solr_product = getProperties().getProperty("solr.product");
			return solr_product;
		}
		return solr_product;
	}
	
	public static String getDataBaseName(){
		if(database == null){
			database = getProperties().getProperty("databasename");
			return database;
		}
		return database;
	}
	
	public static String getReportUrl(){
		if(reporturl == null){
			reporturl = getProperties().getProperty("reporturl");
			return reporturl;
		}
		return reporturl;
	}
	
	public static String getReportKey(){
		if(reportkey == null){
			reportkey = getProperties().getProperty("reportkey");
			return reportkey;
		}
		return reportkey;
	}
	
	public static String getSynchroUrl(){
		if(synchrourl == null){
			synchrourl = getProperties().getProperty("synchrourl");
			return synchrourl;
		}
		return synchrourl;
	}
	
	public static String getAnguanService(){
		if(anguanservice == null){
			anguanservice = getProperties().getProperty("anguanservice");
			return anguanservice;
		}
		return anguanservice;
	}
	
	public static String getShenjiService(){
		if(shenjiservice == null){
			shenjiservice = getProperties().getProperty("shenjiservice");
			return shenjiservice;
		}
		return shenjiservice;
	}
	
	public static String getSysCode(){
		if(syscode == null){
			syscode = getProperties().getProperty("syscode");
			return syscode;
		}
		return syscode;
	}
	
	public static String getSysIp(){
		if(sysip == null){
			sysip = getProperties().getProperty("sysip");
			return sysip;
		}
		return sysip;
	}
	
	public static String getSysPort(){
		if(sysport == null){
			sysport = getProperties().getProperty("sysport");
			return sysport;
		}
		return sysport;
	}
	
	public static String getShopFilePath(){
		if(shopfile == null){
			shopfile = getProperties().getProperty("base.path.shopFile");
			return shopfile;
		}
		return shopfile;
	}
	
	public static String getPluginFilePath(){
		if(pluginfile == null){
			pluginfile = getProperties().getProperty("base.path.Pluginfile");
			return pluginfile;
		}
		return pluginfile;
	}
	
	public static String getIsReport(){
		if(isreport == null){
			isreport = getProperties().getProperty("isreport");
			return isreport;
		}
		return isreport;		
	}
	
	public static String getSolrWare(){
		if(solrware==null){
			solrware = new String(getProperties().getProperty("solr.ware"));
		}
		return solrware;
	}
	public static String getSolrShop(){
		if(solrshop==null){
			solrshop = new String(getProperties().getProperty("solr.shop"));
		}
		return solrshop;
	}
}
