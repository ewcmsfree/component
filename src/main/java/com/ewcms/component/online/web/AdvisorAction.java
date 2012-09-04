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

import com.ewcms.component.auth.AuthUtil;
import com.ewcms.component.auth.vo.User;
import com.ewcms.component.auth.web.LoginAction;
import com.ewcms.component.online.service.OnlineService;
import com.ewcms.component.online.vo.Advisor;
import com.ewcms.component.online.vo.Working;
import com.ewcms.component.util.Struts2Util;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 *
 * @author wangwei
 */
@Controller
public class AdvisorAction extends LoginAction {

	private static final long serialVersionUID = 5026276432881452389L;

	private Integer workingId;
    private Integer organId;
    private Advisor advisor;
    @Autowired
    private OnlineService service;

    
    public Advisor getAdvisor() {
        return advisor;
    }

    public void setAdvisor(Advisor advisor){
        this.advisor = advisor;
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

    public boolean isLogin() {
        return AuthUtil.isLogin();
    }

    public User getUser() {
        return AuthUtil.getUser();
    }

    public Working getWorking() {
        return this.service.getWorking(workingId);
    }

    public List<Working> getPosition() {
        return service.getWorkingPosition(workingId);
    }

    @Override
    public String execute() {
        if (isLogin()) {
            if (!this.validateCheckcode()) {
                this.addActionError("验证码错误！");
                super.setCheckcode("");
                return INPUT;
            }
        } else {
            if (!login()) {
                return INPUT;
            }
        }
        int matterId =  this.service.getMatterId(workingId);
        advisor.setMatterId(matterId);
        advisor.setOrganId(organId);
        advisor.setUsername(getUser().getUsername());
        advisor.setName(getUser().getName());
        advisor.setIp(Struts2Util.getIp());
        service.addAdvisor(advisor);

        advisor = new Advisor();
        super.setCheckcode("");
        this.addActionMessage("咨询成功，请等待回复。");
        return SUCCESS;
    }

    private boolean login() {
        String state = super.execute();
        return state.equals(SUCCESS);
    }
}
