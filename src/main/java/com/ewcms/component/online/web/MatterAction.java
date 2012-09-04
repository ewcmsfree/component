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
import com.ewcms.component.online.vo.Matter;
import com.ewcms.component.online.vo.Working;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 *
 * @author wangwei
 */
@Controller
public class MatterAction extends ActionSupport{

	private static final long serialVersionUID = 2326960346830541551L;

	private Working working;
    private Matter matter;
    private Integer organId;
    private Integer workingId;
    private List<Working> workings;
    private List<Working> position;
    
    @Autowired
    private OnlineService service;

    public Working getWorking() {
        return working;
    }

    public Matter getMatter() {
        return matter;
    }

    public Integer getWorkingId() {
        return workingId;
    }

    public void setWorkingId(Integer workingId) {
        this.workingId = workingId;
    }

    public Integer getOrganId() {
        return organId;
    }

    public void setOrganId(Integer organId) {
        this.organId = organId;
    }

    public List<Working> getWorkings() {
        return workings;
    }

    public List<Working> getPosition() {
        return position;
    }

    @Override
    public String execute(){
        position = service.getWorkingPosition(workingId);
        Integer  matterId = service.getMatterId(workingId);
        if(matterId != null){
            this.matter = service.getMatter(matterId);
            this.working = service.getWorking(workingId);
        }

        return SUCCESS;
    }
}
