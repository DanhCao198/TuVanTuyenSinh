/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.tqh.repository;

import com.tqh.pojo.Users;
import java.util.Map;

/**
 *
 * @author Admin
 */
public interface UserRepository {
    
    Users getUserByUsername(String username);
    boolean authUser(String username, String password);
    Users addUser(Users user);
    boolean addOrUpdateUser(Users user);
    boolean checkLoginUser(String username);
}
