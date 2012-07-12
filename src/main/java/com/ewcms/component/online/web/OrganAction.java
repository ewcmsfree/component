/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ewcms.component.online.web;

import com.ewcms.component.online.service.OnlineService;
import com.ewcms.component.online.vo.Citizen;
import com.ewcms.component.online.vo.Organ;
import com.ewcms.component.online.vo.Working;
import com.ewcms.component.vo.Page;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 *
 * @author wangwei
 */
@Controller("com.ewcms.component.online.web.OrganAction")
public class OrganAction extends PageAction {

    private static final int DEFAULT_ROW = 12;
    private List<Organ> organs;
    private List<Working> matters;
    private Organ organ;
    private Integer organId;
    private List<Working> parents;
    @Autowired
    private OnlineService service;

    public List<Working> getMatters() {
        return matters;
    }

    public List<Organ> getOrgans() {
        return organs;
    }

    public Organ getOrgan() {
        return organ;
    }

    public void setOrganId(Integer organId) {
        this.organId = organId;
    }

    public List<Working> getParents() {
        return parents;
    }

    public List<Citizen> getCitizens() {
        return service.getCitizenAll();
    }

    @Override
    public String execute() {
        row = DEFAULT_ROW;
        organs = service.findOrganForWorking();
        if (organId == null) {
            List<Organ> list = service.findOrganForWorking();
            if (list.isEmpty()) {
                return SUCCESS;
            }
            organId = list.get(0).getId();
        }
        organ = service.getOrgan(organId);
        if (organ == null) {
            matters = new ArrayList<Working>();
            return SUCCESS;
        }
        parents = service.getWorkingChilren(null);
        List<Working> matterAll = service.findWorkingByOrgan(organId);
        page = new Page.Builder(matterAll.size(), pageNumber + 1).setPageSize(row).build();
        matters = pageList(matterAll, page);

        return SUCCESS;

    }
}
