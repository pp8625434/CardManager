package com.manage.user.action;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

import org.apache.commons.io.IOUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.struts2.ServletActionContext;

import com.base.util.FormatDate;

import com.base.util.LogUtil;
import com.base.util.MD5Encrypt;
import com.base.util.StringUtils;
import com.base.util.Utils;
import com.base.framework.SpringContextHolder;
import com.base.framework.dao.Filter;
import com.base.framework.dao.impl.FilterFactory;
import com.base.framework.dao.impl.FilterSql;
import com.base.framework.paging.PageInfo;
import com.base.framework.security.model.Role;
import com.base.framework.security.model.UserRole;
import com.base.framework.security.service.RoleManager;
import com.base.framework.security.service.UserRoleManager;
import com.base.framework.web.PageInfoUtil;
import com.base.framework.web.PageParamsUtil;
import com.base.framework.web.struts.BaseAction;
import com.manage.cache.SecurityUtils;
import com.manage.log.model.Log;
import com.manage.log.service.LogManager;
import com.manage.org.model.Org;
import com.manage.org.service.OrgManager;
import com.manage.user.action.info.UserPageInfo;
import com.manage.user.model.User;
import com.manage.user.service.UserManager;

public class UserAction extends BaseAction{

	private User user;
	
	private UserPageInfo pageInfo;
	
	private List<User> userList = new ArrayList<User>();
	
	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	private String savePath;
	private String displayPath;
	
	private String userName;
	private String result;
	private String sql;
	
	private List<Org> orgList;
	private List<Role> roleList;
	private List<UserRole> userRoleList;
	
	private String gradeId;
	private String orgId;
	private String params;
	private String isopen;//列表页查询
	private String outdate;
	private Map<Long,List<Org>> treeOrgMap;
	private List<Org> userOrgList;
	private String orgTreeStr;
	private boolean isSuperRole;
	private String orgName;
	private String uinfo;
	private String searchName;
	private String openState;//开通，停用，重置用户密码
	
	private String fileExist;
	
	private LogManager logMgr = (LogManager)SpringContextHolder.getBean(Log.class);
	
	private HSSFWorkbook workbook = null;
    private HSSFSheet sheet = null;
    private HSSFRow row = null;

	private InputStream userStream;
	private	String oldpassword;
	private String newpassword;
	private Map<Integer, String> grademap;
	
