package com.ewcms.component.gwh.service;

import java.util.List;

import com.ewcms.component.gwh.vo.ArticleVO;
import com.ewcms.component.gwh.vo.ChannelVO;

public interface GwhSerivceable {
	public List<ChannelVO> findChannelList();
	 public List<ArticleVO> findGwhArticleList(String beginDate,String endDate,String searchChannel,String searchRange,String searchKey);
}
