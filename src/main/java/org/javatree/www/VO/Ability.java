package org.javatree.www.VO;

public class Ability {
	private int ability_purejava=12;
	private int ability_web=13;
	private int ability_mobile=14;
	private int ability_iot=15;
	private int ability_swing=16;
	private int ability_jdbc=17;
	private int ability_api=18;
	private int ability_spring=19;
	private int ability_struts=20;
	private int ability_etcframework=21;
	private int ability_etc=22;
	
	private String id;
	private String typeno;
	
	
	public Ability() {
	}

	public Ability(int ability_purejava, int ability_web, int iability_mobile, int ability_iot, int ability_swing,
			int ability_jdbc, int ability_api, int ability_spring, int ability_struts, int ability_etcframework,
			int ability_etc) {
		super();
		this.ability_purejava = ability_purejava;
		this.ability_web = ability_web;
		this.ability_mobile = iability_mobile;
		this.ability_iot = ability_iot;
		this.ability_swing = ability_swing;
		this.ability_jdbc = ability_jdbc;
		this.ability_api = ability_api;
		this.ability_spring = ability_spring;
		this.ability_struts = ability_struts;
		this.ability_etcframework = ability_etcframework;
		this.ability_etc = ability_etc;
	}

	public int getAbility_purejava() {
		return ability_purejava;
	}

	public void setAbility_purejava(int ability_purejava) {
		this.ability_purejava = ability_purejava;
	}

	public int getAbility_web() {
		return ability_web;
	}

	public void setAbility_web(int ability_web) {
		this.ability_web = ability_web;
	}


	public int getAbility_iot() {
		return ability_iot;
	}

	public void setAbility_iot(int ability_iot) {
		this.ability_iot = ability_iot;
	}

	public int getAbility_swing() {
		return ability_swing;
	}

	public void setAbility_swing(int ability_swing) {
		this.ability_swing = ability_swing;
	}

	public int getAbility_jdbc() {
		return ability_jdbc;
	}

	public void setAbility_jdbc(int ability_jdbc) {
		this.ability_jdbc = ability_jdbc;
	}

	public int getAbility_api() {
		return ability_api;
	}

	public void setAbility_api(int ability_api) {
		this.ability_api = ability_api;
	}

	public int getAbility_spring() {
		return ability_spring;
	}

	public void setAbility_spring(int ability_spring) {
		this.ability_spring = ability_spring;
	}

	public int getAbility_struts() {
		return ability_struts;
	}

	public void setAbility_struts(int ability_struts) {
		this.ability_struts = ability_struts;
	}

	public int getAbility_etcframework() {
		return ability_etcframework;
	}

	public void setAbility_etcframework(int ability_etcframework) {
		this.ability_etcframework = ability_etcframework;
	}

	public int getAbility_etc() {
		return ability_etc;
	}

	public void setAbility_etc(int ability_etc) {
		this.ability_etc = ability_etc;
	}

	
	
	public int getAbility_mobile() {
		return ability_mobile;
	}

	public void setAbility_mobile(int ability_mobile) {
		this.ability_mobile = ability_mobile;
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
		return "Ability [ability_purejava=" + ability_purejava + ", ability_web=" + ability_web + ", iability_mobile="
				+ ability_mobile + ", ability_iot=" + ability_iot + ", ability_swing=" + ability_swing
				+ ", ability_jdbc=" + ability_jdbc + ", ability_api=" + ability_api + ", ability_spring="
				+ ability_spring + ", ability_struts=" + ability_struts + ", ability_etcframework="
				+ ability_etcframework + ", ability_etc=" + ability_etc + "]";
	}



}
	
	
