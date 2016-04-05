package com.manage.cache.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.Map.Entry;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.ShardedJedisPool;

import com.base.util.SerializeUtil;
import com.manage.cache.dao.CacheRedisDao;

public class CacheRedisDaoImpl implements CacheRedisDao{
	
	private JedisPool jedisPool;
	
	private ShardedJedisPool shardedJedisPool;
	
	private Jedis jedis;
	
	protected transient static Log log = LogFactory.getLog(CacheRedisDaoImpl.class);
	//private Logger log = Logger.getLogger(RedisCacheMangerImpl.class);

	/*
	public <T> T getValue(String key) {
		 return redisTemplate.execute(new RedisCallback<User>() {  
			        @Override  
			        public User doInRedis(RedisConnection connection)  
			                 throws DataAccessException {  
			             byte[] key = redisTemplate.getStringSerializer().serialize(  
			                     "user.uid." + uid);  
			             if (connection.exists(key)) {  
			                 byte[] value = connection.get(key);  
			                 String address = redisTemplate.getStringSerializer()  
			                         .deserialize(value);  
			                 User user = new User();  
			                 user.setAddress(address);  
			                 user.setUid(uid);  
			                 return user;  
			             }  
			             return null;  
			         }  
			     });  

	}

	public void setValue(final String key,final Object value) {
		
		redisTemplate.execute(new RedisCallback<Object>() {  
			       @Override  
			        public Object doInRedis(RedisConnection connection)  
			                throws DataAccessException {  
			            connection.set(  
			                    redisTemplate.getStringSerializer().serialize(key),  
			                    redisTemplate.getStringSerializer().serialize(value));
			            return null;  
			        }  
			    });
	}
	*/


	public <T> T getString(String key) {
		 T t = null;
		try {
			log.info("get from redisCache :"+key);
			jedis = jedisPool.getResource();
			jedisPool.returnResource(jedis);
			t =  (T)jedis.get(key);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			jedisPool.returnResource(jedis);
		}
		return t;
	}
 

	public <T> boolean setString(String key, T value) {
		boolean flag = false;
		try {
			log.info("add to redisCache :"+key);
			//System.out.println("add to rediscache");
			jedis = jedisPool.getResource();
			jedis.set(key, (String)value);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			jedisPool.returnResource(jedis);
		}
		return flag;
	}
	
	/**
	 * @param <T>
	 * @param key
	 * @param value
	 * @return 
	 */
	public <T> boolean setList(String key, T value) {
		boolean flag = false;
		try {
			log.info("add to redisCache :"+key);
			jedis = jedisPool.getResource();
			jedis.set(key, (String)value);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			jedisPool.returnResource(jedis);
		}
		return flag;
	}

	/* (non-Javadoc)
	 * @see com.manage.cache.dao.CacheRedisDao#setHash(java.lang.String, java.lang.Object)
	 */
	public <T> boolean setHash(String key, Map<String,String> hash){
		boolean flag = false;
		try {
			log.info("add to redisCache :"+key);
			jedis = jedisPool.getResource();
			jedis.hmset(key, hash);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			jedisPool.returnResource(jedis);
		}
		return flag;
		
	}
	
	public <T> Map<String,String> getHash(String key){
		Map<String,String> map = null;
		try {
			log.info("add to redisCache :"+key);
			jedis = jedisPool.getResource();
			map = jedis.hgetAll(key);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			jedisPool.returnResource(jedis);
		}
		return map;
		
	}

	public boolean setListObj(String key, List<? extends Object> value) {
		boolean flag = false;
		try {
			log.info("add to redisCache :"+key);
			jedis = jedisPool.getResource();
			for(int i=value.size()-1;i>=0;i--){
				jedis.lpush(key.getBytes(),SerializeUtil.serialize(value.get(i)));
			}
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			jedisPool.returnResource(jedis);
		}
		return flag;
	}
	
