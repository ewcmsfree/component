/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ewcms.component.comment.vo;

import java.sql.Timestamp;

/**
 *
 * @author wangwei
 */
public class Reply extends Comment {
    private Long commentId;

    public Long getCommentId() {
        return commentId;
    }

    public void setCommentId(Long commentId) {
        this.commentId = commentId;
    }
}
