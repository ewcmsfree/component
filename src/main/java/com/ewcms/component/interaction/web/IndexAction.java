/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ewcms.component.interaction.web;

import com.ewcms.component.interaction.service.InteractionServiceable;
import com.ewcms.component.interaction.vo.Interaction;
import com.ewcms.component.interaction.vo.Organ;
import com.ewcms.component.vo.Page;
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
public class IndexAction extends ActionSupport {

	private static final long serialVersionUID = -1880649265523336141L;

	private final static int DEFAULT_ROW = 13;

    public enum FindType {

        ALL, REPLAY, NOREPLAY;
    }
    protected Integer type = 0;
    protected List<Interaction> interactions;
    protected int pageNumber;
    protected int row = DEFAULT_ROW;
    protected Page page;
    @Autowired
    protected InteractionServiceable interactionService;

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public Page getPage() {
        return this.page;
    }

    public List<Interaction> getInteractions() {
        return interactions;
    }

    public void setInteractionService(InteractionServiceable service) {
        this.interactionService = service;
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

        FindType findType = FindType.values()[type];

        interactions = findInteractions(findType);
        page = constractPage(findType);

        return SUCCESS;
    }

    private List<Interaction> findInteractions(FindType findType) {
        if (findType == FindType.ALL) {
            return interactionService.findInteraction(pageNumber, row, getType());
        }
        if (findType == FindType.REPLAY) {
            return interactionService.findInteractionByReplay(true, pageNumber, row);
        }
        if (findType == FindType.NOREPLAY) {
            return interactionService.findInteractionByReplay(false, pageNumber, row);
        }
        return new ArrayList<Interaction>();
    }

    private Page constractPage(FindType findType) {
        int count = 0;
        if (findType == FindType.ALL) {
            count = interactionService.getInteractionCount();
        }
        if (findType == FindType.REPLAY) {
            count = interactionService.getInteractionReplayCount(true);
        }
        if (findType == FindType.NOREPLAY) {
            count = interactionService.getInteractionReplayCount(false);
        }

        return new Page.Builder(count, pageNumber + 1).setPageSize(row).build();
    }
}
