/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.tqh.service;

import com.tqh.pojo.Admission;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface AdmissionService {
    List<Admission> getAdmissions();
    Admission getAdmissionById(int id);
}
