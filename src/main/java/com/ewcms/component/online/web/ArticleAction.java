/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ewcms.component.online.web;

import com.ewcms.component.online.service.OnlineService;
import com.ewcms.component.online.vo.Article;
import com.ewcms.component.online.vo.Working;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author wangwei
 */
public class ArticleAction extends ActionSupport {

	private static final long serialVersionUID = -4584114686737430118L;
	
	private Working working;
    private Integer organId;
    private Integer workingId;
    private Integer childId;
    private List<Article> articles;
    @Autowired
    private OnlineService service;

    public Integer getChildId() {
        return childId;
    }

    public void setChildId(Integer childId) {
        this.childId = childId;
    }

    public Integer getOrganId() {
        return organId;
    }

    public void setOrganId(Integer organId) {
        this.organId = organId;
    }

    public Integer getWorkingId() {
        return workingId;
    }

    public void setWorkingId(Integer workingId) {
        this.workingId = workingId;
    }

    public List<Article> getArticles() {
        return articles;
    }

    public Working getWorking() {
        return working;
    }

    public List<Working> getPosition() {
        return service.getWorkingPosition(workingId);
    }

    @Override
    public String execute() {
        articles = service.findAtricleByWorkingId(childId);
        working = service.getWorking(workingId);

        return SUCCESS;
    }
}
