package com.manage.cache.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import redis.clients.jedis.Jedis;

import com.base.util.FormatDate;
import com.base.util.SerializeUtil;
import com.base.util.Utils;
//import com.base.constant.CacheConstants;
import com.base.framework.model.BaseObject;
import com.base.framework.service.impl.ManagerImpl;
import com.manage.cache.dao.CacheRedisDao;
import com.manage.cache.service.CacheRedisManager;
import com.manage.user.dao.UserDao;
import com.manage.user.model.User;

public class CacheRedisManagerImpl extends ManagerImpl implements CacheRedisManager{
    
	protected CacheRedisDao cacheRedisDao = null;

	public void setCacheRedisDao(CacheRedisDao cacheRedisDao) {
		this.cacheRedisDao = cacheRedisDao;
	}
    
    public <T> boolean setModel(T t){
    	
    	String className = t.getClass().getName();

    	boolean flag = true;
//    	if(Utils.isNotNullOrEmpty(className)){
//    		Map<String,String> map = null;
//    		if(className.equals(CacheConstants.USER_CLASS_NAME)){
//    			Map<String,String> hash = transModelToMapUser((User)t);
//    			flag = cacheRedisDao.setHash(CacheConstants.USER+((User)t).getId(), hash);
//    		}else if(className.equals(CacheConstants.GRADE_CLASS_NAME)){
//    			Map<String,String> hash = transModelToMapGrade((Grade)t);
//    			flag = cacheRedisDao.setHash(CacheConstants.GRADE+((Grade)t).getId(), hash);
//    		}else if(className.equals(CacheConstants.COURSE_CLASS_NAME)){
//    			Map<String,String> hash = transModelToMapCourse((Course)t);
//    			flag = cacheRedisDao.setHash(CacheConstants.COURSE+((Course)t).getId(), hash);
//    		}else if(className.equals(CacheConstants.COURSEWARE_CLASS_NAME)){
//    			Map<String,String> hash = transModelToMapCourseWare((CourseWare)t);
//    			flag = cacheRedisDao.setHash(CacheConstants.COURSEWARE+((CourseWare)t).getId(), hash);
//    		}
//    		
//    	}
    	
    	return flag;
    	
    }
    
    public <T> BaseObject getModel(T t){
    	
//    	String className = t.getClass().getName();
//    	System.out.println("@@@@@@@@@@@@@@@@@@@@@"+ className);
//    	if(Utils.isNotNullOrEmpty(className)){
//    		Map<String,String> map = null;
//    		this.modelClass = t.getClass();
//    		if(className.equals(CacheConstants.USER_CLASS_NAME)){
//    			map = cacheRedisDao.getHash(CacheConstants.USER+ ((User) t).getId());
//    			System.out.println(map);
//    			User user = null;
//    			if(Utils.isNullOrEmpty(map)){
//    				
//    				user = (User) getObjectById( ((User) t).getId() );
//    				if(null != user && null != user.getId() && user.getId()>= 0){
//    					 setModel(user);
//    				}
//    				
//    			}else{
//    				user = transMapToModelUser(map);
//    			}
//    			return user;
//    		}
//    		if(className.equals(CacheConstants.GRADE_CLASS_NAME)){
//    			map = cacheRedisDao.getHash(CacheConstants.GRADE+  ((Grade)t).getId());
//    			Grade grade = null;
//    			if(Utils.isNullOrEmpty(map)){
//    				grade = (Grade) getObjectById( ((Grade) t).getId() );
//    				 if(null != grade && null != grade.getId()  &&  grade.getId()>= 0){
//    					 setModel(grade);
//    				 }
//    				
//    			}else{
//    				grade = transMapToModelGrade(map);
//    			}
//    			return grade;
//    		}
//    		if(className.equals(CacheConstants.COURSE_CLASS_NAME)){
//    			map = cacheRedisDao.getHash(CacheConstants.COURSE+ ((Course) t).getId());
//    			Course course = null;
//    			if(Utils.isNullOrEmpty(map)){
//    				course = (Course) getObjectById(((Course) t).getId());
//    				 if(null != course && null != course.getId() && course.getId()>= 0){
//    					 setModel(course);
//    				 }
//    				
//    			}else{
//    				course = transMapToModelCourse(map);
//    			}
//    			return course;
//    		}else if(className.equals(CacheConstants.COURSEWARE_CLASS_NAME)){
//    			map = cacheRedisDao.getHash(CacheConstants.COURSE+ ((CourseWare) t).getId());
//    			CourseWare courseware = null;
//    			if(Utils.isNullOrEmpty(map)){
//    				courseware = (CourseWare) getObjectById(((CourseWare) t).getId());
//    				 if(null != courseware && null != courseware.getId() && courseware.getId()>= 0){
//    					 setModel(courseware);
//    				 }
//    				
//    			}else{
//    				courseware = transMapToModelCourseWare(map);
//    			}
//    			return courseware;
//    		}
//    	}
    	return null;
    	//saveObject(discuss);
    	//Map<String,String> hash = transModelToMapUser();
    	//cacheRedisDao.setHash(CacheConstants.USER+user.getId(), hash);
    	
    }
    
