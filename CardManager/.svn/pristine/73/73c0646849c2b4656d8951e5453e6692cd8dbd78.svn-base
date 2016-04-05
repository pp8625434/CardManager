package com.manage.cache;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.base.util.Utils;
import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.dao.Sorter;
import com.base.framework.dao.impl.FilterFactory;
import com.base.framework.dao.impl.InFilter;
import com.base.framework.dao.impl.SorterFactory;
import com.base.framework.security.model.Role;
import com.base.framework.security.model.RoleMenuLink;
import com.base.framework.security.service.RoleManager;
import com.base.framework.security.service.RoleMenuLinkManager;
import com.manage.menu.model.BMenuLink;
import com.manage.menu.model.Menu;
import com.manage.menu.model.MenuLink;
import com.manage.menu.model.Url;
import com.manage.menu.service.BMenuLinkManager;
import com.manage.menu.service.MenuLinkManager;
import com.manage.menu.service.MenuManager;
import com.manage.menu.service.UrlManager;


@SuppressWarnings("unchecked")
public class SecurityUtils {

	private static Logger log = Logger.getLogger(SecurityUtils.class);

	/** ******************** begin ************************************ */
	public final static String LOGIN = "login";

	public final static String SELECT_COURSE = "selectCourse";

	/** ******************** begin ************************************ */
	public final static String YES = "1";


	// 用来存储rolesMap信息key:rolesID，value:rolesObject
	public static Map<Integer, Role> rolesMap = new HashMap<Integer, Role>();
	
	public static List<Role> rolesList = new ArrayList<Role>();
	
	// 用来存储一级menu信息 key:menuId:int,value:menu:Object
	public static Map<Integer, Menu> menusMap = new HashMap<Integer, Menu>();
	
	public static List<Menu> menusList = new ArrayList<Menu>();

	// 用来存储二级菜单Menu信息 key:menulinkId:int,value:menulink:Object
	public static Map<Integer, MenuLink> menuLinksMap = new HashMap<Integer, MenuLink>();

	public static List<MenuLink> menuLinksList = new ArrayList<MenuLink>();
	
	// 用来角色菜单信息  key:角色ID:int,value:(Map--key:一级菜单Menu:Object,value:menulink:List)
	public static Map<Integer,Map> roleMenuHashMap = new LinkedHashMap<Integer,Map>();
	
	
	
	public static Map<Integer, List<BMenuLink>>  CRUDLMap = new LinkedHashMap<Integer, List<BMenuLink>>();
	
	public static List<BMenuLink> crudList = new ArrayList<BMenuLink>();
	
	/**
	 * 赵磊  2014/10/10 
	 * 下述内容用来控制权限，定义角色运行访问的路径
	 * 后续框架需要控制权限到按钮
	 */
	// 用来存储角色允许访问的路径  key:角色ID:int,value:访问路径:Map<key:crm_urlID,value:url路径>
	public static Map<Integer, Map<String,Boolean>> roleURLHashMap = new LinkedHashMap<Integer, Map<String,Boolean>>();
	// 用来存储角色按照菜单允许使用的按钮信息 key:角色ID:int,value:Map--key:二级菜单ID:int,value:BMenuLink:Object
	public static Map<Integer, Map<Integer, List<BMenuLink>>> roleButtonHashMap = new LinkedHashMap<Integer, Map<Integer,List<BMenuLink>>>();
	// 用来存储角色按照菜单允许使用的功能标签信息 key:角色ID:int,value:Map--key:二级菜单ID:int,value:BMenuLink:object
	public static Map<Integer, Map<Integer, List<BMenuLink>>> roleDivHashMap = new LinkedHashMap<Integer, Map<Integer,List<BMenuLink>>>();
	// 用来存储角色拥有的角色菜单关系信息
	public static Map<Integer,List<RoleMenuLink>> roleMenuLinkHashMap = new LinkedHashMap<Integer,List<RoleMenuLink>>();
	
	
	@SuppressWarnings("unchecked")
	public static void setRolesMap() {
		
		if(null == rolesList || rolesList.size() == 0){
			setRolesList();
		}
		
		if (Utils.isNullOrEmpty( rolesMap ) ) {
			for (int i = 0; i < rolesList.size(); i++) {
				Role role = (Role) rolesList.get(i);
				if(null != role && role.getId()> -1){
					rolesMap.put(role.getId(), role);
				}
			}
		}
		
	}
	
