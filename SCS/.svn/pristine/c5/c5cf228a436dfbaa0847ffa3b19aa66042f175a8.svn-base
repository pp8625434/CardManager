package com.base.framework.xml;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

import org.jdom.Document;
import org.jdom.Element;

import com.base.framework.Annotation.WebServiceAnnotation;


@SuppressWarnings("unchecked")
public class ObjecttoDocument {
	
	private Element rElement;
	
	private String type;
	
	public ObjecttoDocument(Object eObject , String nameType , String eName) throws InstantiationException, IllegalAccessException, Exception{
		type = nameType;
		rElement = new Element(eName);
		getObjectPropertytoXMLBean(eObject);
	}
	
	/**
	 * 主程序入口，获取Object文件中的标有注解的值，并将值与注解一起存储到xmlbeans中
	 * @param o
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 * @throws Exception
	 */
	private void getObjectPropertytoXMLBean(Object o) throws InstantiationException, IllegalAccessException, Exception{
		//如果传入的类有父类，则进入父类进行检索
		if(o.getClass().getGenericSuperclass()!=null){
			getfatherObjectPropertytoXMLBean(o,o.getClass().getSuperclass());
		}
		//开始获得传入的类的属性
		Field field[] = o.getClass().getDeclaredFields();
		if(field!=null&&field.length>0){
			for (Field f : field) {
				WebServiceAnnotation annotation = f.getAnnotation(WebServiceAnnotation.class);
				if(annotation!=null){
					//判断注解中用没有指定的type
					String name[] = annotation.name();
					String value[] = annotation.value();
					String eType[] = annotation.type();
					if(name.length==value.length&&name.length==eType.length){
						int k = -1;
						for (int i=0;i<name.length;i++) {
							if(name[i]!=null&&name[i].equals(type)){
								k = i;
								break;
							}
						}
						if(k>=0){//如果name中存在指定的类型，则开始进行赋值
							if(f.getType().getName().indexOf("java.lang.")>=0){
								if (f.getType().getName().indexOf("Map")>=0 || f.getType().getName().indexOf("List")>=0){
									//如果属性是Map或者List
									
								}else{
									if(eType[k].toUpperCase().equals("ELEMENT")){
										//如果属性是其他常见的类型
										Element nElement = new Element(value[k]);
										nElement.setText(String.valueOf(invokeMethod(o, f.getName())));
										rElement.addContent(nElement);
									}else{
										String temp = String.valueOf(invokeMethod(o, f.getName()));
										rElement.setAttribute(value[k], temp==null?"":temp);
									}
								}
							}else{
								//如果属性是自定义的类
								if(eType[k].toUpperCase().equals("ELEMENT")){
									Element nElement = new Element(value[k]);
									nElement = getsonObjectToXMLBean(invokeMethod(o,f.getName()), nElement);
									rElement.addContent(nElement);
								}else{
									String temp = getObjectTextAnnotationValue(invokeMethod(o,f.getName()), invokeMethod(o,f.getName()).getClass());
									rElement.setAttribute(value[k], (temp==null?"":temp));
								}
							}
						}
					}else{
						throw new FastException("类："+o.getClass().getName()+"中的名称为：【"+f.getName()+"】的属性使用的注解中，name,value,type的长度不相等");
					}
				}
			}
		}
	}
	
	/**
	 * 获得标签是TEXT的属性的值
	 * @param object
	 * @param c
	 * @return
	 * @throws Exception
	 */
	private String getObjectTextAnnotationValue(Object object , Class c) throws Exception{
		if(c.getGenericSuperclass()!=null){//先确定是否有父类，如果存在父类则对父类进行遍历，
			String temp = getObjectTextAnnotationValue(object, c.getSuperclass());
			if (temp!=null){//如果父类中存在TEXT注解，则直接返回注解的值
				return temp;
			}
		}
		
		Field field[] = c.getDeclaredFields();
		for (Field f : field) {
			WebServiceAnnotation annotation = f.getAnnotation(WebServiceAnnotation.class);
			if(annotation!=null){
				String name[] = annotation.name();
				String value[] = annotation.value();
				int k = -1;
				for (int i = 0; i < name.length; i++) {
					if(name[i]!=null&&name[i].equals(type)){
						k = i;
					}
				}
				if(k>=0){
					if(value[k].toUpperCase().equals("TEXT")){
						if(f.getType().getName().indexOf("java.lang.")>=0){
							return String.valueOf(invokeMethod(object, f.getName()));
						}else{
							String temp = getObjectTextAnnotationValue(invokeMethod(object,f.getName()),invokeMethod(object,f.getName()).getClass());
							if(temp!=null){
								return temp;
							}
						}
					}
				}
			}
		}
		return null;
	}
	
	
	
