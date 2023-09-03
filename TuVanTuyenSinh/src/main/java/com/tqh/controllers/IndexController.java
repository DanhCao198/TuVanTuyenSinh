/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.controllers;

import com.tqh.pojo.Post;
import com.tqh.pojo.StaticClass;
import com.tqh.service.AdmissionService;
import com.tqh.service.FacultyService;
import com.tqh.service.PostService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
@ControllerAdvice
@PropertySource("classpath:configs.properties")
public class IndexController {

    @Autowired
    private PostService postService;
    @Autowired
    private Environment env;
    @Autowired
    private FacultyService facultyService;
    @Autowired
    private AdmissionService admissionService;

    @ModelAttribute
    public void commonAttr(Model model) {
        if (StaticClass.users != null) {
            model.addAttribute("user", StaticClass.users);
        }
        model.addAttribute("faculty", this.facultyService.getFaculties());
        model.addAttribute("admission", this.admissionService.getAdmissions());
    
    }

    @GetMapping("/admin/settings/")
    public String AdminSettings(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("posts", this.postService.getPosts(params));
        return "settings";
    }

    @RequestMapping("/")
    public String index(Model model, @RequestParam Map<String, String> params) {
        return "index";
    }
}