	public static void setRolesList() {
		RoleManager roleMgr = (RoleManager) SpringContextHolder.getBean(Role.class);
		Filter filter = FilterFactory.getSimpleFilter("id", 1,Filter.OPERATOR_NOT_EQ);
//		CacheRedisManager cacheRedisMgr = (CacheRedisManager) SpringContextHolder.getBean(CacheConstants.MANAGERBEAN_NAME);
		rolesList = roleMgr.getObjects(filter);
		///////////
//		if(BaseConfigHolder.getCacheFlag()){
//			cacheRedisMgr.delKey(CacheConstants.ROLESLIST, true);
//			cacheRedisMgr.setListObj(CacheConstants.ROLESLIST, rolesList);
//		}
	}
	
	public static  List<Role> getRolesList(){
		
//		CacheRedisManager cacheRedisMgr = (CacheRedisManager) SpringContextHolder.getBean("cacheRedisManager");
//		
//		///////////
//		if(BaseConfigHolder.getCacheFlag()){
//			rolesList = cacheRedisMgr.getListObj(CacheConstants.ROLESLIST);
//		}
		
		if(null == rolesList || rolesList.size() == 0){
			setRolesList();
		}
		return rolesList;
		
	}

	
	@SuppressWarnings("unchecked")
	public static Role getRoleById(Integer id) {

		if (Utils.isNullOrEmpty(id)) {
			return null;
		}
		if (Utils.isNullOrEmpty(rolesMap)) {
			setRolesMap();
		}

		Role role = (Role) rolesMap.get(id);
		if (null != role && role.getId() > 0) {
			return role;
		}

		return null;
	}

	
	@SuppressWarnings("unchecked")
	public static void setMenusMap() {

		MenuManager menuMgr = (MenuManager) SpringContextHolder
				.getBean(Menu.class);

		// Filter filter = FilterFactory.getSimpleFilter("id", 1,
		// Filter.OPERATOR_NOT_EQ);
		// List<Role> roleList = roleMgr.getObjects(filter);
		List<Menu> menuList = menuMgr.getObjects();
		// Sorter sorter = SorterFactory.getSimpleSort("menuLink.orderNum");
		// List<Role> list = (ArrayList)roleDaoImpl.getIntegralRuleList();
		if (Utils.isNotNullOrEmpty(menuList)) {
			for (int i = 0; i < menuList.size(); i++) {
				Menu menu = (Menu) menuList.get(i);
				if( null != menu && menu.getId()> -1 ){
					menusMap.put(menu.getId(), menu);
				}
			}
		}
	}

	public static void setMenusList() {

		if (Utils.isNullOrEmpty( menusList)){
			MenuManager menuMgr = (MenuManager) SpringContextHolder.getBean(Menu.class);
			Sorter sorter = SorterFactory.getSimpleSort("orderNum");
			menusList = menuMgr.getObjects(null,sorter);
		}
		
	}
	
	public static List<Menu> getMenusList(){
		
		if(Utils.isNullOrEmpty(menusList)){
			setMenusList();
		}
		return menusList;
		
	}
	
	
	@SuppressWarnings("unchecked")
	public static Menu getMenuById(Integer id) {

		if (Utils.isNullOrEmpty(id)) {
			return null;
		}
		if (Utils.isNullOrEmpty(menusMap)) {
			setMenusMap();
		}
		Menu menu = (Menu) menusMap.get(id);
		if (null != menu && menu.getId() > 0) {
			return menu;
		}
		return null;		
	}

	
	@SuppressWarnings("unchecked")
	public static void setMenuLinksMap() {

		if(Utils.isNullOrEmpty(menuLinksList)){
			setMenuLinksList();
		}
		if(Utils.isNotNullOrEmpty(menuLinksList)){
			if (Utils.isNullOrEmpty(menuLinksMap)) {
				for (int i = 0; i < menuLinksList.size(); i++) {
					MenuLink menuLink = (MenuLink) menuLinksList.get(i);
					if(null != menuLink && menuLink.getId()>=0){
						menuLinksMap.put(menuLink.getId(), menuLink);
					}
				}
			}
		}
	}

	

