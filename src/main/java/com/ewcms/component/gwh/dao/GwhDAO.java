package com.ewcms.component.gwh.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.ewcms.component.gwh.vo.ArticleVO;
import com.ewcms.component.gwh.vo.ChannelVO;

@Repository
public class GwhDAO {
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }	
    public List<ChannelVO> findChannelList() {
        String sql = "Select * "
                + "From site_channel "
        		+ "where type=? ";
        Object[] params = new Object[]{"RETRIEVAL"};
        List<ChannelVO> list = jdbcTemplate.query(sql, params, new RowMapper<ChannelVO>() {

            @Override
            public ChannelVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                return channelRowMapper(rs);
            }
        });
        return list;
    }  
    
    private ChannelVO channelRowMapper(ResultSet rs) throws SQLException {
    	ChannelVO vo = new ChannelVO();
    	vo.setId(rs.getInt("id"));
    	vo.setChannelName(rs.getString("name"));
        return vo;
    }
    
    public List<ArticleVO> findGwhArticleList(String beginDate,String endDate,String searchChannel,String searchRange,String searchKey){
    	if(beginDate == null || beginDate.length()==0)beginDate="1950-01-01";
    	if(endDate == null || endDate.length()==0)endDate="2050-01-01";
    	searchKey = "%"+searchKey + "%";
    	
    	String channelSql = " ";
    	if (searchChannel != null && searchChannel.trim().length() > 0){
    		channelSql = " And t2.channel_id=? ";
    	}
    	
    	if(searchRange.equals("1")){
            String sql = "Select * "
                    + "From content_article as t1,content_article_main as t2 "
            		+ "where t1.id=t2.article_id " + channelSql + " and t1.title like ? and t1.published>='"+beginDate+"' and t1.published<='"+endDate +"'";
            Object[] params = null;
            if (channelSql.length() == 0){
            	params = new Object[]{searchKey};
            }else{
            	params = new Object[]{searchChannel,searchKey};
            }
            
            List<ArticleVO> list = jdbcTemplate.query(sql, params, new RowMapper<ArticleVO>() {

                @Override
                public ArticleVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                    return articleRowMapper(rs);
                }
            });
            return list;    		
    	}
    	
    	if(searchRange.equals("2")){
            String sql = "Select * "
                    + "From content_article as t1,content_article_main as t2 ,content_content as t3 "
            		+ "where t1.id=t2.article_id and t1.id=t3.article_id " + channelSql + " and t3.detail like ? and t1.published>='"+beginDate+"' and t1.published<='"+endDate +"'";
            Object[] params = null;
            if (channelSql.length() == 0){
            	params = new Object[]{searchKey};
            }else{
            	params = new Object[]{searchChannel,searchKey};
            }
            List<ArticleVO> list = jdbcTemplate.query(sql, params, new RowMapper<ArticleVO>() {
                @Override
                public ArticleVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                    return articleRowMapper(rs);
                }
            });
            return list;      		
    	}
    	if(searchRange.equals("3")){
            String sql = "Select * "
                    + "From content_article as t1,content_article_main as t2 "
            		+ "where t1.id=t2.article_id and " + channelSql + " and t1.sub_title like ? and t1.published>='"+beginDate+"' and t1.published<='"+endDate +"'";
            Object[] params = null;
            if (channelSql.length() == 0){
            	params = new Object[]{searchKey};
            }else{
            	params = new Object[]{searchChannel,searchKey};
            }
            List<ArticleVO> list = jdbcTemplate.query(sql, params, new RowMapper<ArticleVO>() {
                @Override
                public ArticleVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                    return articleRowMapper(rs);
                }
            });
            return list;  
    		
    	}    	
    	return null;
    }
    
    private ArticleVO articleRowMapper(ResultSet rs) throws SQLException {
    	ArticleVO vo = new ArticleVO();
    	vo.setTitle(rs.getString("title"));
    	vo.setUrl(rs.getString("url"));
        return vo;
    }
}
