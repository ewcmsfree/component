/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ewcms.component.hot.service;

import com.ewcms.component.hot.dao.HotDAO;
import com.ewcms.component.hot.vo.Hot;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author wangwei
 */
@Service
public class HotService {

    @Autowired
    private HotDAO dao;

    public String mainJSON(){
        List<Hot> hots = dao.findHot();
        if(hots.isEmpty()){
            return "[]";
        }
        
        StringBuilder builder = new StringBuilder();
        builder.append("[");
        for(Hot hot : hots){
            builder.append("{").append("\"title\":\"").append(hot.getTitle().substring(0,15)).append("\",");
            builder.append("\"url\":\"").append(hot.getUrl()).append("\"},");
        }
        builder.deleteCharAt(builder.length() -1);
        builder.append("]");

        return builder.toString();
    }
}
