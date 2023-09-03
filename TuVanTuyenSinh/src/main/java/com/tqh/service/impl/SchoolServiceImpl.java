/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.service.impl;

import com.cloudinary.Cloudinary;
import com.tqh.pojo.School;
import com.tqh.repository.SchoolRepository;
import com.tqh.service.SchoolService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author HP
 */
@Service
public class SchoolServiceImpl implements SchoolService {

    @Autowired
    private SchoolRepository schoolRepo;
    @Autowired
    private Cloudinary cloudinary;

    @Override
    public List<School> getSchool(Map<String, String> params) {
        return this.schoolRepo.getSchool(params);
    }

    @Override
    public Long countSchool() {
         return this.schoolRepo.countSchool();
    }

    @Override
    public boolean addOrUpdateSChool(School b) {
         return this.schoolRepo.addOrUpdateSChool(b);
    }

    @Override
    public boolean deleteSchool(int id) {
         return this.schoolRepo.deleteSchool(id);
    }

    @Override
    public School getSchoolById(int id) {
        return this.schoolRepo.getSchoolById(id);
    }

   

}
