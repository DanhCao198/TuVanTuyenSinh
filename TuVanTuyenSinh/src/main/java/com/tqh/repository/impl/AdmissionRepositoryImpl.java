/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.repository.impl;

import com.tqh.pojo.Admission;
import com.tqh.repository.AdmissionRepository;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Admin
 */
@Repository
@Transactional
public class AdmissionRepositoryImpl implements AdmissionRepository{
    @Autowired
    private LocalSessionFactoryBean factory;
    
    @Override
    public List<Admission> getAdmissions(){
        Session s = this.factory.getObject().getCurrentSession();
        Query q = s.createQuery("FROM Admission");
        return q.getResultList();
    }

    @Override
    public Admission getAdmissionById(int id) {
        Session s = this.factory.getObject().getCurrentSession();
        return s.get(Admission.class, id);
    }
    
}
