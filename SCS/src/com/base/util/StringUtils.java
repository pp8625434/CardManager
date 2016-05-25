package com.base.util;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;



public class StringUtils {

	  /**
	   * 前导标识
	  */
	  public static final int BEFORE = 1;

	  /**
	   * 后继标识
	  */
	  public static final int AFTER = 2;


	  /**
	   * 将一个中间带逗号分隔符的字符串转换为ArrayList对象
	   * @param str 待转换的符串对象
	   * @return ArrayList对象
	   */
	  public static ArrayList strToArrayList(String str) {
	    return strToArrayListManager(str, ",");
	  }

	  /**
	   * 将字符串对象按给定的分隔符separator转象为ArrayList对象
	   * @param str 待转换的字符串对象
	   * @param separator 字符型分隔符
	   * @return ArrayList对象
	   */
	  public static ArrayList strToArrayList(String str, String separator) {
	    return strToArrayListManager(str, separator);
	  }

	  private static ArrayList strToArrayListManager(String str,String separator) {

	    StringTokenizer strTokens = new StringTokenizer(str, separator);
	    ArrayList list = new ArrayList();

	    while (strTokens.hasMoreTokens()) {
	      list.add(strTokens.nextToken().trim());
	    }

	    return list;
	  }

	  /**
	   * 将一个中间带逗号分隔符的字符串转换为字符型数组对象
	   * @param str 待转换的符串对象
	   * @return 字符型数组
	   */
	  public static String[] strToStrArray(String str) {
	    return strToStrArrayManager(str, ",");
	  }

	  /**
	   * 将字符串对象按给定的分隔符separator转象为字符型数组对象
	   * @param str 待转换的符串对象
	   * @param separator 字符型分隔符
	   * @return 字符型数组
	   */
	  public static String[] strToStrArray(String str, String separator) {
	    return strToStrArrayManager(str, separator);
	  }

	  private static String[] strToStrArrayManager(
	      String str,
	      String separator) {

	    StringTokenizer strTokens = new StringTokenizer(str, separator);
	    String[] strArray = new String[strTokens.countTokens()];
	    int i = 0;

	    while (strTokens.hasMoreTokens()) {
	      strArray[i] = strTokens.nextToken().trim();
	      i++;
	    }

	    return strArray;
	  }

	  public static Set<String> strToSet(String str){
		  return strToSet(str, ",");
	  }
	  
	  public static Set<String> strToSet(String str, String separator){
		  String[] values = strToStrArray(str, separator);
		  Set<String> result = new LinkedHashSet<String>();
		  for (int i = 0; i < values.length; i++) {
			  result.add(values[i]);
		}
		  return result;
	  }
	  
	  public static String ArrayToStr(Object[] array){
	      if(array == null || array.length <0) return null;
	      String str = "";
	      int _step = 0;
	      for(int i = 0; i<array.length; i++){
	         if(_step>0)
	             str += ",";
	         str += (String)array[i];
	          _step++;
	      }
	      return str;
	  }
	  
	  
	  /**
	   * 转换给定字符串的编码格式
	   * @param inputString 待转换字符串对象
	   * @param inencoding 待转换字符串的编码格式
	   * @param outencoding 准备转换为的编码格式
	   * @return 指定编码与字符串的字符串对象
	   */
	  public static String encodingTransfer(String inputString,String inencoding,String outencoding)
	  {
	    if (inputString==null || inputString.length() ==0) return inputString;
	    try
	    {
	      return new String( inputString.getBytes( outencoding), inencoding);
	    }
	    catch (Exception e)
	    {
	      return inputString;
	    }
	  }


