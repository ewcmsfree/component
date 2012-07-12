/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ewcms.component.comment.dao;

import com.ewcms.component.comment.vo.Comment;
import com.ewcms.component.comment.vo.CommentCount;
import com.ewcms.component.comment.vo.Reply;
import java.util.List;

/**
 *
 * @author wangwei
 */
public interface CommentDAOable {

    public void addComment(Comment comment);

    public void addReply(Reply reply);

    public List<Comment> findCommentPage(int articleId,int page,int row);

    public CommentCount getCommentCount(int articleId);
}
