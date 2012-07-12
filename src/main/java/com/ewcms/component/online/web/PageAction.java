/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ewcms.component.online.web;

import com.ewcms.component.vo.Page;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author wangwei
 */
public class PageAction extends ActionSupport {

    protected int pageNumber = 0;
    protected Page page;
    protected int row = 10;

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public Page getPage() {
        return this.page;
    }

    protected List pageList(final List all, final Page p) {
        int number = p.getPage() - 1;
        int size = p.getPageSize();
        int from = number * size;
        int allSize = all.size();
        if (from > allSize) {
            return new ArrayList();
        }
        int to = (number + 1) * size;
        to = to > allSize ? allSize : to;
        return all.subList(from, to);
    }
}
