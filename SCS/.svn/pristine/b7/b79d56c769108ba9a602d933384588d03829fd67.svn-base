package com.base.util;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import org.w3c.dom.NodeList;

import com.manage.enumeration.EnumerationHelper;




public class Utils {

	/**
	 * 判断字符串是否为空
	 * 
	 * @param s
	 *            待判断的字符串
	 * @return boolean 返回 真 假
	 */
	public static boolean isNullOrEmpty(String s) {
		return (s == null) || (s.length() <= 0);
	}

	public static boolean isNotNullOrEmpty(String s) {
		return !isNullOrEmpty(s);
	}

	public static boolean isNullOrEmpty(Long s) {
		return (s == null) || (s <= 0);
	}

	public static boolean isNotNullOrEmpty(Long s) {
		return !isNullOrEmpty(s);
	}

	public static boolean isNullOrEmpty(Integer s) {
		return (s == null) || (s.intValue() <= 0);
	}

	public static boolean isNotNullOrEmpty(Integer s) {
		return !isNullOrEmpty(s);
	}

	public static boolean isNullOrEmptyOrSpace(String s) {
		if (s == null) {
			return true;
		}
		s.trim();

		return s.length() <= 0;
	}

	public static boolean isNullOrEmpty(Map map) {
		return (map == null) || (map.isEmpty());
	}

	public static boolean isNotNullOrEmpty(Map map) {
		return !isNullOrEmpty(map);
	}

	public static boolean isNullOrEmpty(List l) {
		return (l == null) || (l.isEmpty());
	}

	public static boolean isNotNullOrEmpty(List l) {
		return !((l == null) || (l.isEmpty()));
	}

	public static boolean isNullOrEmpty(Object[] o) {
		return (o == null) || (o.length <= 0);
	}

	public static boolean isNotNullOrEmpty(Object[] o) {
		return !isNullOrEmpty(o);
	}

	public static boolean isNullOrEmpty(int[] o) {
		return (o == null) || (o.length <= 0);
	}

	public static boolean isNullOrEmpty(Vector v) {
		return (v == null) || (v.size() <= 0);
	}

	public static boolean isNullOrEmpty(NodeList nl) {
		return (nl == null) || (nl.getLength() <= 0);
	}

	public static String[] copyStringArray(String[] s) {
		if (s != null) {
			int nLen = s.length;
			if (nLen > 0) {
				String[] s1 = new String[nLen];
				for (int i = 0; i < nLen; i++) {
					s1[i] = s[i];
				}
				return s1;
			}
		}
		return null;
	}

	/**
	 * 对double数据进行取精度.
	 * 
	 * @param value
	 *            double数据.
	 * @param scale
	 *            精度位数(保留的小数位数).
	 * @param roundingMode
	 *            精度取值方式.
	 * @return 精度计算后的数据.
	 */
	public static double round(double value, int scale, int roundingMode) {
		BigDecimal bd = new BigDecimal(value);
		bd = bd.setScale(scale, roundingMode);
		double d = bd.doubleValue();
		bd = null;
		return d;
	}
	
	
	/** 计算二个数的百分比（不计算大于100%的，保留一位小数） 由于页面需要，%符号不自动添加
	 * @param num1 较大的数
	 * @param num2 较小的数
	 * @return 百分比
	 */
	public static String getPercent(double num1, double num2){
		if(num2 == 0){
			return "0";
		}
		if(num2 >= num1){
			return "100";
		}
		double temp = num2 * 100 / num1;
		String tempStr = (temp + "").charAt(0) + "";
		if(temp >= 10){
			tempStr += ((temp + "").charAt(1) + "");
			if((temp + "").charAt(3) != '0'){
				tempStr += (temp + "").charAt(2) + ((temp + "").charAt(3) + "");
			}
		}else{
			if((temp + "").charAt(2) != '0'){
				tempStr += (temp + "").charAt(1) + ((temp + "").charAt(2) + "");
			}
		}
		return tempStr;
	}
	
