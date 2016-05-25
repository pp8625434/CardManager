package com.manage.cache.dao;

import java.util.List;
import java.util.Map;

import redis.clients.jedis.Jedis;


public interface CacheRedisDao {
	
	public <T> T getString(String key);

	public <T> boolean setString(String key, T value);
	
	public <T> boolean setList(String key, T value);
	
	public <T> boolean setHash(String key, Map<String,String> hash);
	
	public <T> Map<String,String>  getHash(String key);
	
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