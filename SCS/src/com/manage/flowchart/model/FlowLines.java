package com.manage.flowchart.model;

/**
 * 流程图 线
 * @author GuoFeng
 *
 */
public class FlowLines {
	
	private Integer id;
	
	private Integer fId;
	
	private String nId;
	
	private String type;
	
	private Integer M;
	
	private String from;
	
	private String to;
	
	private String name;
	
	private String marked;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getfId() {
		return fId;
	}

	public void setfId(Integer fId) {
		this.fId = fId;
	}

	public String getnId() {
		return nId;
	}

	public void setnId(String nId) {
		this.nId = nId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getM() {
		return M;
	}

	public void setM(Integer m) {
		M = m;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMarked() {
		return marked;
	}

	public void setMarked(String marked) {
		this.marked = marked;
	}

}
