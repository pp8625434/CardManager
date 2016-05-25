package com.manage.flowchart.model;

import java.util.List;

public class FlowchartPO {
	
	private String title;
	
	private List<FlowNodes> nodes;
	
	private List<FlowLines> lines;
	
	private String areas ;
	
	private Integer initNum ;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public List<FlowNodes> getNodes() {
		return nodes;
	}

	public void setNodes(List<FlowNodes> nodes) {
		this.nodes = nodes;
	}

	public List<FlowLines> getLines() {
		return lines;
	}

	public void setLines(List<FlowLines> lines) {
		this.lines = lines;
	}

	public String getAreas() {
		return areas;
	}

	public void setAreas(String areas) {
		this.areas = areas;
	}

	public Integer getInitNum() {
		return initNum;
	}

	public void setInitNum(Integer initNum) {
		this.initNum = initNum;
	}
	
	
	
}