	  /**
	   * 删除字符串中指定的字符
	   * 只要在delStrs参数中出现的字符，并且在inputString中也出现都会将其它删除
	   * @param inputString 待做删除处理的字符串
	   * @param delStrs 作为删除字符的参照数据，用逗号分隔。如果要删除逗号可以在这个字符串再加一

个逗号
	   * @return 返回一个以inputString为基础不在delStrs出现新字符串
	   */
	  public static String delString(String inputString,String delStrs)
	  {
	    if (inputString==null || inputString.length() ==0)  return inputString;

	    String[] strs = strToStrArray(delStrs);
	    for(int i = 0 ;i <strs.length ; i++){
	      if(strs[i].equals(""))
	        inputString = inputString.replaceAll(" ","");
	      else
	      {
	        if(strs[i].compareTo("a")>=0)
	          inputString = inputString.replaceAll(strs[i],"");
	        else
	          inputString = inputString.replaceAll("\\"+strs[i],"");
	      }
	    }
	    if(subCount(delStrs,",")>strs.length)
	      inputString = inputString.replaceAll("\\,","");

	    return inputString;
	  }

	  /**
	   * 去除左边多余的空格。
	   * @param value 待去左边空格的字符串
	   * @return 去掉左边空格后的字符串
	   */
	  public static String trimLeft(String value) {
	    String result = value;
	    if(result == null) return result;
	    char ch[] = result.toCharArray();
	    int index = -1;
	    for(int i=0; i < ch.length ; i++) {
	      if(Character.isWhitespace(ch[i])) {
	        index = i;
	      }
	      else {
	        break;
	      }
	    }
	    if(index != -1) {
	      result = result.substring(index+1);
	    }
	    return result;
	  }

	  /**
	   * 去除右边多余的空格。
	   * @param value 待去右边空格的字符串
	   * @return 去掉右边空格后的字符串
	   */
	  public static String trimRight(String value) {
	    String result = value;
	    if(result == null) return result;
	    char ch[] = result.toCharArray();
	    int endIndex = -1;
	    for(int i=ch.length-1; i > -1; i--) {
	      if(Character.isWhitespace(ch[i])) {
	        endIndex = i;
	      }
	      else {
	        break;
	      }
	    }
	    if(endIndex != -1) {
	      result = result.substring(0, endIndex);
	    }
	    return result;
	  }


	  /**
	   * 判断一个字符串中是否包含另一个字符串
	   * @param parentStr	父串
	   * @param subStr	子串
	   * @return 如果父串包含子串的内容返回真，否则返回假
	   */
	  public static boolean isInclude(String parentStr, String subStr) {
	    boolean hasSub = false;
	    for (int i = 0; i < (parentStr.length() - subStr.length()+1);i++) {
	      String tempString = parentStr.substring(i, i + subStr.length());
	      if (subStr.equals(tempString)) {
	        hasSub = true;
	        break;
	      }
	    }

	    return hasSub;
	  }

	  /**
	   * 判断一个字符串中是否包含另一个字符串数组的任何一个
	   * @param parentStr	父串
	   * @param subStrs	子串集合
	   * @return 如果父串包含子串的内容返回真，否则返回假
	   */
	  public static boolean isIncludes(String parentStr, String subStrs) {
	    String[] subStrArray = strToStrArray(subStrs);
	    for(int j = 0 ; j<subStrArray.length ; j++){
	      String subStr = subStrArray[j];
	      if(isInclude(parentStr,subStr))
	        return true;
	      else
	        continue;
	    }
	    return false;
	  }

	  /**
	   * 判断一个子字符串在父串中重复出现的次数
	   * @param parentStr	父串
	   * @param subStr	子串
	   * @return 子字符串在父字符串中重得出现的次数
	   */
	  public static int subCount(String parentStr, String subStr) {
	    int count = 0;

	    for (int i = 0; i < (parentStr.length() - subStr.length());i++) {
	      String tempString = parentStr.substring(i, i + subStr.length());
	      if (subStr.equals(tempString)) {
	        count++;
	      }
	    }

	    return count;
	  }
	  
	  /**
	 * 得到在字符串中从开始字符串到结止字符串中间的子串 
	 * @param parentStr 父串
	 * @param startStr 开始串
	 * @param endStr 结止串
	 * @return 返回开始串与结止串中间的子串
	 */
	public static String subString(String parentStr, String startStr, String endStr){
	  		return parentStr.substring(parentStr.indexOf(startStr)+startStr.length

(),parentStr.indexOf(endStr));
	  }

