package com.base.framework.dao;

import java.io.Serializable;
import java.util.Map;


public interface Sorter extends Serializable {

	/**
	 *  ��Ӧ��ݿ��е�asc������
	 */
	public static final String ORDER_ASC = "ASC";
	/**
	 *  ��Ӧ��ݿ��е�desc������
	 */
	public static final String ORDER_DESC = "DESC";
	
	public static final String ORDER_ID = "id";
	
	/**
	 * �����������
     * @param name ��ݿ��ֶ���
     * ע�⣺Ĭ�ϵ�������Ϊ���򣬼�ASC 
     * @return ���ص�ǰ��������
	 */
	
	public Sorter addSort(String name);
	/**
	 * �����������
     * @param name ��ݿ��ֶ��� 
	 * @param direction ������
	 * ����ͨ��Sorter.ORDER_ASC�Ȼ�ȡ������ĳ���
     * @return ���ص�ǰ��������
	 */
	public Sorter addSort(String name,String direction);
	
    /**
     * �õ�SQL�����Order by�Ӿ䲿�ֵ��ַ�
     * @return ���ع����ַ�
     * ע��÷��ص��ַ���"order by"�ַ�
     */
	public String toString();

	/**
	 * ��õ�ǰ��������һ��Map,����key:�ֶ���value������ķ���
	 * <p>��������Sorter����Ӧ��ORM�������ת��
	 * @return ����������Ϣ�ļ���
	 */
	public Map<String, String> getSorts();
	
}
