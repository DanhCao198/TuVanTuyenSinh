/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.service;

import com.tqh.pojo.Comment;
import com.tqh.pojo.Reply;
import java.util.List;
import java.util.Map;

/**
 *
 * @author HP
 */
public interface ReplyService {

    List<Reply> getReply(Map<String, String> params);
    boolean addReply(Comment c, Reply r);
}