	public <T> List<T> getListObj(String key) {
		List<T> list = null;
		try {
			log.info("get from redisCache :"+key);
			jedis = jedisPool.getResource();
			list = new ArrayList<T>();
			List<byte[]> templist = jedis.lrange(key.getBytes(), 0, -1);
			for(byte[] bt : templist){
				T t = (T)SerializeUtil.unserialize(bt);
				list.add(t);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			jedisPool.returnResource(jedis);
		}
		return list;
	}
	
	public boolean delKey(String key,boolean isByte) {
		boolean flag = false;
		try {
			log.info("del from redisCache :"+key);
			jedis = jedisPool.getResource();
			if(isByte){
				jedis.del(key.getBytes());
			}else{
				jedis.del(key);
			}
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			jedisPool.returnResource(jedis);
		}
		return flag;
	}

 
	public Jedis getJedis() {
		try {
			jedis = jedisPool.getResource();
			//jedisPool.returnResource(jedis);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			//jedisPool.returnResource(jedis);
		}
		return jedis;
	}
	
	public <T> boolean setMapList(String key, Map<Integer, List<T>> value) {
		boolean flag = false;
		try {
			log.info("set key redisCache :"+key);
			jedis = jedisPool.getResource();
			Map<byte[],byte[]>  map  =new HashMap<byte[],byte[]>();
			Iterator it = value.entrySet().iterator();
			while(it.hasNext()){
				Map.Entry<Integer, List<T>> entry = (Entry<Integer, List<T>>) it.next();
				map.put(SerializeUtil.int2byte(entry.getKey()), SerializeUtil.serialize(entry.getValue()));
			}
			jedis.hmset(key.getBytes(), map);
			flag =  true;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			jedisPool.returnResource(jedis);
		}
		return flag;
	}
	
	public <T> Map getMapList(String key) {
		Map<Integer,List<T>>  resultMap = null;
		try {
			log.info("get key redisCache :"+key);
			jedis = jedisPool.getResource();
			resultMap  =new TreeMap<Integer,List<T>>();
			Map<byte[],byte[]> redismap = jedis.hgetAll(key.getBytes());
			Iterator it = redismap.entrySet().iterator();
			while(it.hasNext()){
				Map.Entry<byte[],byte[]>  entry = (Map.Entry<byte[],byte[]> ) it.next();
				resultMap.put(new Integer(SerializeUtil.byte2int(entry.getKey())), (List<T>)SerializeUtil.unserialize(entry.getValue()));
			}
			return resultMap;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			jedisPool.returnResource(jedis);
		}
		return resultMap;
	}
	
	public <T> boolean setMap(String key, Map<Integer, T> value) {
		boolean flag = false;
		try {
			log.info("set key redisCache :"+key);
			jedis = jedisPool.getResource();
			jedisPool.returnResource(jedis);
			Map<byte[],byte[]>  map  =new HashMap<byte[],byte[]>();
			Iterator it = value.entrySet().iterator();
			while(it.hasNext()){
				Map.Entry<Integer, T> entry = (Entry<Integer,T>) it.next();
				map.put(SerializeUtil.int2byte(entry.getKey()), SerializeUtil.serialize(entry.getValue()));
			}
			jedis.hmset(key.getBytes(), map);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			jedisPool.returnResource(jedis);
		}
		return flag;
	}
	
	public <T> Map getMap(String key) {
		
		Map<Integer,T>  resultMap = null;
		try {
			log.info("get key redisCache :"+key);
			jedis = jedisPool.getResource();
			jedisPool.returnResource(jedis);
			resultMap  =new TreeMap<Integer,T>();
			Map<byte[],byte[]> redismap = jedis.hgetAll(key.getBytes());
			Iterator it = redismap.entrySet().iterator();
			while(it.hasNext()){
				Map.Entry<byte[],byte[]>  entry = (Map.Entry<byte[],byte[]> ) it.next();
				resultMap.put(new Integer(SerializeUtil.byte2int(entry.getKey())), (T) SerializeUtil.unserialize(entry.getValue()));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			jedisPool.returnResource(jedis);
		} 
		return resultMap;
	}
	
	public static void main(String[] args) {
		//new CacheRedisDaoImpl().setValue("12345", "asdfg");
	}

	public JedisPool getJedisPool() {
		return jedisPool;
	}

	public void setJedisPool(JedisPool jedisPool){
		this.jedisPool = jedisPool;
	}
	
	
	public ShardedJedisPool getShardedJedisPool() {
		return shardedJedisPool;
	}
	
	public void setShardedJedisPool(ShardedJedisPool shardedJedisPool) {
		this.shardedJedisPool = shardedJedisPool;
	}
	

}