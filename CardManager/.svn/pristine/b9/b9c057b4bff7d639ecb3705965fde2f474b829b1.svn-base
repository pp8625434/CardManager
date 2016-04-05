package com.base.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class FormatDate {
	
	private static DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	private static DateFormat dateFormatPorit = new SimpleDateFormat(
			"yyyy.MM.dd");

	// 日期转换成字符串
	public static String dateToString(Date date) {
		return dateFormat.format(date);
	}

	// 日期转换成字符串yyyy.MM.dd
	public static String dateToStringPorit(Date date) {
		return dateFormatPorit.format(date);
	}

	/** 日期转字符串
	 * @param date 日期
	 * @param str  转换后的字符串格式
	 * @return
	 */
	public static String dateToStringByStr(Date date, String str){
		DateFormat df = new SimpleDateFormat(str);
		return df.format(date);
	}
	
	// 字符串转换成日期
	public static Date stringToDate(String stringDate) {
		Date date = null;
		try {
			date = dateFormat.parse(stringDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}

	// 两个字符串日期比较前后
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
	
	
	/** 字符串转换成秒 (格式：00:00:00)
	 * @param str
	 * @return
	 * @throws ParseException
	 */
	public static long stringToLong(String str) throws ParseException{
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
	
	/** 秒转换成字符 (格式：00:00:00)
	 * @param lon
	 * @return
	 * @throws ParseException
	 */
	public static String longToString(long lon){
		if(lon <= 0){
			return "00:00:00";
		}
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
		//long ss = lon - hh * 3600 - mm * 3600;
		return hh + "时" + mm + "分";
	}
	
	/**  获取系统当前时间
	 * @return
	 */
	public static Date getCurrentTime(){
		Calendar cld = Calendar.getInstance();
		return cld.getTime();
		
		/*Date currentTime = new Date();  
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");  
		String dateString = formatter.format(currentTime);  
		ParsePosition pos = new ParsePosition(8);  
		Date currentTime_2 = formatter.parse(dateString, pos);  
		return currentTime_2;*/
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
	
	/**
	 * 根据用户生日计算年龄
	 */
	public static int getAgeByBirthday(Date birthday) {
		Calendar cal = Calendar.getInstance();

		if (cal.before(birthday)) {
			throw new IllegalArgumentException(
					"The birthDay is before Now.It's unbelievable!");
		}

		int yearNow = cal.get(Calendar.YEAR);
		int monthNow = cal.get(Calendar.MONTH) + 1;
		int dayOfMonthNow = cal.get(Calendar.DAY_OF_MONTH);

		cal.setTime(birthday);
		int yearBirth = cal.get(Calendar.YEAR);
		int monthBirth = cal.get(Calendar.MONTH) + 1;
		int dayOfMonthBirth = cal.get(Calendar.DAY_OF_MONTH);

		int age = yearNow - yearBirth;

		if (monthNow <= monthBirth) {
			if (monthNow == monthBirth) {
				// monthNow==monthBirth 
				if (dayOfMonthNow < dayOfMonthBirth) {
					age--;
				}
			} else {
				// monthNow>monthBirth 
				age--;
			}
		}
		return age;
	}
	
	
	
	
}
