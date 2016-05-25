package com.base.framework.web.interceptor;

import java.beans.PropertyDescriptor;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.apache.commons.beanutils.PropertyUtils;
import com.base.framework.SpringContextHolder;
import com.base.util.BeanUtil;
import com.base.framework.model.BaseObject;
import com.base.framework.service.Manager;
import com.base.framework.service.impl.ManagerImpl;
import com.base.framework.web.SynchronizationData;
import com.base.framework.web.struts.BaseAction;
import com.base.framework.web.exception.BusinessException;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.interceptor.PrepareInterceptor;



public class LoadObjectInterceptor extends PrepareInterceptor {


	public String doIntercept(ActionInvocation invocation) throws Exception {
		 BaseAction action = (BaseAction)invocation.getAction();
		 String actionName = invocation.getProxy().getActionName();
		 String methodName = invocation.getProxy().getMethod();
		 if((actionName.toUpperCase().indexOf("SAVE")<0  && methodName.toUpperCase().indexOf("UPDATE")<0) && !(action instanceof SynchronizationData)){
			 String result = invocation.invoke();
			 return result;
		 }
		 
		 PropertyDescriptor[] actionProperties = PropertyUtils.getPropertyDescriptors(action);
		 //����action�е����г�Ա����
		 for (PropertyDescriptor actionDescriptor : actionProperties) {
			
			 //�����BaseObject���͵����Ծ����
			 Class ObjClazz = actionDescriptor.getPropertyType();
			 if(!BaseObject.class.isAssignableFrom(ObjClazz) && !Collection.class.isAssignableFrom(ObjClazz))
				 continue;
			 
			 //���BaseObject���͵Ķ�������ֵΪnull�����
			 String propertyName = actionDescriptor.getName();
			 Object mergeObject = null;
			 
			 //�����һ��POJO�Ĵ���
			 if(BaseObject.class.isAssignableFrom(ObjClazz)){
				 BaseObject obj = (BaseObject)BeanUtil.getPropertyValue(action, propertyName);
				
				 if(obj == null)
					 continue;
				 
				 mergeObject = assemblingObject(obj, action, invocation);	//������½�����,�����ݿ���load�����ö���,��ʵ����־ò��ͬ��

				}
			 
			 //����Ǽ��ϵĴ���
			 if(Collection.class.isAssignableFrom(ObjClazz)){
				 Collection obj = (Collection)BeanUtil.getPropertyValue(action, propertyName);
				 
				 if(obj == null)
					 continue;
				 
				 if( obj.size() == 0){
					 mergeObject = obj;
					 continue;
				 }
				 mergeObject = new ArrayList();
				 for (Iterator iter = obj.iterator(); iter.hasNext();) {
					 Object element = iter.next();
					 
					 //�����ڵ�Ԫ�ز���BaseObject����,������־ò�ĺϲ�����
					 if(!BaseObject.class.isAssignableFrom(element.getClass())){
						 mergeObject = obj;
						 break;
					 }
					 
					BaseObject baseObject = (BaseObject)element;
					
					//ͨ��baseObject�ϲ�����,���ö�����ΪԪ�ؼӵ�������
					((Collection)mergeObject).add(assemblingObject(baseObject, action, invocation));
				}
			 }
			 
//			 //������½��Ķ�����ִ���½����?��
//			 if(obj.getPrimarykey() == null){ //����Ϊnull��Ϊ�½��Ķ���
//				 ObjectNew(obj,null);  
//				 continue;
//			 }
//			 
//			 BaseObject persistence = loadObject(obj);	//������½�����,�����ݿ���load�����ö���,��ʵ����־ò��ͬ��
//			 
//			 merageObject(persistence, obj, null);	//���־ò��еĶ�������Ӳ��͹����Ķ������ϲ�
			 BeanUtil.setPropertyValue(action, propertyName, mergeObject);	//���ϲ���Ķ���ŵ�action��������
		}
		 
		 String result = invocation.invoke();
		 return result;
	}
	
