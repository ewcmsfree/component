package com.ewcms.component.gwh.vo;

import java.io.Serializable;

public class ChannelVO implements Serializable {
	private Integer id;
	private String channelName;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getChannelName() {
		return channelName;
	}
	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}
	
}
