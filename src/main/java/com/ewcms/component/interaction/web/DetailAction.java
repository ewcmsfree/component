/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ewcms.component.interaction.web;

import com.ewcms.component.auth.AuthUtil;
import com.ewcms.component.auth.vo.User;
import com.ewcms.component.auth.web.LoginAction;
import com.ewcms.component.interaction.service.InteractionServiceable;
import com.ewcms.component.interaction.vo.Interaction;
import com.ewcms.component.interaction.vo.Organ;
import com.ewcms.component.vo.Page;
import com.ewcms.component.interaction.vo.Speak;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 *
 * @author wangwei
 */
@Controller
public class DetailAction extends LoginAction {

    private final static int DEFAULT_ROW = 5;
    private Integer id;
    private boolean counter = true;
    private Interaction interaction;
    private int pageNumber = 0;
    private int row = DEFAULT_ROW;
    private Page page;
    @Autowired
    private InteractionServiceable interactionService;

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setCounter(boolean counter) {
        this.counter = counter;
    }

    public Interaction getInteraction() {
        return this.interaction;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public Page getPage() {
        return page;
    }

    public List<Organ> getBackRatios() {
        return interactionService.findInteractionBackOrder(8, true);
    }

    public List<Organ> getNoBackRatios() {
        return interactionService.findInteractionBackOrder(8, false);
    }

    public List<Interaction> getHots() {
        return interactionService.findHotInteraction(10);
    }

    @Override
    public String execute() {

        if (counter) {
            this.interactionService.incrementInteractionCounter(id);
        }

        interaction = interactionService.getInteraction(id);
        if (interaction == null || !interaction.getChecked()) {
            return ERROR;
        }

        User user = AuthUtil.getUser();
        String username = (user == null ? null : user.getUsername());
        int count = interactionService.getSpeakCount(id, username);
        if (count == 0) {
            interaction.setSpeakCount(count);
            interaction.setSpeaks(new ArrayList<Speak>());
        } else {
            interaction.setSpeakCount(count);
            interaction.setSpeaks(interactionService.findSpeakByInteractionId(
                    id, username, pageNumber, row));
        }

        page = new Page.Builder(count, pageNumber + 1).setPageSize(row).build();

        return SUCCESS;
    }
}
