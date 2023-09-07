/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.controllers;

import com.tqh.pojo.StaticClass;
import com.tqh.service.AdmissionService;
import com.tqh.service.BannerService;
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
    @Autowired
    private BannerService bannerService;

    @ModelAttribute
    public void commonAttr(Model model, @RequestParam Map<String, String> params) {
        if (StaticClass.users != null) {
            model.addAttribute("user", StaticClass.users);

        }
        model.addAttribute("faculties", this.facultyService.getFalcuties(params));
        model.addAttribute("admission", this.admissionService.getAdmissions(params));
        model.addAttribute("posts", this.postService.getPosts(params));
        model.addAttribute("banner", this.bannerService.getBanners(params));
    }

    @GetMapping("/admin/settings/")
    public String AdminSettings(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("posts", this.postService.getPosts(params));
        return "settings";
    }

    @GetMapping("/admin/bannersetting/")
    public String AdminSettings1(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("banner", this.bannerService.getBanners(params));
        return "bannersetting";
    }

    @GetMapping("/admin/facultysetting/")
    public String AdminSetting2(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("faculty", this.facultyService.getFalcuties(params));
        return "facultysetting";
    }

    @RequestMapping("/")
    public String index(Model model, @RequestParam Map<String, String> params) {
        model.addAttribute("posts", this.postService.getPosts(params));
        int pageSize = Integer.parseInt(this.env.getProperty("PAGE_SIZE"));
        long count = this.postService.countPost();
        model.addAttribute("counter", Math.ceil(count * 1.0 / pageSize));
        return "index";
    }
}
