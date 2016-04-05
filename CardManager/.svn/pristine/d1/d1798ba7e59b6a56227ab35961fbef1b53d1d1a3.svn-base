package com.manage.commoditysta.action;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.base.framework.SpringContextHolder;
import com.base.framework.web.struts.BaseAction;
import com.base.util.Utils;
import com.manage.commoditysta.dao.CommodityStaDao;
import com.manage.commoditysta.model.CommoditySta;


public class CommodityStaAction extends BaseAction {
	
	private Logger logger = Logger.getLogger(CommodityStaAction.class);
	
	/**
	 * 商铺id
	 */
	private String mid;
	
	/**
	 * 商品来源id
	 */
	private String sourceid;
	
	private String bdate;
	private String edate;
	private String data;
	private CommodityStaDao commodityStaDao = (CommodityStaDao)SpringContextHolder.getBean(CommodityStaDao.class);
	
	private List<CommoditySta> list;
	private String exporturl;
	
	/**
	 * @author DL
	 * @date Jan 11, 2016
	 * @param 
	 * @return
	 * @see 进入页面
	 */
	public String commoditySta() throws Exception{
		return SUCCESS;
	}


	/**
	 * @author DL
	 * @date Jan 11, 2016
	 * @param 
	 * @return
	 * @see 商品统计
	 */
	public String commodityStatistical() throws Exception{
		try {
//			List<CommoditySta> list = null;
			//自定义统计
			list = new ArrayList<CommoditySta>();
			HashMap<String, String> map = new HashMap<String, String>();

			if(Utils.isNotNullOrEmpty(bdate) && Utils.isNotNullOrEmpty(edate)){
				map.put("bdate", bdate + " 00:00:00");
				map.put("edate", edate + " 23:59:59");
			}
			map.put("mid", mid);
			map.put("sourceid", sourceid);
			list = commodityStaDao.getCommoditySta(map);
			data = JSON.toJSONString(list);
		} catch (Exception e) {
			logger.error("发生错误：",e);
		}
		return SUCCESS;
	}
	
	/**
	 * @Date Mar 31, 2016
	 * @see 
	 * @user dl
	 * @return
	 * @throws Exception
	 */
	public String exportCommdityData() throws Exception{
		FileInputStream in = null;
		FileOutputStream out = null;
		try {
			commodityStatistical();			//商品统计方法得到list
			data = "";
			if(list != null && list.size() > 0){
				String realPath = getSession().getServletContext().getRealPath("/");
				String modelPath = realPath + "\\xlsmodel\\commdity.xlsx";
				in = new FileInputStream(modelPath);
				
				String filename = System.currentTimeMillis()+".xlsx";
				String outfilename = ServletActionContext.getServletContext().getRealPath("/temp/") + "\\" + filename;
				out = new FileOutputStream(outfilename);
				
				XSSFWorkbook workBook = new XSSFWorkbook(in);
				XSSFCellStyle style = workBook.createCellStyle(); // 样式对象  
		        style.setAlignment(XSSFCellStyle.ALIGN_CENTER);// 水平 
		        style.setBorderBottom((short)1);   	//设置下划线，参数是黑线的宽度  
		        style.setBorderLeft((short)1);   	//设置左边框  
		        style.setBorderRight((short)1);  	//设置有边框  
		        style.setBorderTop((short)1);   	//设置下边框 
				
				XSSFSheet sheet=workBook.cloneSheet(0);
				workBook.setSheetName(1, "商品统计数据");
				
				XSSFRow xssfRow = sheet.createRow(1);			
				XSSFCell cell = xssfRow.createCell(0);
				
				cell.setCellStyle(style);
				cell.setCellValue(list.get(0).getCname());		//第一行
				cell = xssfRow.createCell(1);
				cell.setCellStyle(style);
				cell.setCellValue(list.get(0).getSumcount());
				cell = xssfRow.createCell(2);
				cell.setCellStyle(style);
				cell.setCellValue(list.get(0).getUnit());
				cell = xssfRow.createCell(3);
				cell.setCellStyle(style);
				cell.setCellValue(list.get(0).getAllprice());
				for (int i = 0; i < list.size()-2; i++) {		//循环其余
					xssfRow = sheet.createRow(i+2);
					cell = xssfRow.createCell(0);
					cell.setCellStyle(style);
					cell.setCellValue(list.get(i+1).getCname());
					cell = xssfRow.createCell(1);
					cell.setCellStyle(style);
					cell.setCellValue(list.get(i+1).getSumcount());
					cell = xssfRow.createCell(2);
					cell.setCellStyle(style);
					cell.setCellValue(list.get(i+1).getUnit());
					cell = xssfRow.createCell(3);
					cell.setCellStyle(style);
					cell.setCellValue(list.get(i+1).getAllprice());
				}
				workBook. removeSheetAt(0);    //移除workbook中的模板sheet
				workBook.write(out);      
				
				try {
					//防止中文路径乱码造成的404错误
					exporturl = "/temp/";
					exporturl += new String(filename.getBytes(),"ISO8859-1");
					data = exporturl;
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
			}
		} catch (Exception e) {
			logger.error("发生错误：",e);
		}finally{
			if (in != null) {
				in.close();
			}
			if (out != null) {
				out.flush();  
				out.close();
			}
		}
		return SUCCESS;
	}
	
	public Logger getLogger() {
		return logger;
	}

	public void setLogger(Logger logger) {
		this.logger = logger;
	}

	public String getBdate() {
		return bdate;
	}

	public void setBdate(String bdate) {
		this.bdate = bdate;
	}

	public String getEdate() {
		return edate;
	}

	public void setEdate(String edate) {
		this.edate = edate;
	}
	
	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}


	public String getMid() {
		return mid;
	}


	public void setMid(String mid) {
		this.mid = mid;
	}


	public String getSourceid() {
		return sourceid;
	}


	public void setSourceid(String sourceid) {
		this.sourceid = sourceid;
	}

}
