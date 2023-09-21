/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.service;

import com.tqh.pojo.Comment;
import com.tqh.pojo.Livestreams;
import com.tqh.pojo.Post;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Admin
 */
public interface CommentService {

    List<Comment> getComments(Map<String, String> params);

    Comment getCommentById(int id);

    Long countComment(int id);

    boolean addComment(Comment c, Post p);

    boolean addCommentLivestream(Comment c, Livestreams l);
}
