package com.tqh.controllers;

import com.tqh.service.AdmissionService;
import com.tqh.service.PostService;
import java.security.Principal;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
@ControllerAdvice
@PropertySource("classpath:configs.properties")
public class PostListController {

    @Autowired
    private AdmissionService admissionService;
    @Autowired
    private PostService postService;

    @GetMapping("/postlist/{id}")
    public String update(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("admissions", this.admissionService.getAdmissionById(id));
        return "postlist";
    }

}
