/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ewcms.component.auth.web;

import com.ewcms.component.auth.AuthUtil;
import com.ewcms.component.util.Struts2Util;

/**
 *
 * @author wangwei
 */
public class LogoutAction {
    
    public void logout(){
        AuthUtil.clearUser();
        Struts2Util.renderJson("{\"success\":true}");
    }
}
