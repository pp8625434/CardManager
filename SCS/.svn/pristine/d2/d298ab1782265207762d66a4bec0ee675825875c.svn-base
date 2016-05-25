package com.manage.cache.service;

import java.util.List;
import java.util.Map;

import redis.clients.jedis.Jedis;

import com.base.framework.model.BaseObject;
import com.base.framework.service.Manager;
 
import com.manage.user.model.User;

public interface CacheRedisManager extends Manager{
    
    public <T> boolean setModel(T t);

    public <T> BaseObject  getModel(T t);


    public boolean setListObj(String key,List<? extends Object> value);
    
    public <T> List<T> 	getListObj(String key);
    
    /**
	 * @param key
	 * @param isByte 在rdis内是key否以二进制存储
	 * @return
	 */
	public boolean delKey(String key,boolean isByte);
	
	public  Jedis getJedis();
	
	public <T> boolean setMapList(String key,Map<Integer,List<T>> value);
	
	public <T> Map getMapList(String key);

	public <T> boolean setMap(String key, Map<Integer, T> value);
	
	public <T> Map getMap(String key);

    
}