	/**
	 * 获得到object的父类的标有注解的属性的值，并将注解与值一次存储到xmlbeans中
	 * @param o
	 * @param fClass
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 * @throws Exception
	 */
	private void getfatherObjectPropertytoXMLBean(Object o , Class fClass) throws InstantiationException, IllegalAccessException, Exception{
		//如果传入的类有父类，则进入父类进行检索
		if(fClass.getGenericSuperclass()!=null){
			getfatherObjectPropertytoXMLBean(o,fClass.getSuperclass());
		}
		//开始获得传入的类的属性
		Field field[] = fClass.getDeclaredFields();
		if(field!=null&&field.length>0){
			for (Field f : field) {
				WebServiceAnnotation annotation = f.getAnnotation(WebServiceAnnotation.class);
				if(annotation!=null){
					//判断注解中用没有指定的type
					String name[] = annotation.name();
					String value[] = annotation.value();
					String eType[] = annotation.type();
					if(name.length==value.length&&name.length==eType.length){
						int k = -1;
						for (int i=0;i<name.length;i++) {
							if(name[i]!=null&&name[i].equals(type)){
								k = i;
								break;
							}
						}
						if(k>=0){//如果name中存在指定的类型，则开始进行赋值
							if(f.getType().getName().indexOf("java.lang.")>=0){
								if (f.getType().getName().indexOf("Map")>=0 || f.getType().getName().indexOf("List")>=0){
									//如果属性是Map或者List
									
								}else{
									//如果属性是其他常见的类型
									if(eType[k].toUpperCase().equals("ELEMENT")){
										Element nElement = new Element(value[k]);
										nElement.setText(String.valueOf(invokeMethod(o, f.getName())));
										rElement.addContent(nElement);
									}else{
										String temp = String.valueOf(invokeMethod(o, f.getName()));
										rElement.setAttribute(value[k], temp==null?"":temp);
									}
								}
							}else{
								//如果属性是自定义的类
								if(eType[k].toUpperCase().equals("ELEMENT")){
									Element nElement = new Element(value[k]);
									nElement = getsonObjectToXMLBean(invokeMethod(o,f.getName()).getClass(), nElement);
									rElement.addContent(nElement);
								}else{
									String temp = getObjectTextAnnotationValue(invokeMethod(o,f.getName()),invokeMethod(o,f.getName()).getClass());
									rElement.setAttribute(value[k], temp==null?"":temp);
								}
							}
						}
					}else{
						throw new FastException("类："+fClass.getName()+"中的名称为：【"+f.getName()+"】的属性使用的注解中，name,value,type的长度不相等");
					}
				}
			}
		}
	}
	
