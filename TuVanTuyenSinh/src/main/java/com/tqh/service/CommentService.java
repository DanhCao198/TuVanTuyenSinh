/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.service;

import com.tqh.pojo.Comment;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface CommentService {
    
    List<Comment> getComments(int postId);

    Comment addComment(Comment c);
}
