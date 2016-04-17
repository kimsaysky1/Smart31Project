package org.javatree.www.VO;

public class Interest {
	private int interest_purejava=1;
	private int interest_web=2;
	private int interest_mobile=3;
	private int interest_iot=4;
	private int interest_swing=5;
	private int interest_jdbc=6;
	private int interest_api=7;
	private int interest_spring=8;
	private int interest_struts=9;
	private int interest_etcframework=10;
	private int interest_etc=11;
	private String id;
	private String typeno;
	
	public Interest() {
	}
	public Interest(int interest_purejava, int interest_web, int interest_mobile, int interest_iot, int interest_swing,
			int interest_jdbc, int interest_api, int interest_spring, int interest_struts, int interest_etcframework,
			int interest_etc) {
		super();
		this.interest_purejava = interest_purejava;
		this.interest_web = interest_web;
		this.interest_mobile = interest_mobile;
		this.interest_iot = interest_iot;
		this.interest_swing = interest_swing;
		this.interest_jdbc = interest_jdbc;
		this.interest_api = interest_api;
		this.interest_spring = interest_spring;
		this.interest_struts = interest_struts;
		this.interest_etcframework = interest_etcframework;
		this.interest_etc = interest_etc;
	}
	public int getInterest_purejava() {
		return interest_purejava;
	}
	public void setInterest_purejava(int interest_purejava) {
		this.interest_purejava = interest_purejava;
	}
	public int getInterest_web() {
		return interest_web;
	}
	public void setInterest_web(int interest_web) {
		this.interest_web = interest_web;
	}
	public int getInterest_mobile() {
		return interest_mobile;
	}
	public void setInterest_mobile(int interest_mobile) {
		this.interest_mobile = interest_mobile;
	}
	public int getInterest_iot() {
		return interest_iot;
	}
	public void setInterest_iot(int interest_iot) {
		this.interest_iot = interest_iot;
	}
	public int getInterest_swing() {
		return interest_swing;
	}
	public void setInterest_swing(int interest_swing) {
		this.interest_swing = interest_swing;
	}
	public int getInterest_jdbc() {
		return interest_jdbc;
	}
	public void setInterest_jdbc(int interest_jdbc) {
		this.interest_jdbc = interest_jdbc;
	}
	public int getInterest_api() {
		return interest_api;
	}
	public void setInterest_api(int interest_api) {
		this.interest_api = interest_api;
	}
	public int getInterest_spring() {
		return interest_spring;
	}
	public void setInterest_spring(int interest_spring) {
		this.interest_spring = interest_spring;
	}
	public int getInterest_struts() {
		return interest_struts;
	}
	public void setInterest_struts(int interest_struts) {
		this.interest_struts = interest_struts;
	}
	public int getInterest_etcframework() {
		return interest_etcframework;
	}
	public void setInterest_etcframework(int interest_etcframework) {
		this.interest_etcframework = interest_etcframework;
	}
	public int getInterest_etc() {
		return interest_etc;
	}
	public void setInterest_etc(int interest_etc) {
		this.interest_etc = interest_etc;
	}
	
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTypeno() {
		return typeno;
	}
	public void setTypeno(String typeno) {
		this.typeno = typeno;
	}
	@Override
	public String toString() {
		return "Interest [interest_purejava=" + interest_purejava + ", interest_web=" + interest_web
				+ ", interest_mobile=" + interest_mobile + ", interest_iot=" + interest_iot + ", interest_swing="
				+ interest_swing + ", interest_jdbc=" + interest_jdbc + ", interest_api=" + interest_api
				+ ", interest_spring=" + interest_spring + ", interest_struts=" + interest_struts
				+ ", interest_etcframework=" + interest_etcframework + ", interest_etc=" + interest_etc + "]";
	}





}
	
	
