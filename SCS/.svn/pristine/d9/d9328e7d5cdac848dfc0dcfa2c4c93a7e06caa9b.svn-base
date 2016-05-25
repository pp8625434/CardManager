package com.manage.enumeration;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import com.base.framework.SpringContextHolder;
import com.manage.enumeration.model.Enumeration;
import com.manage.enumeration.model.EnumerationValue;
import com.manage.enumeration.service.EnumerationManager;


public class EnumerationHelper {
	
	private static EnumerationManager enumMgr = (EnumerationManager)SpringContextHolder.getBean(Enumeration.class);
	
    /**
     * ͨ����ö��ʵ�����֣��õ�ö��ֵbean��һ������
     * @param enumName ö��ʵ������,����ĸСд
     * @return ������ö��ʵ���Ӧ��ö��ֵ�ļ���
     */
    public static LinkedHashMap<Integer, String> getEnumerationValue(String enumName){
    	/**
    	List<Enumeration> enums = enumMgr.getEnumerations();

    	for (Enumeration enumeration : enums) {
    		if(enumeration.getEnName().equals(enumName))
    			return enumeration.getEnumerationValues();
		}
    	
    	return new ArrayList<EnumerationValue>();
    	**/
    	HashMap<String, LinkedHashMap<Integer, String>> enums = enumMgr.getEnumerationMaps();
    	
    	return enums.get(enumName)==null?new LinkedHashMap<Integer, String>():enums.get(enumName);
    }
    
    /**
     * ͨ���ö��ʵ�����֣��õ���ö��ֵIDΪkey����������value��һ��Map
     * @param enumName ö��ʵ������,����ĸСд
     * @return ������ö��ֵIDΪkey����������value��һ��Map
     */
    public static Map<Integer, String> getEnumerationValueMap(String enumName){
    	
    	/**
    	List<EnumerationValue> values = getEnumerationValue(enumName);
    	
    	Map<Integer, String> result = new LinkedHashMap<Integer, String>();
    	
    	for (EnumerationValue enumValue : values) {
			result.put(enumValue.getId(), enumValue.getDisplayRef());
		}
    	*/
    	return getEnumerationValue(enumName);
    }
    
    
    /**
     * ͨ����ö��ֵIDֵ���õ���ö��ֵ��bean
     * @param enumerationValueId ö��ֵIDֵ
     * @return ö��ֵ��bean
     */
	public static EnumerationValue getEnumerationValue(Integer enumerationValueId){
    	/**
		List<Enumeration> enums = enumMgr.getEnumerations();

    	for (Enumeration enumeration : enums) {
    		List enumerationValues = enumeration.getEnumerationValues();
    		if(enumerationValues != null && enumerationValues.size()>0){
    			for (Iterator iter = enumerationValues.iterator(); iter.hasNext();) {
        			EnumerationValue value = (EnumerationValue) iter.next();
        			
        			if(value.getId().equals(enumerationValueId))
        				return value;
    			}
    		}
    		
    	}
    	**/
		
		LinkedHashMap<Integer, EnumerationValue> enumValueMap = enumMgr.getEnumerationValueMaps();
		
    	return enumValueMap.get(enumerationValueId)==null?new EnumerationValue():enumValueMap.get(enumerationValueId);
    }
    
}
