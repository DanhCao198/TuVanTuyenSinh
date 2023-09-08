/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.service;

import java.util.ArrayList;
import java.util.Map;

/**
 *
 * @author HP
 */
public interface MailService {

    void sendSimpleMessage(String fileNameTMP, ArrayList<String> emailsTMP);

    void sendHtmlMessage(String to, String subject, String htmlBody);

    void sendEmail(String to, String subject, Map<String, Object> model);

    String geFreeMarkerTemplateContent(Map<String, Object> model);
}