    public boolean setListObj(String key, List<? extends Object> value) {
    	return cacheRedisDao.setListObj(key, value);
    }
    
    public <T> List<T> getListObj(String key) {
		return cacheRedisDao.getListObj(key);
	}
    
    public boolean delKey(String key, boolean isByte) {
		return cacheRedisDao.delKey(key, isByte);
	}
	public Jedis getJedis() {
		return cacheRedisDao.getJedis();
	}
	
	public <T> boolean setMapList(String key, Map<Integer, List<T>> value) {
		return cacheRedisDao.setMapList(key, value);
	}
	public <T> Map getMapList(String key) {
		return cacheRedisDao.getMapList(key);
	}
	public <T> boolean setMap(String key, Map<Integer, T> value) {
		return cacheRedisDao.setMap(key,value);
	}
	public <T> Map getMap(String key) {
		return cacheRedisDao.getMap(key);
	}

	
    public  Map<String,String> transModelToMapUser(User user){ 
    	
    	Map<String,String> 	map = new HashMap<String,String>();
    	map.put("id", user.getId().toString());
    	map.put("name", Utils.getNullString(user.getName()));
    	map.put("nickname", Utils.getNullString(user.getNickname()));
    	map.put("realname", Utils.getNullString(user.getRealname()));
    	if(user.getSex() !=null)
    		map.put("sex", user.getSex().toString());
    	if(user.getBirthday()!= null)
    		map.put("birthday", FormatDate.dateToStringByStr(user.getBirthday(), "yyyy-MM-dd"));
    	map.put("mail", Utils.getNullString(user.getMail()));
    	map.put("phone", Utils.getNullString(user.getPhone()));
    	map.put("cellphone", Utils.getNullString(user.getCellphone()));
    	map.put("headpicpath", Utils.getNullString(user.getHeadpicpath()));
    	if(user.getOrgId() != null)
    		map.put("orgId", user.getOrgId().toString());
    	map.put("orgName", Utils.getNullString(user.getOrgName()));
    	if(user.getAccountoverdate() != null)
    		map.put("accountoverdate", FormatDate.dateToStringByStr(user.getAccountoverdate(), "yyyy-MM-dd"));
    	if(user.getStudyoverduedate() != null)
    		map.put("studyoverduedate", FormatDate.dateToStringByStr(user.getStudyoverduedate(), "yyyy-MM-dd"));
    	if(user.getIsgroup() != null)
    		map.put("isgroup", user.getIsgroup().toString());
    	if(user.getIsopen() != null)
    		map.put("isopen", user.getIsopen().toString());
    	
    	return map;
    
    }
    
    public  User transMapToModelUser(Map<String,String> map){
    	
        User user = new User();
        user.setId(Integer.parseInt(map.get("id")));
    	user.setName(map.get("name"));
    	user.setNickname(map.get("nickname"));
    	user.setRealname(map.get("realname"));
    	if(Utils.isNotNullOrEmpty(map.get("sex")))
    		user.setSex(Integer.parseInt(map.get("sex")));
    	if(Utils.isNotNullOrEmpty(map.get("birthday")))
    		user.setBirthday(FormatDate.stringToDate(map.get("birthday")));
    	user.setMail(map.get("mail"));
    	user.setPhone(map.get("phone"));
    	user.setCellphone(map.get("cellphone"));
    	user.setHeadpicpath(map.get("headpicpath"));
    	if(Utils.isNotNullOrEmpty(map.get("orgId")))
    		user.setOrgId(Integer.parseInt(map.get("orgId")));
    	user.setOrgName(map.get("orgName"));
    	if(Utils.isNotNullOrEmpty(map.get("accountoverdate")))
    		user.setAccountoverdate(FormatDate.stringToDate(map.get("accountoverdate")));
    	if(Utils.isNotNullOrEmpty(map.get("studyoverduedate")))
    		user.setStudyoverduedate(FormatDate.stringToDate(map.get("studyoverduedate")));
    	if(Utils.isNotNullOrEmpty(map.get("isgroup")))
    		user.setIsgroup(Integer.parseInt(map.get("isgroup")));
    	if(Utils.isNotNullOrEmpty(map.get("isopen")))
    		user.setIsopen(Integer.parseInt(map.get("isopen")));
    	return user;
    
    }
   
    
    
	protected void preSaveObject(Object obj) {
        super.preSaveObject(obj);
    }

    protected void postSaveObject(Object obj) {
        super.postSaveObject(obj);
    }

    protected void preRemoveObject(Object obj) {
        super.preRemoveObject(obj);
    }

    protected void postRemoveObject(Object obj) {
        super.postRemoveObject(obj);
    }
}
