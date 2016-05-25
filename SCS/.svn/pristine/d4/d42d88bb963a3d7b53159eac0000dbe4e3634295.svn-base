package com.base.util;


import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import org.apache.commons.beanutils.PropertyUtils;



import ognl.NullHandler;
import ognl.Ognl;
import ognl.OgnlException;
import ognl.OgnlRuntime;


public class BeanUtil {
	
	/**
	 * ��ø���������������Ӧ��ֵ
	 * @param bean �����
	 * @param propertyName ������
	 * @return ���ظ����Զ�Ӧ��ֵ
	 */
	public static Object getPropertyValue(Object bean, String propertyName){
		try {
			return PropertyUtils.getProperty(bean, propertyName);
			
		} catch (IllegalAccessException e) {
			e.printStackTrace();
			return null;
		} catch (InvocationTargetException e) {
			e.printStackTrace();
			return null;
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * ��ø���������������Ӧ��ֵ
	 * @param bean �����
	 * @param propertyName ������
	 * @return ���ظ����Զ�Ӧ��ֵ,������ֵ����ΪString����
	 */
	public static String getPropertyValueToStr(Object bean, String propertyName){
		
		Object val = getPropertyValue(bean, propertyName);
		
		if(val == null)
			return null;
		
		return (String)val;
	}
	
	/**
	 * Ϊ�������������ֵ
	 * @param bean �����
	 * @param propertyName ������
	 * @param value ֵ
	 */
	public static void setPropertyValue(Object bean, String propertyName, Object value){
		try {
			PropertyUtils.setProperty(bean, propertyName, value);
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * ͨ��OGNL��������ֵӳ�䵽��������,����֧�ּ�����ĸ�ֵ
	 * @param bean �����
	 * @param propertyName ������
	 * @param value ֵ
	 */
	public static void ognlPropertyValue(Object bean, String propertyName, Object value){
		OgnlRuntime.setNullHandler(Object.class, new StanderNullHandler());
		try {
			Ognl.setValue(propertyName, bean, value);
		} catch (OgnlException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}

class StanderNullHandler implements NullHandler {
	
    public StanderNullHandler() {
        super();
    }
    
    public Object nullMethodResult(Map context, Object target, String methodName, Object[] args) {
        return null;
    }
    
    public Object nullPropertyValue(Map context, Object target, Object property) {
        try {
            String propName = property.toString();
            Class clazz = OgnlRuntime.getPropertyDescriptor(target.getClass(), propName).getPropertyType();
            Object param = clazz.newInstance();		//�½�ʵ��
            Ognl.setValue(propName, context, target, param);	//�ݹ����?
            return param;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}