	@SuppressWarnings("unchecked")
	public static MenuLink getMenuLinkById(Integer id) {

		if (Utils.isNullOrEmpty(id)) {
			return null;
		}
		if (Utils.isNullOrEmpty(menuLinksMap)) {
			setMenuLinksMap();
		}
		MenuLink menuLink = (MenuLink) menuLinksMap.get(id);
		if (null != menuLink && menuLink.getId() > 0) {
			return menuLink;
		}
		return null;
	}
	
	public static void setMenuLinksList() {

		if (Utils.isNullOrEmpty( menuLinksList)){
			MenuLinkManager menuLinkMgr = (MenuLinkManager) SpringContextHolder.getBean(MenuLink.class);
			menuLinksList = menuLinkMgr.getObjects();
		}
		
	}
	
	public static List<MenuLink> getMenuLinksList(){
		
		if(Utils.isNullOrEmpty(menuLinksList)){
			setMenuLinksList();
		}
		return menuLinksList;
		
	}
	
	public static Map<Menu,ArrayList> getHashMapByRole(Integer roleId){
		
		Map menuMap = null;;
		
		if(Utils.isNullOrEmpty(roleMenuHashMap.get(roleId))){
			setHashMap(roleId);
		}
		menuMap = roleMenuHashMap.get(roleId);
		return menuMap;
	}
	
	public static Map<Integer,List<BMenuLink>> getButtonHashMapByRole(Integer roleId){
		
		Map<Integer, List<BMenuLink>>buttonMap = null;;
		
		if(Utils.isNullOrEmpty(roleButtonHashMap.get(roleId))){
			setButtonHashMap(roleId);
		}
		buttonMap = roleButtonHashMap.get(roleId);
		return buttonMap;
	}
	
	public static Map<Integer,List<BMenuLink>> getDivHashMapByRole(Integer roleId){
		
		Map<Integer, List<BMenuLink>>buttonMap = null;;
		
		if(Utils.isNullOrEmpty(roleDivHashMap.get(roleId))){
			setDivHashMap(roleId);
		}
		buttonMap = roleDivHashMap.get(roleId);
		return buttonMap;
	}
	
	public static Map<String,Boolean> getURLHashMapByRole(Integer roleId){
		
		Map<String, Boolean> urlMap = null;;
		
		if(Utils.isNullOrEmpty(roleURLHashMap.get(roleId))){
			setRoleURLHashMap(roleId);
		}
		
		urlMap = roleURLHashMap.get(roleId);
		
		return urlMap;
	}
	
	public static void setHashMap(Integer roleId){
		
		//ArrayList<Menu> menuList = new ArrayList();
		MenuLinkManager menuLinkMgr = (MenuLinkManager)SpringContextHolder.getBean(MenuLink.class);
		ArrayList<MenuLink> menuLinkListTemp = (ArrayList<MenuLink>)menuLinkMgr.getMenuLinkByRole(roleId);
		
			Map mapTemp = new LinkedHashMap();
			
			if(Utils.isNullOrEmpty(menusList)){
				setMenusList();
			}
			
			if(Utils.isNotNullOrEmpty(menuLinkListTemp) && Utils.isNotNullOrEmpty(menusList)){
				for(Menu _menu : menusList){
					ArrayList<MenuLink>  menuLinkList = new ArrayList();
					for (MenuLink menuLink : menuLinkListTemp) {
						 if(null == menuLink || menuLink.getId()<1 || null == _menu || _menu.getId()<1 ){
							  continue;
						  }else{
							  Menu menu = menuLink.getMenu();
							  if ( menu.getId().equals(_menu.getId())) {
								  menuLinkList.add(menuLink);
			    			  }
						  }
					}
					if(Utils.isNotNullOrEmpty(menuLinkList)){
						mapTemp.put(_menu, menuLinkList);
					}
				}
			}
			roleMenuHashMap.put(roleId, mapTemp);
	}
	
