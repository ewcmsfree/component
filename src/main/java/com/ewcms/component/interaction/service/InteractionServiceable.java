/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ewcms.component.interaction.service;

import com.ewcms.component.interaction.vo.Interaction;
import com.ewcms.component.interaction.vo.Organ;
import com.ewcms.component.interaction.vo.Speak;
import java.util.List;

/**
 *
 * @author wangwei
 */
public interface InteractionServiceable {

    public Integer addInteraction(Interaction vo);

    public Interaction getInteraction(Integer id);

    public void incrementInteractionCounter(int id);

    public List<Interaction> findInteractionByUsername(String username, int page, int row);

    public List<Interaction> findInteraction(int page, int row, Integer type);

    public List<Interaction> findInteractionByReplay(boolean replay, int page, int rows);

    public int getInteractionCount();

    public int getInteractionReplayCount(boolean replay);

    public int getInteractionUsernameCount(String username);

    public List<Organ> getOrganChildren(final Integer id);

    public void addSpeak(Speak vo);

    public List<Speak> findSpeakByInteractionId(int interactionId, String username, int page, int row);

    public int getSpeakCount(int interactionId, String username);

    public List<Interaction> findHotInteraction(int row);

    public List<Organ> findInteractionBackOrder(int row, boolean desc);

    public List<Interaction> findInteractionByTitle(String[] title, int page, int row);

    public List<Interaction> findInteractionByTitleReplay(String[] title, boolean replay, int page, int row);

    public int findInteractionByTitleCount(String[] title);

    public int findInteractionByTitleReplayCount(String[] title, boolean replay);

    public List<Interaction> findInteractionByOrganId(int organId);

    public Organ getOrgan(Integer id);

    public String mainJSON(Integer type);
}