	/**
	 * ����һ���־ò�����ֲ�ϲ����POJO
	 * @throws BusinessException 
	 */
	private BaseObject assemblingObject(BaseObject obj, BaseAction action, ActionInvocation invocation) throws InstantiationException, IllegalAccessException, BusinessException{
		 //������½��Ķ�����ִ���½����?��
		 if(obj.getPrimarykey() == null){ //����Ϊnull��Ϊ�½��Ķ���
			 ObjectNew(obj,null);  
			 return obj;
		 }
		 
		 BaseObject persistence = loadObject(obj);	//������½�����,�����ݿ���load�����ö���,��ʵ����־ò��ͬ��
		 
		 merageObject(persistence, obj, null, action, invocation);	//���־ò��еĶ�������Ӳ��͹����Ķ������ϲ�
		 
		 return persistence;
	}
	
	private void ObjectNew(BaseObject obj, BaseObject parentObj) {
		PropertyDescriptor[] properties = PropertyUtils.getPropertyDescriptors(obj);
		
		//�����µ�POJO����Ϊ�Ǹı��,����BaseObject�е�dirty��Ϊtrue
		obj.setDirty(true);
		
		//����������������
		for (PropertyDescriptor descriptor : properties) {
			String propertyName = descriptor.getName();
			Object domainObject = BeanUtil.getPropertyValue(obj, propertyName);

			if(descriptor.getWriteMethod() == null) //���û��д���������,��class
				continue;
			
			
			if (domainObject == null)
				continue;

			if (parentObj == domainObject)
				continue; // ���Ը���lookup����

			if (domainObject instanceof BaseObject) {
				BaseObject bo = (BaseObject)domainObject;
				if(bo.getPrimarykey() == null)		//�������Ϊnull���򽫸����Ե�ֵ��Ϊnull
					BeanUtil.setPropertyValue(obj, propertyName, null);
				else{
					Object val = loadObject(bo);	//����load�����ö���,����ֵ
					if(val == null)
						BeanUtil.setPropertyValue(obj, propertyName, null);
					else
						BeanUtil.setPropertyValue(obj, propertyName, val);
				}
			}

			if (domainObject instanceof Collection) {		//����м���,���ݹ����
				Collection coll = (Collection) domainObject;
				if (coll == null)
					continue;

				for (Object object : coll) {
					if(object != null)
						ObjectNew((BaseObject)object, obj);
				}
			}
		}
	}
	