	  /**
	   *判断一个字符串是否是合法的Java标识符
	   * @param s	待判断的字符串
	   * @return	如果参数s是一个合法的Java标识符返回真，否则返回假
	   */
	  public static boolean isJavaIdentifier(String s){
	    if(s.length()==0 || Character.isJavaIdentifierStart(s.charAt(0)))
	      return false;
	    for(int i = 0;i<s.length();i++)
	      if(!Character.isJavaIdentifierPart(s.charAt(i)))
	        return false;
	    return true;
	  }

	  /**
	   *替换字符串中满足条件的字符
	   * 例如:  replaceAll("\com\hi\platform\base\\util",'\\','/');
	   * 返回的结果为: /com/hi/platform/base/util
	   * @param str	待替换的字符串
	   * @param oldchar 待替换的字符
	   * @param newchar 替换为的字符
	   * @return 将str中的所有oldchar字符全部替换为newchar,并返回这个替换后的字符串
	   */
	  public static String replaceAll(String str,char oldchar,char newchar){
	    char[] chars = str.toCharArray();
	    for(int i = 0 ; i<chars.length;i++){
	      if(chars[i]==oldchar)
	        chars[i] = newchar;
	    }
	    return new String(chars);
	  }

	  /**
	   * 如果inStr字符串与没有给定length的长度，则用fill填充，在指定direction的方向
	   * 如果inStr字符串长度大于length就直截返回inStr，不做处理
	   * @param inStr 待处理的字符串
	   * @param fill 以该字符串作为填充字符串
	   * @param length 填充后要求的长度
	   * @param direction 填充方向，如果是AFTER填充在后面，否则填充在前面
	   * @return 返回一个指定长度填充后的字符串
	   */
	  public static String fillStr(String inStr,String fill,int length,int direction){
	    if(inStr==null || inStr.length() > length || inStr.length()==0) return inStr;

	    StringBuffer tempStr = new StringBuffer("");
	    for (int i = 0 ; i<length-inStr.length() ; i++ ){
	      tempStr.append(fill);
	    }

	    if(direction == AFTER)
	      return new String(tempStr.toString()+inStr);
	    else
	      return new String(inStr+tempStr.toString());
	  }


	    public static List dividToList(String str, String start, String end) {
	        if (str == null || str.length() == 0)
	            return null;

	        int s = 0;
	        int e = 0;
	        List result = new ArrayList();
	        if (isIncludes(str, start) && isIncludes(str, end)) {
	            while ((e = str.indexOf(start, s)) >= 0) {
	                result.add(str.substring(s, e));
	                s = str.indexOf(end, e) + end.length();
	                result.add(str.substring(e, s));
	            }
	            if (s < str.length())
	                result.add(str.substring(s));

	            if (s == 0)
	                result.add(str);
	        } else
	            result.add(str);

	        return result;
	    }
	    

	/**
	 * 首字母大写
	 * @param string
	 * @return
	 */
	public static String upperFrist(String string){
		if(string == null)
			return null;
		String upper = string.toUpperCase();
		return upper.substring(0,1) + string.substring(1);
	}
	
	/**
	 * 首字母小写
	 * @param string
	 * @return
	 */
	public static String lowerFrist(String string){
		if(string == null)
			return null;
		String lower = string.toLowerCase();
		return lower.substring(0,1) + string.substring(1);
	}
	