	//toAddUser
	public String toAddUser() throws Exception {
		String params = PageParamsUtil.getPageParam(pageInfo);
		this.getRequest().setAttribute("params", params);
		getUeserRoleList();
		return SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public void getUeserRoleList(){
		List<Role> selfroleList = (List<Role>) this.getSession().getAttribute("roleList");
		isSuperRole = false;
		//判断是否是超级，系统管理员 是否显示角色列表
		for(Role role : selfroleList){
			if (1 == role.getId() || 2 == role.getId()) {
				isSuperRole = true;
				break;
			}
		}
		if (isSuperRole) {
			roleList = SecurityUtils.getRolesList();
		}
	}
	
	//添加用户
	public String addUser() throws Exception{
 
		UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
		user.setPassword(MD5Encrypt.encrypt("111111"));
		user.setCreatedate(new Date());
		user.setUpdatedate(new Date());
		user.setIsopen(1);
		user.setName(StringUtils.delSpace(user.getName())); //去掉用户名前后空格
		/*
		if(null != user.getOrg() && null != user.getOrg().getId()){
			OrgManager orgMgr = (OrgManager)SpringContextHolder.getBean(Org.class);
			user.setOrg((Org)orgMgr.getObjectById(user.getOrg().getId()));
		}
		*/
		
		///// 上传头像
		if(Utils.isNotNullOrEmpty(uploadFileName)){
			try {
				Date date = new Date();
				String path = "admin/user/photo";
				String fileName = date.getTime() + uploadFileName.substring(uploadFileName.lastIndexOf("."));
				String headPicPath = path +  "/" + fileName;
				//删除文件操作
				if(Utils.isNullOrEmpty(headPicPath)){
					//
				}else{
					//fileName = FileUtil.getFileNameFromString(headPicPath);
				}
				user.setHeadpicpath(headPicPath);
				FileInputStream fileInput = new FileInputStream(upload);
				
//				if(FtpConfigHolder.getFtpFileFlag()){
//					
//					FtpUtils.uploadFile(path, fileName, fileInput);
//
//				}else{
					headPicPath = ServletActionContext.getServletContext().getRealPath(path) + "/" + fileName;
					FileOutputStream out = new FileOutputStream(headPicPath);
					//将数据拷贝到上传目录，这里没有必要使用缓冲流，因为IOUtils工具类已经使用了缓存
					IOUtils.copy(fileInput, out);
//				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		userMgr.saveUser(user);
		
		///// 记录操作日志
		User us = (User) getSession().getAttribute("user");
		logMgr.saveLog(LogUtil.LOG_ADD_TYPE, LogUtil.LOG_USERMANAGE_FUNCTION, user.getId(), user.getName(), us.getId(), us.getRealname(),getRequest());
		
		String[] roleIds = getRequest().getParameterValues("roleIds");
		if(roleIds != null && roleIds.length >0){
			RoleManager roleMgr = (RoleManager)SpringContextHolder.getBean(Role.class);
			UserRoleManager userRoleMgr = (UserRoleManager)SpringContextHolder.getBean(UserRole.class);
			Role role = null;
			for(int i=0; i<roleIds.length; i++) {
				//role = roleMgr.getRoleById(Integer.parseInt(roleIds[i]));
				UserRole userRole = new UserRole();
				userRole.setRole(Integer.parseInt(roleIds[i]));
				userRole.setSecurityUser(user.getId());
				userRoleMgr.saveUserRole(userRole);
			}
		}
		if(pageInfo.getF_isManager() != null && pageInfo.getF_isManager()==1){
			this.getRequest().setAttribute("title","管理员帐号管理");
			this.getRequest().setAttribute("url","/user/managerUserList.action");
			this.getRequest().setAttribute("params",this.params);
		}else{
			this.getRequest().setAttribute("title","个人用户管理");
			this.getRequest().setAttribute("url","/user/userList.action");
			this.getRequest().setAttribute("params",this.params);
		}
		
		
		return SUCCESS;
	}
	
	//添加用户-用户上传头像
	public String upload() {
		try {
			String headPicPath = (String)this.getRequest().getParameter("headPicPath");
			Date date = new Date();
			String fileName = "";
			String path = "admin/user/photo";
			headPicPath =path +  "/" + date.getTime() + getUploadFileName().substring(getUploadFileName().lastIndexOf("."));
			fileName =  date.getTime() + getUploadFileName().substring(getUploadFileName().lastIndexOf("."));
			//删除文件操作
			if(Utils.isNullOrEmpty(headPicPath)){
				//
			}else{
				//fileName = FileUtil.getFileNameFromString(headPicPath);
			}
			FileInputStream fileInput = new FileInputStream(getUpload());
			
//			if(FtpConfigHolder.getFtpFileFlag()){
//				//System.out.println(FtpConfigHolder.getFtpFileFlag());
//				/*
//				FtpUtil.setClient();
//				FtpUtil.login();
//				FtpUtil.uploadFile(in, headPicPath);
//				FtpUtil.logout();
//				*/
//				/*
//				FtpApacheUtil ftpApache = new FtpApacheUtil();
//				ftpApache.setClient();
//				ftpApache.login();
//				ftpApache.createDir(mainPath);
//				boolean flag = ftpApache.uploadFile(mainPath, fileName, fileInput);
//				*/
//				String mainPath = BaseConfigHolder.getUserPhotoPath();
//				//String fileName  = date.getTime() + getUploadFileName().substring(getUploadFileName().lastIndexOf("."));
//				FtpUtils.uploadFile(mainPath, fileName, fileInput);
//
//			}else{
				headPicPath = ServletActionContext.getServletContext().getRealPath(path) + "/" + fileName;
				FileOutputStream out = new FileOutputStream(headPicPath);
				//将数据拷贝到上传目录，这里没有必要使用缓冲流，因为IOUtils工具类已经使用了缓存
				IOUtils.copy(fileInput, out);
//			}
			displayPath = headPicPath;
			getRequest().setAttribute("headPicPath", headPicPath);
			getRequest().setAttribute("displayPath", displayPath);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	//验证名称是否重复-公共action
	public String checkName() {
		UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
		List list = userMgr.getObjectBySql(sql);
		if(list != null && list.size() > 0){
			Long t = (Long)list.get(0);
			if(t>0){
				result = "succ";
			}else {
				result = "false";
			}
		}else{
			result = "false";
		}
		return SUCCESS;
	}
	
	/** 验证上传的文件是否存在 - 公共
	 * @return
	 */
	public String checkFileExist(){
		result = "false";
		if(fileExist == null || "".equals(fileExist)){
			result = "false";
		}else{
			if(new File(fileExist).exists()){
				result = "succ";
			}
		}
		return SUCCESS;
	}
	
	
	//用户列表
	public String listUser(){
		getCommonUserList();
		return SUCCESS;
	}
	//生成用户列表
	@SuppressWarnings("unchecked")
	public void getCommonUserList(){
		pageInfo = pageInfo == null ? new UserPageInfo() : pageInfo;
		//屏蔽sa用户
		pageInfo.setF_id(0);
		pageInfo.setF_id_op(Filter.OPERATOR_NOT_EQ);
		//用户状态
		if(!"".equals(this.isopen) && "3".equals(this.isopen)){
			pageInfo.setF_accountoverdate(new Date());
			pageInfo.setF_accountoverdate_op(Filter.OPERATOR_LESS_THEN);
		}else if(!"".equals(this.isopen)){
			pageInfo.setF_isopen(this.isopen);
		}else{
			this.isopen="10";
		}
		//用户名
		if(""!=searchName && null!= searchName){
			if ("name".equals(uinfo)) {
				pageInfo.setF_name(searchName);
			} else if("nickname".equals(uinfo)) {
				pageInfo.setF_nickname(searchName);
			}else if("realname".equals(uinfo)){
				pageInfo.setF_realname(searchName);
			}
		}
		user = (User) getSession().getAttribute("user");
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);

		String sql = "  (ismanager is null || ismanager = 2)   "   ;
		FilterSql filterSql = new FilterSql();
		filterSql.setRelations(" " + Filter.RELATION_AND + " ");
		filterSql.setSql(sql);
		sarchPageInfo.getFilter().setFilterSql(filterSql);
		
		UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
		//要查询的字段
		String properties = "id,name, nickname,realname,password,createdate,updatedate,isopen,orgId,orgName,accountoverdate,roleNames,importinfo1";
		if(null != sarchPageInfo.getPage() ){
			sarchPageInfo.getPage().setProperties(properties);
		}
		userList = userMgr.getUserList(sarchPageInfo);
		
	}
	
	
	
	//删除用户
	public String deleteUser() {
		UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
		user = userMgr.getUserById(user.getId());
		//删除用户表
		userMgr.removeUserById(user.getId());
		
		
		
		//删除角色表
		userMgr.removeUserRoleByUserId(user.getId());
		
		
		///// 记录操作日志
		User us = (User) getSession().getAttribute("user");
		logMgr.saveLog(LogUtil.LOG_DELETE_TYPE, LogUtil.LOG_USERMANAGE_FUNCTION, user.getId(), user.getName(), us.getId(), us.getRealname(),getRequest());
		if(pageInfo.getF_isManager() != null && pageInfo.getF_isManager()==1){
			return "managerlist";
		}
		return SUCCESS;
	}
	
	//删除多个用户
	public String deleteUsers() throws Exception{
		UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
		String[] ids = getRequest().getParameterValues("orderId");
		if (ids != null && ids.length > 0) {
			User us = (User) getSession().getAttribute("user");
			for(int i=0; i<ids.length; i++) {
				if (ids[i].length()>0) {
					Integer userid = new Integer( ids[i] );
					if(userid != 0){		
						user = userMgr.getUserById(userid);
						userMgr.removeUserById(userid);
						
						//删除角色表
						userMgr.removeUserRoleByUserId(user.getId());
						
						
						///// 记录操作日志
						logMgr.saveLog(LogUtil.LOG_DELETE_TYPE, LogUtil.LOG_USERMANAGE_FUNCTION, user.getId(), user.getName(), us.getId(), us.getRealname(),getRequest());
					}
				}
			}
		}
		if(pageInfo.getF_isManager() != null && pageInfo.getF_isManager()==1){
			return "managerlist";
		}
		return SUCCESS;
	}
	
	//修改用户
	public String toEditUser() throws Exception {
		String params = PageParamsUtil.getPageParam(pageInfo);
		
		if(null != this.uinfo && !"".equals(this.uinfo)){
			params = params + "&uinfo="+this.uinfo;
		}
		if(null != this.searchName && !"".equals(this.searchName)){
			params = params + "&searchName="+this.searchName;
		}
		if(null != this.isopen && !"".equals(this.isopen)){
			params = params + "&isopen="+this.isopen;
		}
		if(null != this.orgName && !"".equals(this.orgName)){
			params = params + "&orgName="+this.orgName;
		}
		if(null != this.orgId && !"".equals(this.orgId)){
			params = params + "&orgId="+this.orgId;
		}
		
		this.getRequest().setAttribute("params", params);
		UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
		user = userMgr.getUserById(user.getId());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if(user.getBirthday() != null && !user.getBirthday().equals("")){
			getRequest().setAttribute("birthday", sdf.format(user.getBirthday()));
		}
		if(user.getWorkdate() != null && !user.getWorkdate().equals("")){
			getRequest().setAttribute("workdate", sdf.format(user.getWorkdate()));
		}
		if(user.getAccountoverdate() != null && !user.getAccountoverdate().equals("")){
			getRequest().setAttribute("accountoverdate", sdf.format(user.getAccountoverdate()));
		}
		if(user.getStudyoverduedate() != null && !user.getStudyoverduedate().equals("")){
			getRequest().setAttribute("studyoverduedate", sdf.format(user.getStudyoverduedate()));
		}
		if(Utils.isNotNullOrEmpty(user.getHeadpicpath())){
			user.setDisplayPath(user.getHeadpicpath() );
		}
		getUeserRoleList();
		if(this.isSuperRole){
			userRoleList = userMgr.getUserRoleList(user.getId());
		}
		
		
		return SUCCESS;
	}
	
	//修改用户-执行操作
	public String editUser() {
		
		UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
		User userVo = userMgr.getUserById(user.getId());
		
		userVo.setName(user.getName());
		userVo.setNickname(user.getNickname());
		userVo.setRealname(user.getRealname());
		//userVo.setPassword(user.getPassword());
		userVo.setSex(user.getSex());
		userVo.setBirthday(user.getBirthday());
		userVo.setMail(user.getMail());	
		userVo.setCard(user.getCard());
		userVo.setPhone(user.getPhone());
		userVo.setCellphone(user.getCellphone());
		userVo.setDiploma(user.getDiploma());
		userVo.setClan(user.getClan());
		userVo.setWorkunit(user.getWorkunit());
		userVo.setAddress(user.getAddress());
		userVo.setAccountoverdate(user.getAccountoverdate());
		userVo.setStudyoverduedate(user.getStudyoverduedate());
		userVo.setIsgroup(user.getIsgroup());
		userVo.setIsManager(user.getIsManager());
		userVo.setRoleNames(user.getRoleNames());
		userVo.setImportinfo1(user.getImportinfo1());
		
		userVo.setIsbathcard(user.getIsbathcard());
		userVo.setBathcardnum(user.getBathcardnum());
		/*
		if(null != user.getOrg() && null != user.getOrg().getId()){
			OrgManager orgMgr = (OrgManager)SpringContextHolder.getBean(Org.class);
			userVo.setOrg((Org)orgMgr.getObjectById(user.getOrg().getId()));
		}
		*/
		if(null != user.getOrgId() && null != user.getOrgName()){
			 userVo.setOrgId(user.getOrgId());
			 userVo.setOrgName(user.getOrgName());
			
		}
		userVo.setPostcode(user.getPostcode());
		//userVo.setHeadpicpath(user.getHeadpicpath());
		///// 上传头像
		if(Utils.isNotNullOrEmpty(uploadFileName)){
			try {
				Date date = new Date();
				String path = "admin/user/photo";
				String fileName = date.getTime() + uploadFileName.substring(uploadFileName.lastIndexOf("."));
				String headPicPath = path +  "/" + fileName;
				//删除文件操作
				if(Utils.isNullOrEmpty(headPicPath)){
					//
				}else{
					//fileName = FileUtil.getFileNameFromString(headPicPath);
				}
				userVo.setHeadpicpath(headPicPath);
				FileInputStream fileInput = new FileInputStream(upload);
				
//				if(FtpConfigHolder.getFtpFileFlag()){
//					
//					FtpUtils.uploadFile(path, fileName, fileInput);
//
//				}else{
					headPicPath = ServletActionContext.getServletContext().getRealPath(path) + "/" + fileName;
					FileOutputStream out = new FileOutputStream(headPicPath);
					//将数据拷贝到上传目录，这里没有必要使用缓冲流，因为IOUtils工具类已经使用了缓存
					IOUtils.copy(fileInput, out);
//				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		userVo.setWorkdate(user.getWorkdate());
		userVo.setDescription(user.getDescription());
		userVo.setPwdquestion(user.getPwdquestion());
		userVo.setPwdanswer(user.getPwdanswer());
		userVo.setUpdatedate(new Date());
		userMgr.updateUser(userVo);
		
		///// 记录操作日志
		User us = (User) getSession().getAttribute("user");
		logMgr.saveLog(LogUtil.LOG_UPDATE_TYPE, LogUtil.LOG_USERMANAGE_FUNCTION, userVo.getId(), userVo.getName(), us.getId(), us.getRealname(),getRequest());

		//更新论坛用户信息
//		if(WebServiceUtil.isUserExist(userVo.getName())){
//			WebServiceUtil.updateUser(userVo);
//		}
		RoleManager roleMgr = (RoleManager)SpringContextHolder.getBean(Role.class);
		UserRoleManager userRoleMgr = (UserRoleManager)SpringContextHolder.getBean(UserRole.class);
		userRoleList = userMgr.getUserRoleList(user.getId());
		if(userRoleList != null && userRoleList.size()>0){
			for(int i=0; i<userRoleList.size(); i++){
				userRoleMgr.removeObject(userRoleList.get(i));
			}
		}
		String[] roleIds = getRequest().getParameterValues("roleIds");
		if(roleIds != null && roleIds.length >0){
			Role role = null;
			for(int i=0; i<roleIds.length; i++) {
				//role = roleMgr.getRoleById(Integer.parseInt(roleIds[i]));
				UserRole userRole = new UserRole();
				userRole.setRole(Integer.parseInt(roleIds[i]));
				userRole.setSecurityUser(user.getId());
				userRoleMgr.saveUserRole(userRole);
			}
		}
		//更新用户所属机构信息
		
		if(pageInfo.getF_isManager() != null && pageInfo.getF_isManager()==1){
			this.getRequest().setAttribute("title","管理员帐号管理");
			this.getRequest().setAttribute("url","/user/managerUserList.action");
			this.getRequest().setAttribute("params",this.params);
		}else{
			this.getRequest().setAttribute("title","在线学员管理");
			this.getRequest().setAttribute("url","/user/userList.action");
			this.getRequest().setAttribute("params",this.params);
		}
		return SUCCESS;
	}
	
	//个人设置-获取系统登录用户信息
	public String personalSetting() {
		UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
		Integer userid = ((User)getSession().getAttribute("user")).getId();
		user = userMgr.getUserById(userid);
		if(user.getBirthday() != null && !user.getBirthday().equals("")){
			getRequest().setAttribute("birthday", FormatDate.dateToString(user.getBirthday()));
		}
		if(user.getWorkdate() != null && !user.getWorkdate().equals("")){
			getRequest().setAttribute("workdate", FormatDate.dateToString(user.getWorkdate()));
		}
		roleList = userMgr.getRoleList();
		//userRoleList = userMgr.getUserRoleList(user.getId());
		return SUCCESS;
	}
	
	//个人设置-更新系统登录用户信息
	public String personalSetting_do() {
		result = "";
		UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
		User userVo = userMgr.getUserById(((User)getSession().getAttribute("user")).getId());
		if(null != userVo){
			userVo.setPassword(MD5Encrypt.encrypt(newpassword));
			userVo.setUpdatedate(new Date());
			userMgr.updateUser(userVo);
			// 记录操作日志
//			logMgr.saveLog(LogUtil.LOG_UPDATE_TYPE, LogUtil.LOG_USEREDIT_FUNCTION, userVo.getId(), userVo.getName(), userVo.getId(), userVo.getRealname());
			result = "个人信息修改成功！"; 
		}else{
			result = "修改失败!";
		}
		return SUCCESS;
	}
	
	/*
	 * 开通/停用/重置密码
	 */
	public String modifyUser(){
		UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
		if("1" .equals(this.openState) || "2".equals(this.openState)){
			String[] ids = getRequest().getParameterValues("orderId");
			if (ids != null && ids.length > 0) {
				for(int i=0; i<ids.length; i++) {
					if (ids[i].length()>0) {
						Integer userid = new Integer( ids[i] );
						User userVo = userMgr.getUserById(userid);
						userVo.setIsopen(Integer.parseInt(this.openState));
						userMgr.updateUser(userVo);
					}
				}
			}
		}else if("3".equals(this.openState)){//重置密码
			String[] ids = getRequest().getParameterValues("orderId");
			if (ids != null && ids.length > 0) {
				for(int i=0; i<ids.length; i++) {
					if (ids[i].length()>0) {
						Integer userid = new Integer( ids[i] );
						User userVo = userMgr.getUserById(userid);
						userVo.setPassword(MD5Encrypt.encrypt("111111"));
						userMgr.updateUser(userVo);
					}
				}
			}
		}
		if(pageInfo.getF_isManager() != null && pageInfo.getF_isManager()==1){
			return "managerlist";
		}
		return SUCCESS;
	}
	
	
	
	/*
	 * 导出用户 excel表格
	 */
	
	@SuppressWarnings("unchecked")
	public String exportUser() {
		ByteArrayOutputStream out = new ByteArrayOutputStream();
		try {
			UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
			Filter filter = FilterFactory.getSimpleFilter("id", 0,Filter.OPERATOR_NOT_EQ);
			String sql = "  (ismanager is null || ismanager = 2)   "   ;
			FilterSql filterSql = new FilterSql();
			filterSql.setRelations(" " + Filter.RELATION_AND + " ");
			filterSql.setSql(sql);
			filter.setFilterSql(filterSql);
			
			if(!"".equals(this.isopen) && "3".equals(this.isopen) && this.isopen !=null){
				filter.addCondition("ACCOUNTOVERDATE", new Date(),Filter.OPERATOR_LESS_THEN);
			}else if(!"".equals(this.isopen) && this.isopen !=null){
				filter.addCondition("isopen", this.isopen,Filter.OPERATOR_EQ);
			}
			//用户名
			if(""!=searchName && null!= searchName){
				if ("name".equals(uinfo)) {
					filter.addCondition("name", searchName, Filter.OPERATOR_LIKE);
				} else if("nickname".equals(uinfo)) {
					filter.addCondition("nickname", searchName, Filter.OPERATOR_LIKE);
				}else if("realname".equals(uinfo)){
					filter.addCondition("realname", searchName, Filter.OPERATOR_LIKE);
				}
			}
			
			userList = userMgr.getObjects(filter);
			//模版文件路径
			String realPath = getSession().getServletContext().getRealPath("/");
			String modelPath = realPath + "/admin/user/userexport.xls";
			Workbook rw = Workbook.getWorkbook(new File(modelPath));
			WritableWorkbook wbook = Workbook.createWorkbook(out, rw);
			WritableSheet wsheet = wbook.getSheet(0);
			int c = 2; //用于循环时Excel的行号
			Iterator<User> it = userList.iterator();
			while (it.hasNext()) {
				User user= it.next();
				Label content0 = new Label(0, c, user.getCard());
				Label content1 = new Label(1, c, user.getRealname());
				String sex = "男";
				if(null !=user.getSex() && 13 == user.getSex()){
					sex = "女";
				}
				Label content2 = new Label(2, c, user.getName());
				Label content3 = new Label(3, c, sex);
				
				SimpleDateFormat sdf  = new SimpleDateFormat("yyyy-MM-dd");
				String birthday = "";
				if(null != user.getBirthday()){
					birthday = sdf.format(user.getBirthday());
				}
				Label content4 = new Label(4, c, birthday);
				
				Label content5 = new Label(5, c, user.getMail());
				Label content6 = new Label(6, c, user.getPhone());
				Label content7 = new Label(7, c, user.getPostcode());
				Label content8 = new Label(8, c, user.getAddress());
				Label content9 = new Label(9, c, user.getDescription());
				wsheet.addCell(content0);
				wsheet.addCell(content1);
				wsheet.addCell(content2);
				wsheet.addCell(content3);
				wsheet.addCell(content4);
				wsheet.addCell(content5);
				wsheet.addCell(content6);
				wsheet.addCell(content7);
				wsheet.addCell(content8);
				wsheet.addCell(content9);

				c = c+1;
			}
			try {
				wbook.write(); //写入文件
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				wbook.close();
				rw.close();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		userStream = new ByteArrayInputStream(out.toByteArray());
		return SUCCESS;
	} 
	
	/**导入用户 excel表格
	 * 
	 * @return
	 */
	public String importUser() {
		try {
			String path = ServletActionContext.getServletContext().getRealPath("admin/user/importFile");
			Date date = new Date();
			String tempPath = "/" +date.getTime() + getUploadFileName().substring(getUploadFileName().lastIndexOf("."));
			path += tempPath;
			FileInputStream in = new FileInputStream(getUpload());
			FileOutputStream out = new FileOutputStream(path);
			IOUtils.copy(in, out);
			in.close();
			out.close();
			getRequest().setAttribute("flag", "文件上传成功！");
			UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
			OrgManager orgrMgr = (OrgManager)SpringContextHolder.getBean(Org.class);
			
			//Org org = orgrMgr.getOrgById(Integer.parseInt(orgId));
			int userCount = 0;
			int rowCount = 0;
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			User user = (User) getSession().getAttribute("user");
	        try {
	        	result = checkExcel(path,userMgr);
	        	if(result != null && !result.equals("")){
	        		getRequest().setAttribute("result", result);
	        		return INPUT;
	        	}
	        	
	            workbook = new HSSFWorkbook(new FileInputStream(path));
	            sheet = workbook.getSheetAt(0);
	            rowCount = sheet.getLastRowNum();
	            for (int i = 1; i <= rowCount; i++) {
	            	row = sheet.getRow(i);
	                User usertemp = new User();
	                //用户名（手机号码）
	                String name = "";
	                if(null != row.getCell(6)){
	                	name = getValue(row.getCell(6));
	                }
	                
	                String sql = " select count(*) from com.manage.user.model.User u where u.name = '"+name+"'";
                	List list = userMgr.getObjectBySql(sql);
                	if(list == null || Integer.parseInt(list.get(0).toString()) <=0){
//                		String card=null;
//                		if(null != row.getCell(0)){
//                			card= getValue(row.getCell(0));
//                		}
                		
                		//真实姓名
    	                String realname = getValue(row.getCell(5));
    	                //移动手机
//    	                String cellphone = "";
//    	                if(null != row.getCell(2)){
//    	                	cellphone = getValue(row.getCell(2));
//    	                }
    	                
//    	                //性别
//    	                String sex =null;
//    	                if(null !=row.getCell(3)){
//    	                	sex= getValue(row.getCell(3));
//    	                }
//    	                
//    	                //出生日期
//    	                String birthday = null;
//    	                if(null !=row.getCell(4)){
//    	                	birthday = getValue(row.getCell(4));
//    	                }
//    	                	
//    	                //个人邮箱
//    	                String mail = null;
//    	                if(null !=row.getCell(5)){
//    	                	mail = getValue(row.getCell(5));
//    	                }
    	                //身份证号
    	                
    	                if(null != row.getCell(25)){
    	                	String card = getValue(row.getCell(25));
    	                	usertemp.setCard(card.trim());
    	                }
//    	                //固定电话
//    	                String phone ="";
//    	                if(null != row.getCell(6)){
//    	                	phone = getValue(row.getCell(6));  
//    	                }
//    	                
//    	                
//    	                //邮政编码
//    	                String postcode = "";
//    	                if(null != row.getCell(7)){
//    	                	postcode = getValue(row.getCell(7)); 
//    	                }
//    	                //所在社区
//    	                String address = "";
//    	                if(null!= row.getCell(8)){
//    	                	address = getValue(row.getCell(8));
//    	                }
//    	              //工作单位
//    	                String description = "";
//    	                if(null != row.getCell(9)){
//    	                	description = getValue(row.getCell(9));
//    	                }
    	                
    	                usertemp.setName(name);
    	                usertemp.setRealname(realname);
//    	                if(sex == null || "女".equals(sex)){
//    	                	usertemp.setSex(13);
//    	                }else{
//    	                	usertemp.setSex(11);
//    	                }
    	                if(null != row.getCell(26)){
    	                	String sex = getValue(row.getCell(26));
    	                	if(sex != null && sex.equals("女")){
    	                		usertemp.setSex(13);
    	                	}else{
    	                		usertemp.setSex(11);
    	                	}
    	                }else{
    	                	usertemp.setSex(11);
    	                }
//    	                if(birthday != null){
//    	                	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//        	                usertemp.setBirthday(sdf.parse(birthday));
//    	                }
    	                
    	                //usertemp.setMail(mail);
    	                
    	                //usertemp.setPhone(phone);
    	                //usertemp.setCellphone(name);
    	                //usertemp.setWorkunit(workunit);
    	                //usertemp.setAddress(address);
    	                //usertemp.setPostcode(postcode);
    	                usertemp.setPassword(MD5Encrypt.encrypt(name.substring(name.length()-6, name.length())));
    	                usertemp.setCreatedate(new Date());
    	                usertemp.setUpdatedate(new Date());
    	                //usertemp.setDescription(description);
    	                //为用户增加所属机构
    	                //usertemp.setOrgId(Integer.parseInt(orgId));
    	                //usertemp.setOrgName(org.getName());
    	                usertemp.setIsopen(1);
    	                //执行添加试题
    	                
    	                //导入的无用信息
    	                String info= "info";
    	                for(int t = 0;t<24;t++){
    	                	if(null!= row.getCell(t)){
        	                	info += ":::" + getValue(row.getCell(t));
        	                }
    	                }
    	                usertemp.setImportinfo(info);
    	                
    	                if(null != row.getCell(8)){
    	                	String info1 = getValue(row.getCell(8));
    	                	usertemp.setImportinfo1(info1);
    	                }
    	                
    	                userMgr.saveUser(usertemp);
    	                
    	                
    	                
    	                ++userCount;
                	}
	                
	            }
	        }
	        catch (Exception e) {
	        	e.printStackTrace();
	        	result = "用户导入失败，请务必认真检查excel文件是否与模版相同！如仍有问题，请联系技术人员";
	        }
	        this.getRequest().setAttribute("userCount", userCount);
		} catch (Exception e) {
			e.printStackTrace();
			return INPUT;
		}
		return SUCCESS;
	}
	
	
	
	@SuppressWarnings("unchecked")
	private String checkExcel(String path,UserManager userMgr){
		String res = "";
		try {
			workbook = new HSSFWorkbook(new FileInputStream(path));
            sheet = workbook.getSheetAt(0);
            int rowCount = sheet.getLastRowNum();
            for (int i = 1; i <=rowCount; i++) {
                row = sheet.getRow(i);
                //用户名
                HSSFCell nameCell = row.getCell(0);
//                if(null != nameCell){
//                	if("".equals(getValue(nameCell).trim())){
//                		res = "用户导入失败！第"+(i+1)+"行的身份证号不能为空";
//                		break;
//                	}else{
//                		Pattern pattern = Pattern.compile("(^\\d{15}$)|(\\d{17}(?:\\d|x|X)$)");
//                		Matcher matcher = pattern.matcher(getValue(nameCell).trim());
//                		if(!matcher.matches()){
//                			res = "用户导入失败！第"+(i+1)+"行的身份证号格式不正确:"+getValue(nameCell).trim();
//                    		break;
//                		};
//                	}
//                	String sql = " select count(*) from com.manage.user.model.User u where u.name = '"+getValue(nameCell).trim()+"'";
//                	List list = userMgr.getObjectBySql(sql);
//                	if(list != null && Integer.parseInt(list.get(0).toString()) > 0){
//                		res = "用户导入失败！第"+(i+1)+"行的身份证号已存在!";
//                		break;
//                	}
//                }else{
//                	res = "用户导入失败！第"+(i+1)+"行的身份证号不能为空";
//            		break;
//                }
//                if(nameCell != null && !"".equals(getValue(nameCell).trim())){
//                	Pattern pattern = Pattern.compile("(^\\d{15}$)|(\\d{17}(?:\\d|x|X)$)");
//            		Matcher matcher = pattern.matcher(getValue(nameCell).trim());
//            		if(!matcher.matches()){
//            			res = "用户导入失败！第"+(i+1)+"行的身份证号格式不正确:"+getValue(nameCell).trim();
//                		break;
//            		};
//                }
                
                
                //真实姓名
                HSSFCell realnameCell = row.getCell(5);
                if(null != realnameCell){
                	if("".equals(getValue(realnameCell).trim())){
                		res = "用户导入失败！第"+(i+1)+"行的真实姓名不能为空";
                		break;
                	}
                }else{
                	res = "用户导入失败！第"+(i+1)+"行的真实姓名不能为空";
            		break;
                }
                //移动手机
                HSSFCell cellphoneCell = row.getCell(6);
                if(null != cellphoneCell){
                	if("".equals(getValue(cellphoneCell).trim())){
                		res = "用户导入失败！第"+(i+1)+"行的联系方式不能为空";
                		break;
                	}else if(getValue(cellphoneCell).trim().length()!=11){
                		res = "用户导入失败！第"+(i+1)+"行的联系方式格式不正确:"+getValue(cellphoneCell).trim();
                		break;
                	}else{
                		Pattern p = Pattern.compile("^[0-9]*$");
                		Matcher m = p.matcher(getValue(cellphoneCell).trim());
                		if(!m.matches()){
                			res = "用户导入失败！第"+(i+1)+"行的联系方式格式不正确:"+getValue(cellphoneCell).trim();
                    		break;
                		};
                		
                		String sql = " select count(*) from com.manage.user.model.User u where u.name = '"+getValue(cellphoneCell).trim()+"'";
                    	List list = userMgr.getObjectBySql(sql);
                    	if(list != null && Integer.parseInt(list.get(0).toString()) > 0){
                    		res = "用户导入失败！第"+(i+1)+"行的联系方式已存在!";
                    		break;
                    	}
                	}
                }else{
                	res = "用户导入失败！第"+(i+1)+"行的联系方式不能为空";
            		break;
                }
//                //性别
//                HSSFCell sexCell = row.getCell(3);
//                if(null != sexCell){
//                	if("".equals(getValue(sexCell).trim())){
//                		res = "用户导入失败！第"+(i-2)+"行的姓别不能为空";
//                		break;
//                	}else{
//                		if(!("0".equals(getValue(sexCell).trim()) || "1".equals(getValue(sexCell).trim()))){
//                			res = "用户导入失败！第"+(i-2)+"行的姓别不正确";
//                    		break;
//                		}
//                	}
//                }else{
//                	res = "用户导入失败！第"+(i-2)+"行的姓别不能为空";
//            		break;
//                }
//                //出生日期
//                HSSFCell birthdayCell = row.getCell(4);
//                if(null != birthdayCell){
//                	if("".equals(getValue(birthdayCell).trim())){
//                		res = "用户导入失败！第"+(i-2)+"行的出生日期不能为空";
//                		break;
//                	}else{
//                		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//                		Date bir = sdf.parse(getValue(birthdayCell).trim());
//                		Calendar cpcalendar = new GregorianCalendar();
//                		cpcalendar.setTime(bir);
//                		Calendar c2 = Calendar.getInstance(); 
//                		long timediff = c2.getTimeInMillis() - cpcalendar.getTimeInMillis();
//                		if(timediff<0){
//                			res = "用户导入失败！第"+(i-2)+"行的出生日期不能大于今天";
//                    		break;
//                		} 
//                	}
//                }else{
//                	res = "用户导入失败！第"+(i-2)+"行的出生日期不能为空";
//            		break;
//                }
//                //个人邮箱
//                HSSFCell mailCell = row.getCell(5);
//                if(null != mailCell){
//                	if("".equals(getValue(mailCell).trim())){
//                		res = "用户导入失败！第"+(i-2)+"行的个人邮箱不能为空";
//                		break;
//                	}else{
//                		Pattern pattern = Pattern.compile("^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$");
//                		Matcher matcher = pattern.matcher(getValue(mailCell).trim());
//                		if(!matcher.matches()){
//                			res = "用户导入失败！第"+(i-2)+"行的个人邮箱格式不正确";
//                    		break;
//                		}; 
//                	}
//                }else{
//                	res = "用户导入失败！第"+(i-2)+"行的个人邮箱不能为空";
//            		break;
//                }
//                //身份证号
//                HSSFCell cardCell = row.getCell(6);
//                if(null != cardCell){
//                	if("".equals(getValue(mailCell).trim())){
//                		res = "用户导入失败！第"+(i-2)+"行的身份证号不能为空";
//                		break;
//                	}else{
//                		Pattern pattern = Pattern.compile("^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$");
//                		Matcher matcher = pattern.matcher(getValue(mailCell).trim());
//                		if(!matcher.matches()){
//                			res = "用户导入失败！第"+(i-2)+"行的身份证号格式不正确";
//                    		break;
//                		}; 
//                	}
//                }else{
//                	res = "用户导入失败！第"+(i-2)+"行的身份证号为空";
//            		break;
//                }
                //固定电话
                //HSSFCell phoneCell = row.getCell(7);
                 
                
                 
                //工作单位
                //HSSFCell workunitCell = row.getCell(8);
                
                //所在社区
                //HSSFCell addressCell = row.getCell(10);
                
                //邮政编码
                //HSSFCell postcodeCell = row.getCell(11);
                
                //身份证号码
                if(null != row.getCell(25)){
                	String card = getValue(row.getCell(25));
                	if(card != null && !card.equals("null") && !card.equals("")){
                		Pattern pattern = Pattern.compile("(^\\d{15}$)|(\\d{17}(?:\\d|x|X)$)");
                		Matcher matcher = pattern.matcher(card.trim());
                		if(!matcher.matches()){
                			res = "用户导入失败！第"+(i+1)+"行的身份证号格式不正确:"+card.trim();
                    		break;
                		};
                		
                		String sql = " select count(*) from com.manage.user.model.User u where u.card = '"+card.trim()+"'";
                    	List list = userMgr.getObjectBySql(sql);
                    	if(list != null && Integer.parseInt(list.get(0).toString()) > 0){
                    		res = "用户导入失败！第"+(i+1)+"行的身份证号已存在!";
                    		break;
                    	}
                	}
                }
                
                if(null != row.getCell(26)){
                	String sex = getValue(row.getCell(26));
                	if(sex != null && !sex.equals("女") && !sex.equals("男")){
                		res = "用户导入失败！第"+(i+1)+"行的性别信息不正确!";
                		break;
                	}
                }
                
                
            }
        }
        catch (Exception e) {
        	e.printStackTrace();
        	res = "试题导入失败，请务必认真检查excel文件是否与模版相同！如仍有问题，请联系技术人员";
        } 
        return res;
	}
	
	
	@SuppressWarnings("static-access")
	private String getValue(HSSFCell hssfCell) {
		if (hssfCell.getCellType() == hssfCell.CELL_TYPE_BOOLEAN) {
			return String.valueOf(hssfCell.getBooleanCellValue());
		} else if (hssfCell.getCellType() == hssfCell.CELL_TYPE_NUMERIC) {
			return String.valueOf(hssfCell.getNumericCellValue());
		} else {
			return String.valueOf(hssfCell.getStringCellValue());
		}
	}

	public String vailPassword(){
		Integer userid = ((User)getSession().getAttribute("user")).getId();
		result = "suc";
		UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
		int count  = userMgr.getPassById(userid,MD5Encrypt.encrypt(oldpassword));
		if( 0 == count){
			result = "fail";
		}
		return SUCCESS;
	}
	
	public String getManagerUserList() throws Exception{
		pageInfo = pageInfo == null ? new UserPageInfo() : pageInfo;
		//屏蔽sa用户
		pageInfo.setF_id(0);
		pageInfo.setF_id_op(Filter.OPERATOR_NOT_EQ);
//		pageInfo.setF_isManager(1);
//		pageInfo.setF_isManager_op(Filter.OPERATOR_EQ);
		//用户状态
		if(!"".equals(this.isopen) && "3".equals(this.isopen)){
			pageInfo.setF_accountoverdate(new Date());
			pageInfo.setF_accountoverdate_op(Filter.OPERATOR_LESS_THEN);
		}else if(!"".equals(this.isopen)){
			pageInfo.setF_isopen(this.isopen);
		}else{
			this.isopen="10";
		}
		//用户名
		if(""!=searchName && null!= searchName){
			if ("name".equals(uinfo)) {
				pageInfo.setF_name(searchName);
			} else if("nickname".equals(uinfo)) {
				pageInfo.setF_nickname(searchName);
			}else if("realname".equals(uinfo)){
				pageInfo.setF_realname(searchName);
			}
		}
		user = (User) getSession().getAttribute("user");
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo);
//		List<Role> roleList = (List<Role>) this.getSession().getAttribute("roleList");
//		//根据用户是否具有全局角色判断用户查询部门的范围 
//		boolean isGlob = false;
//		Collection<Integer> list = new ArrayList<Integer>();
//		
//		for(int i=0;i<roleList.size();i++){
//			Role role = roleList.get(i);
//			if (1 == role.getIsglob()) {
//				isGlob = true;
//				break;
//			}
//		}
//		if(!isGlob){
//			List<Org> childOrg = new ArrayList<Org>();
//			childOrg = new OrgAction().getAllChildeOrg(childOrg,user.getOrgId());
//			list.add(user.getOrgId());
//			for(Org org : childOrg){
//				list.add(org.getId());
//			}
//		}
//		//查询部门下所属的子部门
//		if(null != orgId && !"".equals(orgId)){
//			list.removeAll(list);//清空 orgid 的list
//			list.add(Integer.parseInt(orgId));
//			List<Org> childOrg = new ArrayList<Org>();
//			childOrg = new OrgAction().getAllChildeOrg(childOrg,Integer.parseInt(orgId));
//			for(Org org : childOrg){
//				list.add(org.getId());
//			}
//		}
//		InFilter inf = FilterFactory.getInFilter("orgId", list, Filter.OPERATOR_IN);
//		sarchPageInfo.getFilter().addFilter(inf);
		
		UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
		//要查询的字段
		String properties = "id,name, nickname,realname,password,createdate,updatedate,isopen,orgId,orgName,accountoverdate,roleNames,importinfo1";
		if(null != sarchPageInfo.getPage() ){
			sarchPageInfo.getPage().setProperties(properties);
		}
		userList = userMgr.getUserList(sarchPageInfo);
		return SUCCESS;
	}
	
	public String downLoadDB() throws Exception{
		File dbdir = new File(ServletActionContext.getServletContext().getRealPath("dbfile"));
		File[] files = dbdir.listFiles();
		this.getRequest().setAttribute("dbfiles", files);
		return SUCCESS;
	}
	
	public String changePassWord() throws Exception{
		UserManager userMgr = (UserManager)SpringContextHolder.getBean(User.class);
		User us = (User) getSession().getAttribute("user");
		try {
			us.setPassword(MD5Encrypt.encrypt(userName));
			userMgr.updateUser(us);
			result = "succ";
		} catch (Exception e) {
			// TODO: handle exception
			result = "false";
		}
		return SUCCESS;
	}
	
	public UserPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(UserPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}

	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
	
	public String getSavePath() {
		
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public List<Org> getOrgList() {
		return orgList;
	}

	public void setOrgList(List<Org> orgList) {
		this.orgList = orgList;
	}

	public List<Role> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<Role> roleList) {
		this.roleList = roleList;
	}

	public List<UserRole> getUserRoleList() {
		return userRoleList;
	}

	public void setUserRoleList(List<UserRole> userRoleList) {
		this.userRoleList = userRoleList;
	}

	public String getSql() {
		return sql;
	}

	public void setSql(String sql) {
		this.sql = sql;
	}

	public String getGradeId() {
		return gradeId;
	}

	public void setGradeId(String gradeId) {
		this.gradeId = gradeId;
	}

	public String getOrgId() {
		return orgId;
	}

	public void setOrgId(String orgId) {
		this.orgId = orgId;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}

	public String getIsopen() {
		return isopen;
	}

	public void setIsopen(String isopen) {
		this.isopen = isopen;
	}

	public String getOutdate() {
		return outdate;
	}

	public void setOutdate(String outdate) {
		this.outdate = outdate;
	}

	public List<Org> getUserOrgList() {
		return userOrgList;
	}

	public void setUserOrgList(List<Org> userOrgList) {
		this.userOrgList = userOrgList;
	}

	public String getOrgTreeStr() {
		return orgTreeStr;
	}

	public void setOrgTreeStr(String orgTreeStr) {
		this.orgTreeStr = orgTreeStr;
	}

	public boolean isSuperRole() {
		return isSuperRole;
	}

	public void setSuperRole(boolean isSuperRole) {
		this.isSuperRole = isSuperRole;
	}

	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}

	public String getDisplayPath() {
		return displayPath;
	}

	public void setDisplayPath(String displayPath) {
		this.displayPath = displayPath;
	}

	public String getUinfo() {
		return uinfo;
	}

	public void setUinfo(String uinfo) {
		this.uinfo = uinfo;
	}

	public String getSearchName() {
		return searchName;
	}

	public void setSearchName(String searchName) {
		this.searchName = searchName;
	}

	public String getOpenState() {
		return openState;
	}

	public void setOpenState(String openState) {
		this.openState = openState;
	}

	public String getFileExist() {
		return fileExist;
	}

	public void setFileExist(String fileExist) {
		this.fileExist = fileExist;
	}

	public InputStream getUserStream() {
		return userStream;
	}

	public void setUserStream(InputStream userStream) {
		this.userStream = userStream;
	}

	public String getOldpassword() {
		return oldpassword;
	}

	public void setOldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}

	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}

	public Map<Integer, String> getGrademap() {
		return grademap;
	}

	public void setGrademap(Map<Integer, String> grademap) {
		this.grademap = grademap;
	}
	 
}
