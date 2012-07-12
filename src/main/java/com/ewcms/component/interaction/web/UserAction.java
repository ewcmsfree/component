/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ewcms.component.interaction.web;

import com.ewcms.component.auth.AuthUtil;
import com.ewcms.component.auth.vo.User;
import com.ewcms.component.interaction.service.InteractionServiceable;
import com.ewcms.component.interaction.vo.Interaction;
import com.ewcms.component.vo.Page;
import com.ewcms.component.interaction.vo.Speak;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 *
 * @author wangwei
 */
@Controller
public class UserAction extends ActionSupport {

    private static final int DEFAULT_ROW = 10;
    private int pageNumber = 0;
    private Page page;
    private List<Interaction> interactions;
    private int row = DEFAULT_ROW;
    @Autowired
    private InteractionServiceable interactionService;

    public List<Interaction> getInteractions() {
        return interactions;
    }

    public void setInteractionService(InteractionServiceable service) {
        this.interactionService = service;
    }

    public Page getPage() {
        return page;
    }

    public void setPage(Page page) {
        this.page = page;
    }

    public int getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public User getUser() {
        return AuthUtil.getUser();
    }

    @Override
    public String execute() {

        String username = AuthUtil.getUser().getUsername();
        interactions = interactionService.findInteractionByUsername(username, pageNumber, DEFAULT_ROW);
        int count = interactionService.getInteractionUsernameCount(username);
        for (Interaction inter : interactions) {
            int speakCount = interactionService.getSpeakCount(inter.getId(), username);
            if (speakCount == 0) {
                inter.setSpeakCount(speakCount);
                inter.setSpeaks(new ArrayList<Speak>());
            } else {
                inter.setSpeakCount(speakCount);
            }
        }

        page = new Page.Builder(count, pageNumber + 1).setPageSize(row).build();

        return SUCCESS;
    }
}