	public static String URLEncode(String string, String encode){
		try {
			return URLEncoder.encode(string, encode);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	  public static String[] splitString(String s1, String s2) {
		    StringTokenizer token = new StringTokenizer(s1, s2);
		    int nCount = token.countTokens();
		    String[] strRes = new String[nCount];
		    for (int i = 0; i < nCount; i++)
		      strRes[i] = token.nextToken();
		    return strRes;
	 }

	 public static String MakeSafeString(String strText) {
		    if (Utils.isNullOrEmpty(strText)) {
		      return "";
		    }
		    int nLen = strText.length();
		    StringBuffer SB = new StringBuffer(nLen * 2);
		    for (int i = 0; i < nLen; i++) {
		      char tempChar = strText.charAt(i);
		      switch (tempChar) {
		      case '&':
		        SB.append("&amp;");
		        break;
		      case '<':
		        SB.append("&lt;");
		        break;
		      case '>':
		        SB.append("&gt;");
		        break;
		      case '"':
		        SB.append("&quot;");
		        break;
		      case '\'':
		        SB.append("&apos;");
		        break;
		      case '\000':
		        break;
		      default:
		        SB.append(tempChar);
		      }
		    }

		    return SB.toString();
		  }

		  public static String MakeScriptSafeString(String strText) {
		    if (Utils.isNullOrEmpty(strText))
		      return "";
		    String szRet = replace(strText, "\"", "\\\"");
		    szRet = replace(szRet, "'", "\\'");
		    szRet = replace(szRet, "\r", "\\r");
		    szRet = replace(szRet, "\n", "\\n");
		    return szRet;
		  }

		  public static String replace(String source, String find, String replacement)
		  {
		    int i = 0;

		    int k = find.length();
		    int m = replacement.length();

		    while (i < source.length()) {
		      int j = source.indexOf(find, i);

		      if (j == -1)
		      {
		        break;
		      }
		      source = replace(source, j, j + k, replacement);

		      i = j + m;
		    }

		    return source;
		  }
		  /*
			public static String replace(String str, String pattern, String replace){
			    int s = 0;
			    int e = 0;
			    StringBuffer result = new StringBuffer();
			    while((e = str.indexOf(pattern,s)) >= 0){
			        result.append(str.substring(s,e));
			        result.append(replace);
			        s = e + pattern.length();
			    }
			    result.append(str.substring(s));
			        
			    return result.toString();
			}
		*/

		  public static String replace(String source, int start, int end, String replacement)
		  {
		    if (start == 0)
		      source = replacement + source.substring(end);
		    else if (end == source.length())
		      source = source.substring(0, start) + replacement;
		    else {
		      source = source.substring(0, start) + replacement + 
		        source.substring(end);
		    }

		    return source;
		  }
		  
		  /**
		   * 去掉空格，回车，换行
		   * @param str
		   * @return
		   */
		  public static String replaceBlank(String str) {
			  String dest = "";
			  if (str!=null) {
			   Pattern p = Pattern.compile("\\s*|t|r|n");
			   Matcher m = p.matcher(str);
			   dest = m.replaceAll("");
			  }
			  return dest;
			 }
		  
	/**
	 * 去掉字符串前后空格	 
	 * @param str
	 * @return
	 * @throws Exception
	 */
	 public static String delSpace(String str) throws Exception {  
		 if (str == null) {  
		         return null;  
		  }       
		   String regStartSpace = "^[　 ]*";  
		   String regEndSpace = "[　 ]*$";          
		   String strDelSpace = str.replaceAll(regStartSpace, "").replaceAll(regEndSpace, "");  
		   return strDelSpace;  
	 }  
	 
	 //价格去零
	 public static String getNum(Double price) throws Exception{
		  String str = null;
		  str = price.toString().replace(".0","").replace(".00",".00");
		 return str;
	 }
	 //获得特性
	 public static String changeProductFeatures(String str) throws Exception{
		 String tempstr = null;
		 String s[] = str.split(",");
		 for(int i=0;i<s.length;i++){
			 if(tempstr == null){
				 tempstr = "<div>"+s[i]+"</div>";
			 }else{
				 tempstr += " <div>"+s[i]+"</div>";
			 }
			  
		 }
		 return tempstr;
	 }
	 //<img src="images/xihuang.gif" width="13" height="13" />
     //<img src="images/xihui.gif" width="13" height="13" />
	 public static String getGrade(Double score){
		 
		 String html ="";
		 if(score !=0){
			 for(int i=0;i<score;i++){
				 html +="<img src=\"images/xihuang.gif\" width=\"13\" height=\"13\" />";
			 }
			 if(score<5){
				 for(int i=0;i<(5-score);i++){
					 html +="<img src=\"images/xihui.gif\" width=\"13\" height=\"13\" />";
				 }
			 }
		 }else{
			 for(int i=0;i<5;i++){
				 html +="<img src=\"images/xihui.gif\" width=\"13\" height=\"13\" />";
			 }
		 }
		 return html;
	 }
}