	private void merageObject(BaseObject pObj, BaseObject vObj, BaseObject parentObj, BaseAction action, ActionInvocation invocation) throws InstantiationException, IllegalAccessException, BusinessException{
		
		boolean equalsClass = vObj.getClass().equals(pObj.getClass());
		
		Set<String> v_PropertyNams = new HashSet<String>();
		if(!equalsClass){
			PropertyDescriptor[] v_properties = PropertyUtils.getPropertyDescriptors(vObj);
			for (PropertyDescriptor v_descriptor : v_properties) {
				v_PropertyNams.add(v_descriptor.getName());
			}
		}
		
		//�ڸ�ֵ֮ǰ���������������ݱ�ʶ����Ϊfalse
		vObj.setDirty(false); 
		pObj.setDirty(false);
		
		PropertyDescriptor[] properties = PropertyUtils.getPropertyDescriptors(pObj);
		for (PropertyDescriptor descriptor : properties) {
			String propertyName = descriptor.getName();
			Class clazz = descriptor.getPropertyType();
			
			if(descriptor.getWriteMethod() == null) //���û��д���������,��class
				continue;
			
			//�����ֲ�������־����Ͳ�ͬ�����ұ��ֲ������ڳ־ò���û��,���.Ŀ���Ǵ���ʵ��̳�
			if(!equalsClass && !v_PropertyNams.contains(propertyName)) 
				continue;
			
			Set<String>  parameterNames = invocation.getInvocationContext().getParameters().keySet();
			
			Object v_value = BeanUtil.getPropertyValue(vObj, propertyName); //������Ϊnull,���
			if(v_value == null && notIncludParameterName( parameterNames, propertyName))
				continue;
			
			if(clazz.isInterface() && !(v_value instanceof Collection))	//����POJOʵ�ֽӿڣ��������Ӧ�������ǽӿ������
				continue;
			
			if(parentObj !=null && v_value == parentObj)	//�������뵱ǰ������ͬһ�����,��Ҫ��Ϊ�ݹ����ʱ������
				continue;

			if(propertyName.equals("dirty"))		//�����dirty������ֵ����
				continue;
//			Object new_value = BeanUtil.getPropertyValue(newObj,propertyName);
//			if(new_value !=null && new_value.equals(v_value))	//�����ֵ��Ϊ�ղ�������ֲ��ֵ��ͬ,���,Ŀ���Ǵ���POJO��ȱʡֵ
//				continue;
			
			Object p_value = BeanUtil.getPropertyValue(pObj, propertyName);
			
			
			if(propertyName.equals("version") && v_value != null && !v_value.equals(p_value) ){
					action.setErrorObject(vObj);
			}
			
			//�������ϸ��������������version������ֲ��ֵ��Ϊ��ʱ,���־ò����ֵ������ֲ�
			if(parentObj != null && propertyName.equals("version") && v_value == null){ 
				v_value = p_value;
			}
			
			if(!(v_value instanceof Collection) && !(v_value instanceof BaseObject)) //�������Ե����Ͳ��Ǽ��ϻ�BaseObject����,��򵥸�ֵ
				BeanUtil.setPropertyValue(pObj, propertyName, v_value);
			
			
			//lookup���ʹ���
			if (v_value instanceof BaseObject) {
				BaseObject v_bo_obj = (BaseObject)v_value;	//���ֲ����
				BaseObject p_bo_obj = (BaseObject)p_value;	//�־ò����
				if(v_bo_obj.getPrimarykey() == null)
					continue;
				
				if(p_value != null && v_bo_obj.getPrimarykey().equals(p_bo_obj.getPrimarykey()))
					continue;
				
				Object val = null;
				if(Integer.parseInt(v_bo_obj.getPrimarykey().toString()) >= 0) //���lookup��������С��0�ģ��͵����ÿ�
					val = loadObject(v_bo_obj);	//load����lookup����
//				if(val == null)
//					continue;
				
				BeanUtil.setPropertyValue(pObj, propertyName, val);	//��load�����Ķ��󸳸�־ò����
			}
			
			if(p_value instanceof Collection){	//����Ǽ������ݹ鴦��
				List p_coll = (List)p_value; //�־ò㼯��
				List _v_coll = (List)v_value;
				List v_coll = new ArrayList(); //���ֲ㼯��
				
				for (Iterator iter = _v_coll.iterator(); iter.hasNext();) {	//�Ƚ��Ӹ��ϸ�����
					BaseObject element = (BaseObject) iter.next();
					if(element == null){
						continue;
					}
					element.setParentEntity(pObj);	//Ϊ�Ӽ�¼����POJO������
					v_coll.add(element);
				}
				
				if(p_coll.size() == 0){						//�����ڵĶ������½���
					for (Object object : v_coll) {
						if(object == null)
							continue;
						ObjectNew((BaseObject)object, pObj);
						p_coll.add(object);
					}
				}

				else{									//�����ڵĶ����ǲ����½���ֻ�Ǹ��µ�
					int p_index = p_coll.size();
					int v_index = v_coll.size();
					int length = v_index - p_index;
					for (int i = 0; i < v_index-length; i++) {	//�����²���,�ݹ�merageObject����
						merageObject((BaseObject)p_coll.get(i),(BaseObject)v_coll.get(i), pObj, action, invocation);
					}
					for (int i = 0; i < length; i++) {			//���½�����
						ObjectNew((BaseObject)v_coll.get(v_index - length + i), pObj);
						p_coll.add(v_coll.get(v_index - length + i));
					}
				}
			}
		}
	}
	
	private BaseObject loadObject(BaseObject obj){
		Serializable id = obj.getPrimarykey();
		ManagerImpl manager = (ManagerImpl)SpringContextHolder.getBean(Manager.class);
		Object value = manager.getObjectById(obj.getClass(), id);
		if(value == null)
			return null;
		return (BaseObject)value;
	}
	
	private boolean notIncludParameterName(Set<String> parameterNames, String propertyName){
		for (String parameterName : parameterNames) {
			if(parameterName.contains(propertyName))
				return false;
		}
		return true;
	}

}

