/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.controllers;

import com.tqh.pojo.School;
import com.tqh.service.SchoolService;
import java.security.Principal;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author HP
 */
@Controller
public class SchoolController {
    @Autowired
    private SchoolService schoolService;
    
    @GetMapping("/school")
    public String list(Model model, Principal p) {
        model.addAttribute("school", new School());
        return "school";
    }
    @GetMapping("/school/{id}")
    public String update(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("school", this.schoolService.getSchoolById(id));
        return "school";
    }
     @PostMapping("/school")
    public String add(@ModelAttribute(value = "school") @Valid School b,
            BindingResult rs) {
        if (!rs.hasErrors()) {
            if (schoolService.addOrUpdateSChool(b) == true) {
                return "redirect:/";
            }
        }

        return "banners";
    }
    
}
