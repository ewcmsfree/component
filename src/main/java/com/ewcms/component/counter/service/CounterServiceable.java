/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ewcms.component.counter.service;

import com.ewcms.component.counter.vo.Counter;

/**
 *
 * @author wangwei
 */
public interface CounterServiceable {

    public Integer writeCountLog(Counter count);
    
}
