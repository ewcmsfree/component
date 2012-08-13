/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ewcms.component.online.web;

import com.ewcms.component.online.service.OnlineService;
import com.ewcms.component.online.vo.Advisor;
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
public class AdvisorSearchAction extends PageAction {

	private static final long serialVersionUID = 6887179447170182042L;

	private Integer organId;
    private Integer workingId;
    private String title;
    private List<Advisor> advisors;
    @Autowired
    private OnlineService service;

    public Integer getOrganId() {
        return organId;
    }

    public void setOrganId(Integer organId) {
        this.organId = organId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List<Advisor> getAdvisors() {
        return advisors;
    }

    public Integer getWorkingId() {
        return workingId;
    }

    public void setWorkingId(Integer workingId) {
        this.workingId = workingId;
    }

    public Working getWorking() {
        return this.service.getWorking(workingId);
    }

    public List<Working> getPosition() {
        return service.getWorkingPosition(workingId);
    }

    @SuppressWarnings("unchecked")
	@Override
    public String execute() {
        Integer matterId = service.getMatterId(workingId);
        if (matterId != null) {
            List<Advisor> all = service.findAdvisorByMatter(matterId, title);
            page = new Page.Builder(all.size(), pageNumber + 1).setPageSize(row).build();
            advisors = pageList(all, page);
        }

        return SUCCESS;
    }
}
