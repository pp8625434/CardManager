package com.base.util;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import org.w3c.dom.NodeList;

import sun.misc.BASE64Decoder;

/**  公用方法帮助类
 * @author Administrator
 *
 */
public class ComUtil {

	/**
	 * 分号连接符 
	 */
	public static String STRING_FENHAO = ",";
	
	/**
	 * 空格
	 */
	public static String STRING_KONGGE = " ";
	
	/**
	 * 进入登陆页
	 */
	public static String TO_LOGIN = "toLogin";
	
	public static String ERROR = "error";
	
	/**
	 * 0字符串
	 */
	public static String STR0 = "0";
	
	/**
	 * 数字0
	 */
	public static Integer INT0 = 0;
	
	/**
	 * 时间开始
	 */
	public static String BEGIN_TIME = " 00:00:00";
	
	/**
	 * 时间结尾
	 */
	public static String END_TIME = " 23:59:59";
	
	/**
	 * 小时开始
	 */
	public static String BEGIN_HOUR = ":00:00";
	
	/**
	 * 小时结束
	 */
	public static String END_HOUR = ":59:59";
	
	/**
	 * 横线 “-”
	 */
	public static String STRING_HENGXIAN = "-";
	
	/**
	 * 年
	 */
	public static String STRING_YEAR = "年";
	/**
	 * 月
	 */
	public static String STRING_MONTH = "月";
	/**
	 * 日
	 */
	public static String STRING_DATE = "日";
	/**
	 * 时
	 */
	public static String STRING_HOUR = "时";
	/**
	 * 分
	 */
	public static String STRING_MINUTE = "分";
	/**
	 * 秒
	 */
	public static String STRING_SENCOND = "秒";
	
	
	/**
	 * 商品memcache开头
	 */
	public static String MM_WARE = "w";
	
	/**
	 * 商铺memcache开头
	 */
	public static String MM_SHOP = "s";
	
	
}
