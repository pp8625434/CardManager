package com.base.framework.dao.impl;

import com.base.framework.dao.Filter;


public class SimpleFilter extends AbstractFilter {

	private static final long serialVersionUID = 6104162353423716952L;

	SimpleFilter(){
		
	}
	
	
	public Filter addCondition(String name, Object val) {
		if (val instanceof String && val != null) {
			String strVal = (String) val;
			if (strVal.trim().length() == 0)
				return this; //���Ϊ���ַ����Ե�ǰ��ӵ�����

			return addCondition(name, val, OPERATOR_LIKE);
		} else
			return addCondition(name, val, OPERATOR_EQ);
	}

	/* (non-Javadoc)
	 */
	public Filter addCondition(String name, Object val, String op) {
		return addCondition(name, val, op, RELATION_AND);
	}

	/* (non-Javadoc)
	 */
	public Filter addCondition(String name, Object val, String op,
			String relation) {
		
		if(name == null || name.trim().equals("")){
			//log.fatal("addCondition method of name  is null");
			return this;	//���nameΪ�ջ�մ���ǰ����������Ч
		}
		
		FilterBean condition = new FilterBean();
		
		if (relation == null)
			relation = RELATION_AND;
 
		if (n > 0)
			strBuf.append(" ").append(relation);
		
		condition.setRelations(relation);  //���ӹ�ϵ��
		
		if (op == null) {
			if (val instanceof String)
				op = OPERATOR_LIKE;
			else
				op = OPERATOR_EQ;
		}

		condition.setOperater(op);		//���Ӳ�����
		condition.setValue(val);		//����ֵ
		
		if (val == null) {
			strBuf.append(" ").append(name);

			if (op.equals(OPERATOR_EQ))
				strBuf.append(" IS NULL ");
			else
				strBuf.append(" IS NOT NULL ");
		}
		else {

			String valStr = getValueStr(val, op);
			
			if(n > 0)
				strBuf.append(" ");
			strBuf.append(name).append(" ").append(op).append(" ").append(valStr);
		}
		
		condition.setFieldName(name);		//���ò�ѯ�ֶεĵ��ֶ���
		conditions.add(condition);
		n++;
		return this;
	}

	
	private String getValueStr(Object val, String op) {
		if (val instanceof String) {
			String strVal = (String) val;

			if (op.equals(OPERATOR_LIKE)) {
				if ((strVal.indexOf('?') == -1) && (strVal.indexOf('*') == -1)) {
					return "N'%" + strVal + "%'";
				} else
					return "N'%" + strVal.replaceAll("[*]", "%") + "'";
			} else
				return "N'" + strVal + "'";
		} else if (val instanceof java.util.Date)
			return formatter.format(val);
		else
			return val.toString();
	}


 
}

