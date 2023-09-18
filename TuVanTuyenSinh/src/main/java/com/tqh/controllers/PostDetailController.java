/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.controllers;

import com.tqh.pojo.Comment;
import com.tqh.pojo.Post;
import com.tqh.service.CommentService;
import com.tqh.service.PostService;
import java.util.Map;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author HP
 */
@Controller
@ControllerAdvice
@PropertySource("classpath:configs.properties")
public class PostDetailController {

    @Autowired
    private PostService postService;
    @Autowired
    private CommentService commentService;


    @GetMapping("/postdetail/{id}")
    public String update(Model model, @PathVariable(value = "id") int id, Map<String, String> params) {
        model.addAttribute("comment", this.commentService.getComments(params));
        model.addAttribute("post", this.postService.getPostById(id));
        model.addAttribute("comments", new Comment());
        return "postdetail";
    }

    @PostMapping("/postdetail/{id}/comment/")
    public String add(@PathVariable(value = "id") int id,
            @ModelAttribute(value = "comments") @Valid Comment c,
            BindingResult rs) {
        Post p = this.postService.getPostById(id);
        if (!rs.hasErrors()) {
            if (commentService.addComment(c, p) == true) {
                return "redirect:/postdetail/" + id;
            }
        }
        return "postdetail";
    }
}
