package com;

import java.util.Date;

public class createPageInfo {

	/**
	 * @Date May 13, 2016
	 * @see 
	 * @user dl
	 * @param a
	 */
	public static void main(String[] a){

		String str = "private Integer id;	private Integer version;	private String pcode;	private Date pnoticedate;	private String orgname;	private String orgid;	private String pname;	private String pdetaindesc;	private String officesign;	private Integer officeid;	private Date signdate;	private String username;	private Integer userid;";
		String[] strArr = str.split(";");
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < strArr.length; i++) {
			String[] tempArr = strArr[i].split(" ");
			sb.append(tempArr[0]).append(" ").append(tempArr[1]).append(" ").append("f_"+tempArr[2]).append(";");
			sb.append(tempArr[0]).append(" ").append("String").append(" ").append("f_"+tempArr[2]+"_op").append(";");
		}
		System.out.println(sb.toString());
	}
}
