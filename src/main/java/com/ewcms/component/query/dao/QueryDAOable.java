package com.ewcms.component.query.dao;

import java.util.List;

import com.ewcms.component.query.vo.Article;

public interface QueryDAOable {

	List<Article> findArtilce(String title, Integer channelId, String beginDate, String endDate, Boolean isContent);
}
