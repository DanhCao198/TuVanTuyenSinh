/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.repository;

import com.tqh.pojo.Faculty;
import java.util.List;

/**
 *
 * @author HP
 */
public interface  FacultyRepository {
    List<Faculty> getFalcuties();
    Faculty getFacultyById(int id);
}
