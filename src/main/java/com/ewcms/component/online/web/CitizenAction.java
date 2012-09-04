/**
 * Copyright (c)2010-2011 Enterprise Website Content Management System(EWCMS), All rights reserved.
 * EWCMS PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 * http://www.ewcms.com
 */
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ewcms.component.online.web;

import com.ewcms.component.online.service.OnlineService;
import com.ewcms.component.online.vo.Article;
import com.ewcms.component.online.vo.Citizen;
import com.ewcms.component.online.vo.Working;
import com.ewcms.component.vo.Page;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 *
 * @author wangwei
 */
@Controller
public class CitizenAction extends PageAction {

	private static final long serialVersionUID = 9165624150125156068L;

	private static final int DEFAULT_ROW = 12;
    private Integer citizenId;
    private List<Working> matters;
    private List<Article> articles;
    private Citizen citizen;
    @Autowired
    private OnlineService service;

    public List<Article> getArticles() {
        return articles;
    }

    public void setArticles(List<Article> articles) {
        this.articles = articles;
    }

    public Integer getCitizenId() {
        return citizenId;
    }

    public void setCitizenId(Integer citizenId) {
        this.citizenId = citizenId;
    }

    public List<Working> getMatters() {
        return matters;
    }

    public void setMatters(List<Working> matters) {
        this.matters = matters;
    }

    public List<Citizen> getCitizens() {
        return constructCitizens();
    }

    private List<Citizen> constructCitizens() {

        List<Citizen> list = service.getCitizenAll();
        if (list.isEmpty()) {
            return list;
        }
        if((list.size() % 6) == 0){
            return list;
        }
        int clean = 6 - (list.size() % 6);
        for (int i = 0; i < clean; i++) {
            list.add(new Citizen());
        }
        return list;
    }

    public Citizen getCitizen() {
        return citizen;
    }

    @SuppressWarnings("unchecked")
	@Override
    public String execute() {
        row = DEFAULT_ROW;
        if (citizenId == null) {
            citizenId = service.getCitizenAll().get(0).getId();
        }
        citizen = service.getCitizen(citizenId);
        List<Working> matterAll = service.findWorkingByCitizen(citizenId);
        page = new Page.Builder(matterAll.size(), pageNumber + 1).setPageSize(row).build();
        matters = pageList(matterAll, page);

        return SUCCESS;
    }
}