	/**
	 * 获取object中自定义类型的属性的标有注解的值，并将值存储到xmlbeans的pList属性中
	 * @param sClass
	 * @param xmlBeans
	 * @throws Exception 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	private Element getsonObjectToXMLBean(Object so , Element eElement) throws InstantiationException, IllegalAccessException, Exception{
		//如果传入的值有父类则对父类进行解析
		if(so.getClass().getGenericSuperclass()!=null){
			eElement = getsonObjectToXMLBean(so,so.getClass().getSuperclass(), eElement);
		}
		
		Field field[] = so.getClass().getDeclaredFields();
		if(field!=null&&field.length>0){
			for (Field f : field) {
				WebServiceAnnotation annotation = f.getAnnotation(WebServiceAnnotation.class);
				if(annotation!=null){
					String name[] = annotation.name();
					String value[] = annotation.value();
					String eType[] = annotation.type();
					if(name.length==value.length&&name.length==eType.length){
						int k = -1;
						for (int i=0;i<name.length;i++) {
							if(name[i]!=null&&name[i].equals(type)){
								k = i;
								break;
							}
						}
						if(k>=0){
							//如果name中存在指定的类型，则开始进行赋值
							if(f.getType().getName().indexOf("java.lang.")>=0){
								if (f.getType().getName().indexOf("Map")>=0 || f.getType().getName().indexOf("List")>=0){
									//如果属性是Map或者List
									
									
									
								}else{
									//如果属性是其他常见的类型
									if(value[k].toUpperCase().equals("TEXT")){//如果该属性的注解是text则直接设置为上级节点的value
										if(eElement.getContent()!=null&&eElement.getContent().size()>0){
											if(eElement.getContent(0).getClass().getName().equals("org.jdom.Element")){
												throw new FastException("类:"+so.getClass().getName()+"存在节点【"+eElement.getName()+"】的子节点，所以该类的【"+f.getName()+"】属性的注解不能设置为：text");
											}
										}
										eElement.setText(String.valueOf(invokeMethod(so, f.getName())));
									}else{
										if(eType[k].toUpperCase().equals("ELEMENT")){
											if(eElement.getContent()!=null&&eElement.getContent().size()>0){
												if(eElement.getContent(0).getClass().getName().equals("org.jdom.Text")){
													throw new FastException("类:"+so.getClass().getName()+"存在节点【"+eElement.getName()+"】的Text值，所以该类中不能再给其他属性设置注解type为element");
												}
											}
											Element nElement = new Element(value[k]);
											nElement.setText(String.valueOf(invokeMethod(so, f.getName())));
											eElement.addContent(nElement);
										}else{
											String temp = String.valueOf(invokeMethod(so, f.getName()));
											eElement.setAttribute(value[k],temp==null?"":temp);
										}
									}
								}
							}else{
								//如果节点再存在自定义属性
								if(value[k].toUpperCase().equals("TEXT")){//如果该属性的注解是text则直接设置为上级节点的value
									if(eElement.getContent()!=null&&eElement.getContent().size()>0){
										if(eElement.getContent(0).getClass().getName().equals("org.jdom.Element")){
											throw new FastException("类:"+so.getClass().getName()+"存在节点【"+eElement.getName()+"】的子节点，所以该类的【"+f.getName()+"】属性的注解不能设置为：text");
										}
									}
									eElement.setText(getObjectTextAnnotationValue(invokeMethod(so, f.getName()), invokeMethod(so, f.getName()).getClass()));
								}else{
									if(eType[k].toUpperCase().equals("ELEMENT")){
										if(eElement.getContent()!=null&&eElement.getContent().size()>0){
											if(eElement.getContent(0).getClass().getName().equals("org.jdom.Text")){
												throw new FastException("类:"+so.getClass().getName()+"存在节点【"+eElement.getName()+"】的Text值，所以该类中不能再给其他属性设置注解type为element");
											}
										}
										Element nElement = new Element(value[k]);
										nElement = getsonObjectToXMLBean(invokeMethod(so, f.getName()), invokeMethod(so, f.getName()).getClass(), nElement);
										eElement.addContent(nElement);
									}else{
										String temp = getObjectTextAnnotationValue(invokeMethod(so, f.getName()), invokeMethod(so, f.getName()).getClass());
										eElement.setAttribute(value[k],temp==null?"":temp);
									}
								}
							}
						}
					}else{
						throw new FastException("类："+so.getClass().getName()+"中的名称为：【"+f.getName()+"】的属性使用的注解中，name,value,type的长度不相等");
					}
				}
			}
		}
		return eElement;
	}
	
	/**
	 * 获取object中自定义类型的父类的属性占中标有注解的值，并将值存储到xmlbeans的pList属性中
	 * @param sClass
	 * @param xmlBeans
	 * @throws Exception 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	private Element getsonObjectToXMLBean(Object so , Class sfClass , Element eElement) throws InstantiationException, IllegalAccessException, Exception{
		//如果传入的值有父类则对父类进行解析
		if(sfClass.getGenericSuperclass()!=null){
			eElement = getsonObjectToXMLBean(so , sfClass.getSuperclass(), eElement);
		}
		
		Field field[] = sfClass.getDeclaredFields();
		if(field!=null&&field.length>0){
			for (Field f : field) {
				WebServiceAnnotation annotation = f.getAnnotation(WebServiceAnnotation.class);
				if(annotation!=null){
					String name[] = annotation.name();
					String value[] = annotation.value();
					String eType[] = annotation.type();
					if(name.length==value.length&&name.length==eType.length){
						int k = -1;
						for (int i=0;i<name.length;i++) {
							if(name[i]!=null&&name[i].equals(type)){
								k = i;
								break;
							}
						}
						if(k>=0){//如果name中存在指定的类型，则开始进行赋值
							//如果该类标题是TEXT则直接对传入的XML赋值
							//如果name中存在指定的类型，则开始进行赋值
							if(f.getType().getName().indexOf("java.lang.")>=0){
								if (f.getType().getName().indexOf("Map")>=0 || f.getType().getName().indexOf("List")>=0){
									//如果属性是Map或者List
									
									
									
								}else{
									//如果属性是其他常见的类型
									if(value[k].toUpperCase().equals("TEXT")){//如果该属性的注解是text则直接设置为上级节点的value
										if(eElement.getContent()!=null&&eElement.getContent().size()>0){
											if(eElement.getContent(0).getClass().getName().equals("org.jdom.Element")){
												throw new FastException("类:"+sfClass.getName()+"存在节点【"+eElement.getName()+"】的子节点，所以该类的【"+f.getName()+"】属性的注解不能设置为：text");
											}
										}
										eElement.setText(String.valueOf(invokeMethod(so, f.getName())));
									}else{
										if(eType[k].toUpperCase().equals("ELEMENT")){
											if(eElement.getContent()!=null&&eElement.getContent().size()>0){
												if(eElement.getContent(0).getClass().getName().equals("org.jdom.Text")){
													throw new FastException("类:"+sfClass.getName()+"存在节点【"+eElement.getName()+"】的Text值，所以该类中不能再给其他属性设置注解type为element");
												}
											}
											Element nElement = new Element(value[k]);
											nElement.setText(String.valueOf(invokeMethod(so, f.getName())));
											eElement.addContent(nElement);
										}else{
											String temp = String.valueOf(invokeMethod(so, f.getName()));
											eElement.setAttribute(value[k],temp==null?"":temp);
										}
									}
								}
							}else{
								//如果节点再存在自定义属性
								if(value[k].toUpperCase().equals("TEXT")){//如果该属性的注解是text则直接设置为上级节点的value
									if(eElement.getContent()!=null&&eElement.getContent().size()>0){
										if(eElement.getContent(0).getClass().getName().equals("org.jdom.Element")){
											throw new FastException("类:"+sfClass.getName()+"存在节点【"+eElement.getName()+"】的子节点，所以该类的【"+f.getName()+"】属性的注解不能设置为：text");
										}
									}
									eElement.setText(getObjectTextAnnotationValue(invokeMethod(so, f.getName()), invokeMethod(so, f.getName()).getClass()));
								}else{
									if(eType[k].toUpperCase().equals("ELEMENT")){
										if(eElement.getContent()!=null&&eElement.getContent().size()>0){
											if(eElement.getContent(0).getClass().getName().equals("org.jdom.Text")){
												throw new FastException("类:"+sfClass.getName()+"存在节点【"+eElement.getName()+"】的Text值，所以该类中不能再给其他属性设置注解type为element");
											}
										}
										Element nElement = new Element(value[k]);
										nElement = getsonObjectToXMLBean(invokeMethod(so, f.getName()), invokeMethod(so, f.getName()).getClass(), nElement);
										eElement.addContent(nElement);
									}else{
										String temp = getObjectTextAnnotationValue(invokeMethod(so, f.getName()), invokeMethod(so, f.getName()).getClass());
										eElement.setAttribute(value[k],temp==null?"":temp);
									}
								}
							}
						}
					}else{
						throw new FastException("类："+sfClass.getName()+"中的名称为：【"+f.getName()+"】的属性使用的注解中，name与value的长度不相等");
					}
				}
			}
		}
		return eElement;
	}
	
	/**  
	 * 获得对象属性的值  
	 */  
	   
