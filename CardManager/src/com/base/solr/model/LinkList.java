/**
 * 
 */
package com.base.solr.model;

import java.util.ArrayList;
import java.util.List;

/**
 * @author lxh
 *
 */
public class LinkList {
	
	private int titleLength;
	
	private int descriptionLength;
	
	private String moreLink;
	
	private List<LinkModel> result = new ArrayList<LinkModel>();
	
	private int totalCount;

	public int getTitleLength() {
		return titleLength;
	}

	public void setTitleLength(int titleLength) {
		this.titleLength = titleLength;
	}
	
	public int getDescriptionLength() {
		return descriptionLength;
	}

	public void setDescriptionLength(int descriptionLength) {
		this.descriptionLength = descriptionLength;
	}

	public String getMoreLink() {
		return moreLink;
	}

	public void setMoreLink(String moreLink) {
		this.moreLink = moreLink;
	}

	public List<LinkModel> getResult() {
		return result;
	}

	public void setResult(List<LinkModel> result) {
		this.result = result;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	
}
