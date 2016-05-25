package com.base.framework.dao.impl;

import java.util.Collection;
import java.util.Iterator;

import com.base.framework.dao.Filter;


public class InFilter extends AbstractFilter {
	
	private static final long serialVersionUID = 3988800758696951324L;
	
	InFilter(){
		
	}
	
	/**
	 * ���ɸѡ����
     * @param name ��ݿ��ֶ��� 
     * @param val �ֶζ�Ӧ��ֵ�����ͱ�����<code>Collection</code>������
     * @return ���ص�ǰ������
	 * @see com.base.framework.dao.Filter#addCondition(java.lang.String, java.lang.Object)
	 */
	public InFilter addCondition(String name, Object val) {
		return addCondition(name, val, Filter.OPERATOR_IN, Filter.RELATION_AND);
	}


	@Deprecated
	public InFilter addCondition(String name, Object val, String op) {
		return addCondition(name, val, Filter.OPERATOR_IN, Filter.RELATION_AND);
	}

	/**
	 * ���ɸѡ����
     * @param name ��ݿ��ֶ��� 
     * @param val �ֶζ�Ӧ��ֵ�����ͱ�����<code>Collection</code>������
     * @param op ������
     * @param relation ��ϵ��
     * ע�⣺�ڱ�����ֻ����op(������)������Ϊ��ֵ,ϵͳ�������дΪIN���ض�������,������null
     * <p><code>Filter.OPERATOR_IN</code>
     * @return ���ص�ǰ������
	 */
	public InFilter addCondition(String name, Object val, String op,
			String relation) {
		
		op = Filter.OPERATOR_IN;
		
		if(name == null || name.trim().equals("") || val == null){
			log.fatal("addCondition method of name or value is null");
			return this;	//���nameΪ�ջ�մ���ǰ����������Ч
		}
		
		if (val instanceof Collection) {
			Collection vals = (Collection)val;
			
			if(vals.size() == 0)
				return this;
			
			FilterBean condition = new FilterBean();
			
			if (relation == null)
				relation = RELATION_AND;
	 
			if (n > 0)
				strBuf.append(" ").append(relation);
			n++;
			
			condition.setRelations(relation);  //���ӹ�ϵ��
			
			strBuf.append(name).append(" ");
			condition.setFieldName(name);
			strBuf.append(op).append(" (");		//ƴSQL��in����������()�е�ֵ����������ʾ
			int flag = 0;
			for (Iterator i = vals.iterator(); i.hasNext();) {
				Object element = (Object) i.next();
				
				if(flag > 0)
					strBuf.append(",");
				flag++;
				
				if (element instanceof String) 
					strBuf.append("'");
				strBuf.append(element.toString());
				if (element instanceof String) 
					strBuf.append("'");

			}
			strBuf.append(")");
			
			condition.setOperater(op); //��Ӳ�����
			condition.setValue(val); 
			
			conditions.add(condition); //����װ�õ�FilterBean��ŵ�������
		}
		else{
			log.fatal("this is filter value not Collection Class");
			return this;	//���nameΪ�ջ�մ���ǰ����������Ч
		}
		
		return this;
	}
}
