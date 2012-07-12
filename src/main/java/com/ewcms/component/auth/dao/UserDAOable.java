/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ewcms.component.auth.dao;

import com.ewcms.component.auth.vo.User;
import com.ewcms.component.auth.vo.UserInfo;

/**
 *
 * @author wangwei
 */
public interface UserDAOable {

    public void addUser(User user);

    public User getUser(String username);

    public void updUserInfo(UserInfo userInfo);

    public UserInfo getUserInfo(String username);

    public void updPassword(String username,String password);

    public void invalidateUser(String username);

    public boolean userExist(String username);
}
