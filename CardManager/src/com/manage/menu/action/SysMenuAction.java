package com.manage.menu.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.base.util.Utils;
import com.base.framework.SpringContextHolder;
import com.base.framework.security.model.UserRole;
import com.base.framework.security.service.UserRoleManager;
import com.base.framework.web.struts.BaseAction;
import com.manage.cache.SecurityUtils;
import com.manage.menu.model.Menu;
import com.manage.menu.model.MenuLink;
import com.manage.user.model.User;


public class SysMenuAction extends BaseAction{
	
	private User user;
	private List<Menu> menuList;
	
	private List<MenuLink> menuLinkList;
	
	private Map map;
	
	public String sysMenu() throws Exception {
		
		User user = (User)getSession().getAttribute("user");
		if(null != user && user.getId()>=0){
			
			UserRoleManager userRoleMgr = (UserRoleManager)SpringContextHolder.getBean(UserRole.class);
			
//			UserRolePageInfo  urPageInfo = new UserRolePageInfo();
//			UserPageInfo userPageInfo = new UserPageInfo();
//			userPageInfo.setF_id(user.getId());
//			userPageInfo.setF_id_op(Filter.OPERATOR_EQ);
//			urPageInfo.setSecurityUser(userPageInfo);
//			
//			PageInfo urSearchPageInfo = PageInfoUtil.populate(urPageInfo);
			
			/*
			List<UserRole> userRoleList  = userRoleMgr.getRoleListByUser(user.getId());
			
			if(!Utils.isNullOrEmpty(userRoleList)){
				
				ArrayList<Integer> roleIdList = new ArrayList();
				StringBuffer roleIdsTemp = new StringBuffer(200);
				for(int i=0,cnt=userRoleList.size();i<cnt;i++){
					UserRole userRole = userRoleList.get(i);
					if(null != userRole.getRole() && userRole.getRole()>0){
						roleIdList.add(userRole.getRole());
						
							roleIdsTemp.append(userRole.getRole() + ",");
					}
				}
				//��ȥ���һ�� ,
				String roleIds = roleIdsTemp.toString().substring(0, (roleIdsTemp.toString().length()-1));
				*/
				menuLinkList = new ArrayList();
				menuList = new ArrayList();
				map = new LinkedHashMap<Menu,ArrayList>();
				//Map<Menu,ArrayList> hashMap = new HashMap();
				List<UserRole> userRoleList = userRoleMgr.getRoleListByUser(user.getId());
				//List<UserRole> userRoleList = (List<UserRole>)getSession().getAttribute("userRoleList");
				//if(Utils.isNullOrEmpty(userRoleList)){
				//	userRoleList  = userRoleMgr.getRoleListByUser(user.getId());
		    	//	getSession().setAttribute("userRoleList", userRoleList);
				//}
				
		    	//��ȡ һ���˵�
	    		List<Menu> menuList = (ArrayList<Menu>)SecurityUtils.getMenusList();
	    		
	    		if( Utils.isNotNullOrEmpty(userRoleList) && Utils.isNotNullOrEmpty(menuList) ){
	    			
	    			if(userRoleList.size()==1){
	    				
	    				//HashMap mapTemp = new HashMap();
		    			UserRole userRole = userRoleList.get(0);
		    			Integer role = userRole.getRole();
		    			map = (HashMap<Menu,ArrayList>)SecurityUtils.getHashMapByRole(role);
	    			    
	    			}
	    			
	    			
	    			if(userRoleList.size()>1){
		    		for (int i=0,cnt=userRoleList.size();i<cnt;i++){
		    			//UserRole userRole : userRoleList
		    			HashMap mapTemp = new HashMap();
		    			UserRole userRole = userRoleList.get(i);
		    			Integer role = userRole.getRole();
		    			mapTemp = (HashMap<Menu,ArrayList>)SecurityUtils.getHashMapByRole(role);
		    			
		    			for(Menu menu:menuList){
		    				
			    			if( Utils.isNotNullOrEmpty(mapTemp) ){
			    				ArrayList<MenuLink> menuLinkListTemp = new ArrayList<MenuLink>();
			    				Iterator iter = mapTemp.entrySet().iterator();
			    				while (iter.hasNext()) {
			    					Map.Entry entry = (Map.Entry) iter.next();
			    					Menu key = (Menu)entry.getKey();
			    					ArrayList<MenuLink> val = (ArrayList<MenuLink>)entry.getValue();
			    					
			    					if(null != key && key.getId().equals(menu.getId()) && Utils.isNotNullOrEmpty(val)){
			    						
			    						for(MenuLink menuLink:val){
			    						
			    							boolean flag = true;
			    							for(MenuLink menuLinkTemp:menuLinkListTemp){
				    							if(menuLinkTemp.getId().equals(menuLink.getId())){
				    								flag = false;
				    								break;
				    							}else{
				    								flag = true;
				    								continue;
				    							}
				    						}
				    						if(flag){
				    							menuLinkListTemp.add(menuLink);
				    							
				    						}
			    						}
			    						//menuLinkList.add();
			    						
			    					}
			    					if(Utils.isNotNullOrEmpty(menuLinkListTemp)){
				    					ArrayList<MenuLink> menuLinkListTemp2 =  (ArrayList<MenuLink>)menuLinkListTemp.clone();
				    					map.put(key, menuLinkListTemp2);
				    					menuLinkListTemp.clear();
			    					}
			    				}
			    				
			    				
			    			}
			    			
		    			}
		    			
		    			//hashMap.put(role, menuLinklist);
		    			//MenuLink userRole = SecurityUtils.getMenuLinkById(roleMenuLink.getMenuLink());
		    		}
	    			}
		    	}
	    		
		    		/*
		    		//ʹ����ݿ��ѯ�ķ�ʽ
		    		RoleMenuLinkManager roleMenuLinkMgr = (RoleMenuLinkManager)SpringContextHolder.getBean(RoleMenuLink.class);
		    		List<RoleMenuLink> roleMenuLinksTemp = roleMenuLinkMgr.getRoleMenuLinkByUser(user.getId());
		    		
		    		if(!Utils.isNullOrEmpty(roleMenuLinksTemp)){
		    			
		    			for (RoleMenuLink roleMenuLink : roleMenuLinksTemp) {
		    				
		    				  MenuLink menuLink = SecurityUtils.getMenuLinkById(roleMenuLink.getMenuLink());
		    				  if(null == menuLink || menuLink.getId()<1){
		    					  continue;
		    				  }else{
		    					  
		    					  boolean has = false;
			    			      for (MenuLink _menuLink : this.menuLinkList) {
			    			        if (_menuLink.getId().equals(menuLink.getId())) {
			    			          has = true;
			    			          break;
			    			        }
			    			      }
			    			      if (has){
			    			        continue;
			    			      }
			    			      this.menuLinkList.add(menuLink);
		    				  }
		    				  
		    			      Menu menu = menuLink.getMenu();
		    			      if(null != menu && menu.getId()>0){
		    			    	  
			    			      boolean has = false;
			    			      for (Menu _menu : this.menuList) {
			    			        if (menu.getId().equals(_menu.getId())) {
			    			          has = true;
			    			          break;
			    			        }
			    			      }
			    			      if (has){
			    			        continue;
			    			      }
			    			      this.menuList.add(menu);
		    			      
		    			      }
		    			      
		    			    }
		    		}
		    		*/
		    		
			}
		/*
		
		List<Map.Entry<Menu, ArrayList>> infoIds =
		    new ArrayList<Map.Entry<Menu, ArrayList>>(map.entrySet());

		//����
		Collections.sort(infoIds, new Comparator<Map.Entry<Menu, ArrayList>>() {   
		    public int compare(Map.Entry<Menu, ArrayList> o1, Map.Entry<Menu, ArrayList> o2) {      
		        //return (o2.getValue() - o1.getValue()); 
		        return (o1.getKey()).getId().compareTo(o2.getKey().getId());
		    }
		}); 
		*/
		
		return SUCCESS;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<MenuLink> getMenuLinkList() {
		return menuLinkList;
	}

	public void setMenuLinkList(List<MenuLink> menuLinkList) {
		this.menuLinkList = menuLinkList;
	}

	public void setMenuList(List<Menu> menuList) {
		this.menuList = menuList;
	}

	public List<Menu> getMenuList() {
		return menuList;
	}

	public Map getMap() {
		return map;
	}

	public void setMap(Map map) {
		this.map = map;
	}
	
}
