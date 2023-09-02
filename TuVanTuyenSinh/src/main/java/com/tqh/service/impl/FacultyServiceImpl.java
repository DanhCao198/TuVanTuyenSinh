/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.service.impl;

import com.tqh.pojo.Faculty;
import com.tqh.repository.FacultyRepository;
import com.tqh.service.FacultyService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author HP
 */
@Service
public class FacultyServiceImpl implements FacultyService{
 @Autowired
    private FacultyRepository facultyRepo;
    @Override
    public List<Faculty> getFaculties() {
        return this.facultyRepo.getFalcuties();
    }

    @Override
    public Faculty getFacultyById(int id) {
        return this.facultyRepo.getFacultyById(id);
    }
    
}
