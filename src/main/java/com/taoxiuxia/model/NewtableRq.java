package com.taoxiuxia.model;

import com.taoxiuxia.util.PageIn;
import java.io.Serializable;
import java.util.Date;

/**
 * 带分页查询请求封装类-建议正式使用前先进行字段调整，删除不必要的字段
 * @author tools.49db.cn
 * @version 1.1
 * @date 2024-12-07
 */
public class NewtableRq extends PageIn implements Serializable {

	
	private Integer id;

	private String money;

	private String cid;

	private Date addTime;

	private String details;

	private String userId;

	private String type;

	

	private static final long serialVersionUID = 1L;

	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}
	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}
	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}
	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
}
