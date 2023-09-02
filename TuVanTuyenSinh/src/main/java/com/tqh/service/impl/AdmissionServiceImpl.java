/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.service.impl;

import com.tqh.pojo.Admission;
import com.tqh.repository.AdmissionRepository;
import com.tqh.service.AdmissionService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */
@Service
public class AdmissionServiceImpl implements AdmissionService{
    @Autowired
    private AdmissionRepository admissionRepo;
    
    @Override
    public List<Admission> getAdmissions() {
        return this.admissionRepo.getAdmissions();
    }

    @Override
    public Admission getAdmissionById(int id) {
       return this.admissionRepo.getAdmissionById(id);
    }
    
    
}
