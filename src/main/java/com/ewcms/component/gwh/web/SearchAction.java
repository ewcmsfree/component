package com.ewcms.component.gwh.web;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.ewcms.component.gwh.service.GwhSerivceable;
import com.ewcms.component.gwh.vo.ChannelVO;
import com.opensymphony.xwork2.ActionSupport;

public class SearchAction extends ActionSupport {
	@Autowired
	private GwhSerivceable gwhService;
	public List<ChannelVO> getGwhChannelList(){
		return gwhService.findChannelList();
	}
}
