/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.service;

/**
 *
 * @author HP
 */

public interface ChatGPTService {
    String GPT(String message);
    String extractContentFromResponse(String response);
}