	private Object invokeMethod(Object owner, String methodName) throws Exception {   
		Class ownerClass = owner.getClass();   
	    methodName = methodName.substring(0, 1).toUpperCase()   
	    	+ methodName.substring(1);   
	    Method method = null;   
	    try {   
	       method = ownerClass.getMethod("get" + methodName);   
	        } catch (SecurityException e) {   
	     } catch (NoSuchMethodException e) {   
	        return " can't find 'get" + methodName + "' method";   
	     }   
	     return method.invoke(owner);   
	}   
	
	public Element getRElement() {
		return rElement;
	}
	
	public static void main(String[] args) throws InstantiationException, IllegalAccessException, Exception {
		/*B b = new B();
		D d = new D();
		E e = new E();
		b.setNameA("A");
		b.setValueA("a");
		b.setNameB("B");
		b.setValueB("b");
		d.setNameC("C");
		d.setNameD("D");
		d.setText("dText");
		d.setValueC("c");
		d.setValueD("d");
		b.setD(d);
		e.setNameE("E");
		e.setValueE("e");
		e.setEtext("eText");
		d.setE(e);
		
		ObjecttoDocument otList = new ObjecttoDocument(b,"anguan","test");
		Element rElement = otList.getRElement();
		Document rDocument = new Document(rElement);
		System.out.println(XMLUtils.formatXMLtoString("UTF-8", rDocument));
*/
	}

	
}
