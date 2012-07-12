/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ewcms.component.interaction.web;

import com.ewcms.component.auth.AuthUtil;
import com.ewcms.component.auth.vo.User;
import com.ewcms.component.auth.web.LoginAction;
import com.ewcms.component.interaction.service.InteractionServiceable;
import com.ewcms.component.interaction.vo.Speak;
import com.ewcms.component.util.Struts2Util;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author wangwei
 */
public class SpeakAction extends LoginAction {

    private static final String refreshHtml;

    private Integer interactionId;
    private String content;
    private String eventOP;

    static{
        StringBuilder builder = new StringBuilder();
        builder.append("<html>\n");
        builder.append("<head></head>");
        builder.append("<body>");
        builder.append("<script language=\"JavaScript\" type=\"text/JavaScript\">");
        builder.append("parent.refresh();");
        builder.append("</script>");
        builder.append("</body>");
        builder.append("</html>");

        refreshHtml = builder.toString();
    }

    @Autowired
    private InteractionServiceable interactionService;

    public Integer getInteractionId() {
        return interactionId;
    }

    public void setInteractionId(Integer interactionId) {
        this.interactionId = interactionId;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getContent() {
        return this.content;
    }

    public boolean isLogin() {
        return AuthUtil.isLogin();
    }

    public User getUser() {
        return AuthUtil.getUser();
    }

    public void setEventOP(String eventOP){
        this.eventOP = eventOP;
    }

    @Override
    public String execute() {
        
        if (isLogin()) {
            if (!this.validateCheckcode()) {
                this.addActionError("验证码错误！");
                return INPUT;
            }
        } else {
            if (!login()) {
                return INPUT;
            }
        }

        Speak speak = new Speak();
        speak.setChecked(false);
        speak.setContent(content);
        speak.setInteractionId(interactionId);
        speak.setUsername(getUser().getUsername());
        speak.setName(getUser().getName());
        speak.setIp(Struts2Util.getIp());

        interactionService.addSpeak(speak);
        content = "";
        Struts2Util.renderHtml(refreshHtml);
        return NONE;
    }

    private boolean login() {
        String state = super.execute();
        return state.equals(SUCCESS);
    }
}