	/**
	 * 按照角色Id获取该角色拥有的按钮权限
	 * @param roleId
	 */
	public static void setButtonHashMap(Integer roleId){
		//ArrayList<Menu> menuList = new ArrayList();
		try{
		BMenuLinkManager bmenuLinkMgr = (BMenuLinkManager)SpringContextHolder.getBean(BMenuLink.class);
		ArrayList<BMenuLink> buttonLinkListTemp = (ArrayList<BMenuLink>)bmenuLinkMgr.getButtonLinkByRole(roleId,"2");
		
			Map<Integer,List<BMenuLink>> mapTemp = new LinkedHashMap<Integer,List<BMenuLink>>();
			
			if(Utils.isNotNullOrEmpty(buttonLinkListTemp)){
					List<BMenuLink>  menuLinkList = null;
					for (BMenuLink buttonLink : buttonLinkListTemp) {
						 if(null == buttonLink || buttonLink.getId()<1 ){
							  continue;
						  }else{
							  Integer menu = buttonLink.getMenu();
							  menuLinkList = mapTemp.get(menu);
							  if(Utils.isNotNullOrEmpty(menuLinkList)){
								  menuLinkList.add(buttonLink);
							  }else{
								  menuLinkList = new ArrayList<BMenuLink>();
								  menuLinkList.add(buttonLink);
							  }
							  mapTemp.put(menu, menuLinkList);
						  }
					}
			}
			roleButtonHashMap.put(roleId, mapTemp);
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}
	
	public static void setDivHashMap(Integer roleId){
		try{
		BMenuLinkManager bmenuLinkMgr = (BMenuLinkManager)SpringContextHolder.getBean(BMenuLink.class);
		ArrayList<BMenuLink> buttonLinkListTemp = (ArrayList<BMenuLink>)bmenuLinkMgr.getButtonLinkByRole(roleId,"3");
		
			Map<Integer,List<BMenuLink>> mapTemp = new LinkedHashMap<Integer,List<BMenuLink>>();
			
			if(Utils.isNotNullOrEmpty(buttonLinkListTemp)){
					List<BMenuLink>  menuLinkList = null;
					for (BMenuLink buttonLink : buttonLinkListTemp) {
						 if(null == buttonLink || buttonLink.getId()<1 ){
							  continue;
						  }else{
							  Integer menu = buttonLink.getMenu();
							  menuLinkList = mapTemp.get(menu);
							  if(Utils.isNotNullOrEmpty(menuLinkList)){
								  menuLinkList.add(buttonLink);
							  }else{
								  menuLinkList = new ArrayList<BMenuLink>();
								  menuLinkList.add(buttonLink);
							  }
							  mapTemp.put(menu, menuLinkList);
						  }
					}
			}
			roleDivHashMap.put(roleId, mapTemp);
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}
	
	public static void setRoleURLHashMap(Integer roleId){
		try {
			UrlManager urlManager = (UrlManager) SpringContextHolder.getBean(Url.class);
			List<String> urlListTemp = urlManager.getUrlByRole(roleId);
			Map<String, Boolean> urlMapTemp = new HashMap<String, Boolean>();
			
			if(Utils.isNotNullOrEmpty(urlListTemp)){
				for (String mUrl : urlListTemp) {
					urlMapTemp.put(mUrl, true);
				}
			}
			roleURLHashMap.put(roleId, urlMapTemp);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}
	
	/**
	 * 赵磊
	 * 当发生角色权限变更时，重新加载此缓存类
	 */
	public static void clearRoleMenuHashMap(){
		
		if(Utils.isNotNullOrEmpty(menusMap)){
			menusMap.clear();
			menusList.clear();
		} 
		
		if(Utils.isNotNullOrEmpty(roleMenuHashMap)){
			roleMenuHashMap.clear();
		} 
		if(Utils.isNotNullOrEmpty(roleButtonHashMap)){
			roleButtonHashMap.clear();
		}
		if(Utils.isNotNullOrEmpty(roleDivHashMap)){
			roleDivHashMap.clear();
		}
		if(Utils.isNotNullOrEmpty(roleMenuLinkHashMap)){
			roleMenuLinkHashMap.clear();
		}
		if(Utils.isNotNullOrEmpty(roleURLHashMap)){
			roleURLHashMap.clear();
		}
	}
	/**
	 * 赵磊
	 * 当发生角色信息变更时，重新加载此缓存类
	 */
	public static void clearRoleHashMap(){
		if(Utils.isNotNullOrEmpty(rolesMap)){
			rolesMap.clear();
			rolesList.clear();
		} 
	}
	
	public static void SetcrudList(){
		BMenuLinkManager bmenuLinkMgr = (BMenuLinkManager)SpringContextHolder.getBean(BMenuLink.class);
		Collection<Integer> list = new ArrayList<Integer>();
		list.add(2);
		list.add(3);
		InFilter inf = FilterFactory.getInFilter("menuLinkType", list, Filter.OPERATOR_IN);
		if(Utils.isNullOrEmpty(crudList)){
			crudList  =  bmenuLinkMgr.getObjects(inf); //获得menuLinkType 不为 1 的
		}
	}
	
	public static List<BMenuLink>  getcrudList(){
		if(Utils.isNullOrEmpty(crudList)){
			SetcrudList();
		}
		return crudList;
	}
	
    public static List<RoleMenuLink> getRoleMenuLinkByRoID(Integer roID){
    	List<RoleMenuLink> rmlList = roleMenuLinkHashMap.get(roID);
		
		if(Utils.isNullOrEmpty(rmlList)){
			setRoleMenuLinkMap(roID);
		}
		
		rmlList = roleMenuLinkHashMap.get(roID);
		
		return rmlList;
    }
	/**
	 * crud  添加 ，修改 ，删除
	 * @return
	 * 
	 */
	public static String  CRUDRole(int menuid,int roleId){
		RoleMenuLinkManager roleMenuLinkMgr = (RoleMenuLinkManager)SpringContextHolder.getBean(RoleMenuLink.class);
		
			List<RoleMenuLink> currnt =  new ArrayList<RoleMenuLink>(); 
			Filter filter = FilterFactory.getSimpleFilter("role", roleId, Filter.OPERATOR_EQ);
			currnt = roleMenuLinkMgr.getObjects(filter); //获得roleMenuLink表中的数据，
			
			Map<Integer, Boolean> mlIDMap = new HashMap<Integer, Boolean>();
			
			for (RoleMenuLink roleMenuLink : currnt) {
				mlIDMap.put(roleMenuLink.getMenuLink(), true);
			}
			
			List<RoleMenuLink> result = new ArrayList<RoleMenuLink>();
			List<BMenuLink> temp = getcrudList();  // menulink 表中有关操作按钮的数据，

			StringBuffer  sb = null;
		    if(Utils.isNotNullOrEmpty(temp)){
		    	sb = new StringBuffer();
		    	for(int i=0;i<temp.size();i++){
		    		if(temp.get(i).getMenu() ==menuid){ //
		    			if(mlIDMap.get(temp.get(i).getId())!=null){
		    				sb.append("<input type=\"checkbox\" checked=\"checked\"  value=\""+temp.get(i).getId()+"\"> ");
		    			}else{
		    				sb.append("<input type=\"checkbox\"  value=\""+temp.get(i).getId()+"\"> ");
		    			}
		    				sb.append("&nbsp;&nbsp;"+temp.get(i).getDescription());
							sb.append("&nbsp;&nbsp;");
		    			}	
		    		}

		    	return sb.toString();
		    }
		
		return null;
	}
	
	public static void setRoleMenuLinkMap(Integer roleId){
		try {
			RoleMenuLinkManager roleMenuLinkMgr = (RoleMenuLinkManager)SpringContextHolder.getBean(RoleMenuLink.class);
			
			List<RoleMenuLink> currnt =  new ArrayList<RoleMenuLink>(); 
			Filter filter = FilterFactory.getSimpleFilter("role", roleId, Filter.OPERATOR_EQ);
			currnt = roleMenuLinkMgr.getObjects(filter); //获得roleMenuLink表中的数据，
			
			if(Utils.isNullOrEmpty(currnt)){
				currnt = new ArrayList<RoleMenuLink>();
			}
			roleMenuLinkHashMap.put(roleId, currnt);
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
