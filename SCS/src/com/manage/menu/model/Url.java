package com.manage.menu.model;

import com.manage.menu.model.original.UrlAbstract;

public class Url extends UrlAbstract {

	public Url(){
		
	}

	public Url(Integer id , Integer mlid, String url){
		this.id = id;
		this.mlid = mlid;
		this.mlurl = url;
	}
}
