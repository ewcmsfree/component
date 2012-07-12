/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ewcms.component.counter.dao;

import com.ewcms.component.counter.vo.Counter;

/**
 *
 * @author wangwei
 */
public interface CounterDAOable {

    public void updCount(int article);

    public Integer getCount(int article);

    public void addCountLog(Counter log);

}
