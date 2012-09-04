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
public class WorkingAction extends PageAction {

	private static final long serialVersionUID = 5072257413099687428L;

	private static final int DEFAULT_ROW = 12;
    private Integer workingId;
    private Integer parentId;
    private Working working;
    private Working parent;
    private List<Working> workings;
    private List<Working> matters;
    private List<Working> parents;
    
    @Autowired
    private OnlineService service;

    public Working getParent() {
        return parent;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public Integer getWorkingId() {
        return workingId;
    }

    public void setWorkingId(Integer workingId) {
        this.workingId = workingId;
    }

    public Working getWorking() {
        return working;
    }

    public List<Working> getWorkings() {
        return workings;
    }

    public void setOnlineService(OnlineService service) {
        this.service = service;
    }

    public List<Citizen> getCitizens() {
        return service.getCitizenAll();
    }

    public List<Working> getMatters() {
        return this.matters;
    }

    public List<Working> getParents() {
        return parents;
    }
    
    @SuppressWarnings("unchecked")
	@Override
    public String execute() {
        row = DEFAULT_ROW;
        parents = service.getWorkingChilren(null);
        this.parent = service.getWorking(parentId);
        parents.remove(parent);
        this.workings = service.getWorkingChilren(parentId);
        if (workings.isEmpty()) {
            return SUCCESS;
        }
        workingId = (workingId == null ? workings.get(0).getId() : workingId);
        working = service.getWorking(workingId);

        List<Working> matterAll = service.getMatterChildren(workingId);
        page = new Page.Builder(matterAll.size(), pageNumber + 1).setPageSize(row).build();
        matters = pageList(matterAll, page);
        
        return SUCCESS;
    }
}
