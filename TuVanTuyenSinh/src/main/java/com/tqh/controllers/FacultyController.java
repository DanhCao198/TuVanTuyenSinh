/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.controllers;

import com.tqh.pojo.Faculty;
import com.tqh.service.FacultyService;
import java.security.Principal;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author HP
 */
@RequestMapping("/admin")
@Controller
@PropertySource("classpath:configs.properties")
public class FacultyController {

    @Autowired
    private FacultyService facultyService;

    @GetMapping("/faculty")
    public String list(Model model, Principal p) {
        model.addAttribute("faculty", new Faculty());
        return "faculty";
    }

    @GetMapping("/faculty/{id}")
    public String update(Model model, @PathVariable(value = "id") int id) {
        model.addAttribute("faculty", this.facultyService.getFacultyById(id));
        return "faculty";
    }

    @PostMapping("/faculty")
    public String add(@ModelAttribute(value = "faculty") @Valid Faculty p,
            BindingResult rs) {
        if (!rs.hasErrors()) {
            if (facultyService.addOrUpdateFaculty(p) == true) {
                return "redirect:/";
            }
        }
        return "faculty";
    }

}