	public static String getNullString(String str){
		if(str == null || str.equals("null"))
			return "";
		return str;
	}
   
	
	
	//字符串是否是数字
		public static boolean isNum(String str) {
			boolean isNum = str.matches("[0-9]+"); 
			return isNum;
		}
		
		//品牌    BRA

		public static Boolean sqlFilter(String pa){
			if(pa.length()>30 || pa.indexOf("select")>=0 
					|| pa.indexOf("update")>=0 
					|| pa.indexOf("insert")>=0 
					|| pa.indexOf("delete")>=0 
					|| pa.indexOf("where")>=0 
					|| pa.indexOf("when")>=0 
					|| pa.indexOf("case")>=0 
					|| pa.indexOf("then")>=0 
					|| pa.indexOf("from")>=0 
					|| pa.indexOf("group")>=0 
					|| pa.indexOf("and")>=0 
					|| pa.indexOf("or")>=0 
					|| pa.indexOf("(")>=0 
					|| pa.indexOf(")")>=0 
					|| pa.indexOf("else")>=0 
					|| pa.indexOf("end")>=0 
					|| pa.indexOf("count")>=0 
					|| pa.indexOf("drop")>=0 
					|| pa.indexOf("table")>=0 
					|| pa.indexOf("truncate")>=0 
					|| pa.indexOf("asc")>=0 
					|| pa.indexOf("mid")>=0 
					|| pa.indexOf("char")>=0 
					|| pa.indexOf("xp_cmdshell")>=0 
					|| pa.indexOf("execmaster")>=0 
					|| pa.indexOf("netlocalgroup")>=0 
					|| pa.indexOf("administrators")>=0 
					|| pa.indexOf("user")>=0 
					|| pa.indexOf("net")>=0 
					|| pa.indexOf("%")>=0 
					|| pa.indexOf("like")>=0 
					|| pa.indexOf("backup")>=0 
					|| pa.indexOf("database")>=0 
					|| pa.indexOf("sleep")>=0){
				return false;
			}
			return true;
		}
		
		public static Boolean sqlFilter1(String pa){
			if(pa.indexOf("select")>=0 
					|| pa.indexOf("update")>=0 
					|| pa.indexOf("insert")>=0 
					|| pa.indexOf("delete")>=0 
					|| pa.indexOf("where")>=0 
					|| pa.indexOf("when")>=0 
					|| pa.indexOf("case")>=0 
					|| pa.indexOf("then")>=0 
					|| pa.indexOf("from")>=0 
					|| pa.indexOf("group")>=0 
					|| pa.indexOf("and")>=0 
					|| pa.indexOf("or")>=0 
					|| pa.indexOf("(")>=0 
					|| pa.indexOf(")")>=0 
					|| pa.indexOf("else")>=0 
					|| pa.indexOf("end")>=0 
					|| pa.indexOf("count")>=0 
					|| pa.indexOf("drop")>=0 
					|| pa.indexOf("table")>=0 
					|| pa.indexOf("truncate")>=0 
					|| pa.indexOf("asc")>=0 
					|| pa.indexOf("mid")>=0 
					|| pa.indexOf("char")>=0 
					|| pa.indexOf("xp_cmdshell")>=0 
					|| pa.indexOf("execmaster")>=0 
					|| pa.indexOf("netlocalgroup")>=0 
					|| pa.indexOf("administrators")>=0 
					|| pa.indexOf("user")>=0 
					|| pa.indexOf("net")>=0 
					|| pa.indexOf("%")>=0 
					|| pa.indexOf("like")>=0 
					|| pa.indexOf("backup")>=0 
					|| pa.indexOf("database")>=0 
					|| pa.indexOf("sleep")>=0){
				return false;
			}
			return true;
		}
		
		
		/**
		 * 获得枚举值名称
		 * @param id
		 * @return
		 */
		public static String getValueName(Integer id){
			String valueName ="";
			if(id!=null){
				valueName=EnumerationHelper.getEnumerationValue(id).getValueName();
			}
			return valueName;
		}
}
