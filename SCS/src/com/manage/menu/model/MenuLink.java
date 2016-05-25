package com.manage.menu.model;

import com.manage.menu.model.original.MenuLinkAbstract;


public class MenuLink extends MenuLinkAbstract {

	
	
	public MenuLink(){
		
	}
	/** ���ӹ��췽�� */
	public MenuLink(Integer id ,String displayRef,String linkUrl,
			Integer orderNum, Menu menu) {
		this.id = id;
		this.displayRef = displayRef;
		this.linkUrl = linkUrl;
		this.orderNum = orderNum;
		this.menu = menu;
	}
	
}