package com.base.util;

import java.util.Date;

import com.base.framework.BaseConfigHolder;

public class MailContent {
	public static String getTxMailBody(String uname,Date regdate,String sysname,String sysurl){
	String body ="";
			body +=	"<table width='100%' style='FONT-SIZE: 10pt; COLOR: #393939; LINE-HEIGHT: 16pt; BORDER-COLLAPSE: collapse' cellspacing='0' cellpadding='0' border='0'>";
			body += "<tbody>";
			body += "<tr>";
			body += "<td width='100%' >";
			body += "<br>";
			body += "<table width='100%' style='FONT-SIZE: 10.3pt; COLOR: #393939; LINE-HEIGHT: 16pt; BORDER-COLLAPSE: collapse' id='AutoNumber1' cellspacing='0' cellpadding='0' bordercolor='#111111' border='0' align='center'>";
			body += "<tbody>";
			body += "<tr>";
			
			body += "<td>　　　　　<b><font color='#ff0000'>"+uname+"</font></b>　您好，您在"+sysname+"中收到一封班主任提醒，请及时查收。<a href='http://"+sysurl+"'>"+sysurl+"</a><br><br>";
			
			body += "<br>　　　　　 ";
			body += "<br>　　　　　收到时间："+FormatDate.dateToString(regdate);
			body += "<br>";
			body += "<br>　　　　　 <b>声明：此邮件为自动发送，仅作提醒。</b>";
			body += "<br>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　"+BaseConfigHolder.getSystemName();
			body += "<br>　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　";
			body += "</td>";
			body += "</tr>";
			body += "</tbody>";
			body += "</table>";
			body += "<br>";
			body += "</td>";
			body += "</tr>";
			body += "</tbody>";
			body += "</table>";
			
			
			return body;
	}
}
