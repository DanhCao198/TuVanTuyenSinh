/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.service.impl;

import com.tqh.pojo.Comment;
import com.tqh.pojo.Reply;
import com.tqh.repository.ReplyRepository;
import com.tqh.service.ReplyService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author HP
 */
@Service
public class ReplyServiceImpl implements ReplyService{
 @Autowired
    private ReplyRepository replyRepo;
    @Override
    public List<Reply> getReply(Map<String, String> params) {
           return this.replyRepo.getReply(params);
    }

    @Override
    public boolean addReply(Comment c, Reply r) {
        return this.replyRepo.addReply(c, r);
    }
    
}
