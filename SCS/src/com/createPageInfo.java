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

		String str = "private Integer id;	private Integer version;	private String truancy;	private String selfcheck;	private String nopass;	private String abroad;	private String leaks;	private String retaliation;	private String destructionequip;	private String refusecheck;	private String randomdense;	private String mrandomdense;	private String distributionscope;	private String transforclassified;	private String borrowing;	private String intensivelogo;	private String carryout;	private String jmcarryout;	private String printzl;	private String confidentiality;	private String storecarrier;	private String kconfidential;	private String keepjm;	private String bmbsybg;	private String xhdj;	private String xhgrq;	private String syhysb;	private String confregist;	private String xhzlwj;	private String gbsj;	private String videos;	private String inforprocess;	private String formatting;	private String dellog;	private String bmbs;	private String cysmdj;	private String aqbmcp;	private String maintenance;	private String azcc;	private String wbsb;	private String fsfunction;	private String storeinfor;	private String conmp;	private String dmjmedium;	private String usegmj;	private String middleconver;	private String isolatesocket;	private String carrymedium;	private String bmjcmedium;	private String checkinfor;	private String clsw;	private String grconmedium;	private String classifiedequip;	private String noclogo;	private String wirelesscon;	private String mprocess;	private String uwire;	private String ucommunication;	private String mobileinto;	private String umobile;	private String mobilelx;	private String faxcopy;	private String deliveryinfor;	private String receiveinterview;	private String wbmzg;	private String wqbmxy;	private String jsyq;	private String jdjc;	private String wsjd;	private String wfbmjl;	private String wjcr;	private String zlwjsp;	private String kdcgfw;	private String ayzc;	private String qkbss;	private String cssmhd;	private String username;	private Integer userid;";
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
