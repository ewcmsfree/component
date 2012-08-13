/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ewcms.component.online.web;

import com.ewcms.component.auth.AuthUtil;
import com.ewcms.component.auth.vo.User;
import com.ewcms.component.online.service.OnlineService;
import com.ewcms.component.online.vo.Advisor;
import com.ewcms.component.vo.Page;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author wangwei
 */
public class UserAction extends PageAction {

	private static final long serialVersionUID = -3873722630471555850L;

	private List<Advisor> advisors;
    @Autowired
    private OnlineService service;

     public List<Advisor> getAdvisors() {
        return advisors;
    }

    public User getUser() {
        return AuthUtil.getUser();
    }

    @SuppressWarnings("unchecked")
	@Override
    public String execute(){
        User user = getUser();
        List<Advisor> all = service.findAdvisorByUsernam(user.getUsername());
        page = new Page.Builder(all.size(), pageNumber + 1).setPageSize(row).build();
        advisors = pageList(all, page);

        return SUCCESS;
    }
}
