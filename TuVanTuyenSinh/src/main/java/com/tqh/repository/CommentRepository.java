/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.repository;

import com.tqh.pojo.Comment;
import com.tqh.pojo.Post;
import com.tqh.pojo.Users;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Admin
 */
public interface CommentRepository {

    List<Comment> getComments(Map<String, String> params);

    Comment getCommentById(int id);

    Long countComment(int id);

    boolean addComment(Comment c, Post p);

    List<Users> getU();
    
}
