/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.service;

import com.tqh.pojo.Faculty;
import java.util.List;

/**
 *
 * @author HP
 */
public interface  FacultyService {
    List<Faculty> getFaculties();
    Faculty getFacultyById(int id);
}
