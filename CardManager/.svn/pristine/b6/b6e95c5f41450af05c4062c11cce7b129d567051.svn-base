package com.base.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/** 时间日期帮助类
 * @author Administrator
 *
 */
public class DateTimeUtil {

	// String 格式  yyyy-MM-dd
	public static final String DATE_STRING_YMD = "yyyy-MM-dd";

	public static final String DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";
	
	
	
	/** 获取当前系统时间
	 * @return
	 */
	public static Date getCurrentTime(){
		Calendar cld = Calendar.getInstance();
		return cld.getTime();
	}
	
	/** Date 转 String 
	 * @param date 需要转换的日期时间
	 * @param dateStr  转换后的格式
	 * @return
	 */
	public static String dateToString(Date date, String dateStr) {
		DateFormat dateFormat = new SimpleDateFormat(dateStr);
		return dateFormat.format(date);
	}

	/** String 类型日期时间转 Date
	 * @param str 时间格式（如：yyyy-MM-dd HH:mm:ss）
	 * @param dateStr 转换的格式
	 * @return
	 */
	public static Date stringToDate(String dateStr, String str) {
		DateFormat dateFormat = new SimpleDateFormat(str);
		Date date = null;
		try {
			date = dateFormat.parse(dateStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	
	//转换 19800101 这种格式日期格式
	public static Date strToDate(String strDate, String str) {
		try {
			if(strDate !=null && strDate.length()==8){
				return stringToDate(strDate.substring(0,4)+"-"+strDate.substring(4,6)+"-"+strDate.substring(6,8),str);
			}else{
				return null;
			}			
		} catch (Exception e) {
			// TODO: handle exception			
			e.printStackTrace();
			return null;
		}
		
	}
	
	/** (参数格式必须为：yyyy年) - 只截取年份数字部分(yyyy)
	 * @param str 
	 * @return
	 */
	public static String getYearByStr(String str) {
		if(str.length() < 5){
			return null;
		}
		String temp = "";
		for(int i = 0; i < 4; i++){
			temp += str.charAt(i);
		}
		return temp;
	}
	
	/**
	 * 
	 * @param str
	 * @return
	 */
	public static String getYYYYMMHH(String str){
		if(str.length() < 10){
			return null;
		}
		String temp = "";
		for(int i = 0; i < 10; i++){
			temp += str.charAt(i);
		}
		return temp;
	}
	
	
	/**   
	* 计算两个日期之间相差的天数   
	* @param smdate 较小的时间  
	* @param bdate  较大的时间  
	* @return 相差天数  
	* @throws ParseException   
	*/     
	public static int daysBetween(Date smdate,Date bdate) throws Exception{     
	      SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");   
	      smdate=sdf.parse(sdf.format(smdate));   
	      bdate=sdf.parse(sdf.format(bdate));   
	      Calendar cal = Calendar.getInstance();     
	      cal.setTime(smdate);     
	      long time1 = cal.getTimeInMillis();                  
	      cal.setTime(bdate);     
	      long time2 = cal.getTimeInMillis();          
	      long between_days=(time2-time1)/(1000*3600*24);   
	             
	      return Integer.parseInt(String.valueOf(between_days));            
	}
	
	/**  
	*计算两个字符串日期之间相差的天数 
	*/  
	public static int daysBetween(String smdate,String bdate) throws Exception{   
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");   
	    Calendar cal = Calendar.getInstance();     
	    cal.setTime(sdf.parse(smdate));     
	    long time1 = cal.getTimeInMillis();                  
	    cal.setTime(sdf.parse(bdate));     
	    long time2 = cal.getTimeInMillis();          
	    long between_days=(time2-time1)/(1000*3600*24);   
	             
	    return Integer.parseInt(String.valueOf(between_days));      
	}
	
	/**
	 * @author DL
	 * @date Jan 11, 2016
	 * @param 
	 * @return
	 * @see 计算两个字符串年份相差年数
	 */
	public static int yearsBetween(String byear,String eyear) throws Exception{   
	    return Integer.parseInt(eyear)-Integer.parseInt(byear);      
	}
	
	/**
	 * @author DL
	 * @date Jan 11, 2016
	 * @param 
	 * @return
	 * @see 计算两个字符串日期相差月份2016-09 & 2013-11
	 */
	public static int monthsBetween(String bmonth,String emonth) throws Exception{  
		int byear = Integer.parseInt(bmonth.substring(0,4));
		int eyear = Integer.parseInt(emonth.substring(0,4));
		int tbmonth = Integer.parseInt(bmonth.substring(5));
		int temonth = Integer.parseInt(emonth.substring(5));
		if(byear == eyear){	//同年
			return temonth - tbmonth;
		}
		return 12 - tbmonth + 12*(eyear-(byear+1)) + temonth ;
	}
	
	
	/** 时间转秒数 (00:00:00)
	 * @param str
	 * @return
	 * @throws ParseException
	 */
	public static long stringToLong(String str){
		long lon = 0;
		String[] ss = str.split(":");
		/*lon = lon + Long.parseLong(ss[0]) * 3600 * 1000;
		lon = lon + Long.parseLong(ss[1]) * 60 * 1000; 
		lon = lon + Long.parseLong(ss[2]) * 1000;*/
		lon = lon + Long.parseLong(ss[0]) * 3600;
		lon = lon + Long.parseLong(ss[1]) * 60; 
		lon = lon + Long.parseLong(ss[2]);
		return lon;
	}
	
	/**  秒数转时间 (00:00:00)
	 * @param lon
	 * @return
	 * @throws ParseException
	 */
	public static String longToString(long lon){
		String str = "";
		/*long hh = lon/3600/1000;
		long mm = (lon - hh * 3600 * 1000)/60/1000;
		long ss = (lon - hh * 3600 * 1000 - mm * 60 * 1000)/1000;*/
		long hh = lon/3600;
		long mm = (lon - hh * 3600)/60;
		long ss = lon - hh * 3600 - mm * 60;
		if(hh < 10){
			str = "0" + hh + ":";
		}else{
			str = str + hh + ":";
		}
		if(mm < 10){
			str = str + "0" + mm + ":";
		}else{
			str = str + mm + ":";
		}
		if(ss < 10){
			str = str + "0" + ss;
		}else{
			str = str + ss;
		}
		return str;
	}
	
	/**  秒数转时间 (__小时__分钟)
	 * @param lon
	 * @return
	 * @throws ParseException
	 */
	public static String longMMToString(long lon){
		long hh = lon/3600;
		long mm = (lon - hh * 3600)/60;
		return hh + " 时" + mm + " 分";
	}
	
	/** double (10.0小时)转 String (____小时__分钟)
	 * @param db
	 * @return
	 */
	public static String doubleToString(double db){
		String[] str = (db+"").split("\\.");
		String timeStr = str[0] + " 时";
		if(str.length > 1 && Integer.parseInt(str[1]) > 0){
			String temp = str[1];
			if(Integer.parseInt(temp) > 10){
				temp = str[1].charAt(0) + "";
			}
			timeStr += (Integer.parseInt(temp) * 6) + " 分";
		}
		return timeStr;
	}
	
	//比较两个日期的大小
	public static int compare_date(String DATE1, String DATE2) {
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date dt1 = df.parse(DATE1);
			Date dt2 = df.parse(DATE2);
			if (dt1.getTime() > dt2.getTime()) {
				return 1;
			} else if (dt1.getTime() < dt2.getTime()) {
				return -1;
			} else {
				return 0;
			}
		} catch (Exception exception) {
			exception.printStackTrace();
		}
		return 0;
	}
	
	public static String longToString(int lon){
		String str = "";
		/*long hh = lon/3600/1000;
		long mm = (lon - hh * 3600 * 1000)/60/1000;
		long ss = (lon - hh * 3600 * 1000 - mm * 60 * 1000)/1000;*/
		int hh = lon/3600;
		int mm = (lon - hh * 3600)/60;
		int ss = lon - hh * 3600 - mm * 60;
		if(hh < 10){
			str = "0" + hh + ":";
		}else{
			str = str + hh + ":";
		}
		if(mm < 10){
			str = str + "0" + mm + ":";
		}else{
			str = str + mm + ":";
		}
		if(ss < 10){
			str = str + "0" + ss;
		}else{
			str = str + ss;
		}
		return str;
	}
	
	
	private static DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	/**
	 *@author: hqt
	 *@see:日期格式转换
	 *@date: Sep 28, 2013 9:27:54 AM
	 */
	public static String dateToString(Date date) {
		return dateFormat.format(date);
	}
	
	public static Date getTimeMinute(Date theDate,Integer minute){
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(theDate);
		calendar.add(Calendar.MINUTE, minute);
		theDate = calendar.getTime();
		return theDate;
	}
	
	/**
	 * @author LLJ
	 * @date Aug 10, 2015 4:56:46 PM
	 * @param datestr
	 * @param count
	 * @return
	 * @see 获得前n月日期
	 */
	public static String getPreviousMonth(Date d,Integer n){
		Calendar now = Calendar.getInstance(); 
		now.setTime(d);
		now.set(Calendar.MONTH, now.get(Calendar.MONTH) - n); 
		return dateToString(now.getTime(),"yyyy-MM-dd");
	}
	
	/**
	 * @author LLJ
	 * @date Sep 16, 2015 8:00:01 PM
	 * @param d
	 * @param count
	 * @return
	 * @see 获得前n天的日期
	 */
	public static String getPreviousDays(Date d, Integer n){
		Calendar now = Calendar.getInstance(); 
		now.setTime(d);
		now.set(Calendar.DATE, now.get(Calendar.DATE) - n); 
		return dateToString(now.getTime(),"yyyy-MM-dd");
	}
	
	public static String getLastDayOfMonth(int year,int month)
	{
		Calendar cal = Calendar.getInstance();
		//设置年份
		cal.set(Calendar.YEAR,year);
		//设置月份
		cal.set(Calendar.MONTH, month-1);
		//获取某月最大天数
		int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		//设置日历中月份的最大天数
		cal.set(Calendar.DAY_OF_MONTH, lastDay);
		//格式化日期
		SimpleDateFormat sdf = new SimpleDateFormat("dd");
		String lastDayOfMonth = sdf.format(cal.getTime());
		
		return lastDayOfMonth;
	}
	
	public static void main(String[] args) {
//		Date theDate = new Date();
//		Date theDate2 = new Date();
//		System.out.println(dateToString(theDate));
//		System.out.println(dateToString(getTimeMinute(theDate,20)));
		System.out.println(getLastDayOfMonth(2002,5));
	}
	
}
