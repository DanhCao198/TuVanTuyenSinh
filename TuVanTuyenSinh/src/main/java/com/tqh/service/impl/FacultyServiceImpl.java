/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.service.impl;

import com.tqh.pojo.Faculty;
import com.tqh.repository.FacultyRepository;
import com.tqh.service.FacultyService;
import java.util.List;
import java.util.Map;
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
    public Faculty getFacultyById(int id) {
        return this.facultyRepo.getFacultyById(id);
    }

    @Override
    public List<Faculty> getFalcuties(Map<String, String> params) {
       return this.facultyRepo.getFalcuties(params);
    }

    @Override
    public Long countFaculty() {
       return this.facultyRepo.countFaculty();
    }

    @Override
    public boolean addOrUpdateFaculty(Faculty p) {
      return this.facultyRepo.addOrUpdateFaculty(p);
    }

    @Override
    public boolean deleteFalcuty(int id) {
       return this.facultyRepo.deleteFalcuty(id);
    }
    
}
