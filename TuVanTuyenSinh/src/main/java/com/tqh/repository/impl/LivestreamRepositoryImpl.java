/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.repository.impl;

import com.tqh.pojo.Livestreams;
import com.tqh.pojo.StaticClass;
import com.tqh.repository.LivestreamRepository;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author HP
 */
@Repository
@Transactional
@PropertySource("classpath:configs.properties")
public class LivestreamRepositoryImpl implements LivestreamRepository {

    @Autowired
    private LocalSessionFactoryBean factory;
    @Autowired
    private Environment env;

    @Autowired
    private SimpleDateFormat sdp;
    
    @Override
    public List<Livestreams> getLiveStreams(Map<String, String> params) {
       Session session = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Livestreams> q = b.createQuery(Livestreams.class);
        Root root = q.from(Livestreams.class);
        q.select(root);

        Query query = session.createQuery(q);

        if (params != null) {
            String page = params.get("page");
            if (page != null && !page.isEmpty()) {
                int p = Integer.parseInt(page);
                int pageSize = Integer.parseInt(this.env.getProperty("PAGE_SIZE"));

                query.setMaxResults(pageSize);
                query.setFirstResult((p - 1) * pageSize);
            }
        }
        return query.getResultList();
    }

    @Override
    public List<Livestreams> getLivestreamsByAdmission(Map<String, String> params, int id) {
        Session session = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Livestreams> q = b.createQuery(Livestreams.class);
        Root root = q.from(Livestreams.class);
        q.select(root);
        q.where(b.equal(root.get("admissionIdadmission"), id));
        Query query = session.createQuery(q);

        if (params != null) {
            String page = params.get("page");
            if (page != null && !page.isEmpty()) {
                int p = Integer.parseInt(page);
                int pageSize = Integer.parseInt(this.env.getProperty("PAGE_SIZE"));

                query.setMaxResults(pageSize);
                query.setFirstResult((p - 1) * pageSize);
            }
        }
        return query.getResultList();
    }

    @Override
    public Long countLivestreams(int id) {
        Session session = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Livestreams> q = b.createQuery(Livestreams.class);
        Root root = q.from(Livestreams.class);
        q.select(root);
        q.where(b.equal(root.get("admissionIdadmission"), id));
        Query query = session.createQuery(q);

        return Long.valueOf(query.getResultList().size());
    }

    @Override
    public Long countLivestreams() {
        Session s = this.factory.getObject().getCurrentSession();
        Query q = s.createQuery("SELECT Count(*) FROM Livestreams");
        return Long.parseLong(q.getSingleResult().toString());
    }

    @Override
    public boolean addOrUpdateLivestreams(Livestreams p) {
         Session s = this.factory.getObject().getCurrentSession();
        p.setLivestreaminfomation(p.getLivestreaminfomation().replace("\n", "</br>"));
        try {
            if (p.getIdlivestreams() == null) {
                p.setUsersIdusers(StaticClass.users);
                s.save(p);
            } else {
                p.setUsersIdusers(StaticClass.users);
                s.update(p);
            }

            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public Livestreams getLivestreamsById(int id) {
         Session session = this.factory.getObject().getCurrentSession();
        return session.get(Livestreams.class, id);
    }

    @Override
    public boolean deleteLivestreams(int id) {
         Session session = this.factory.getObject().getCurrentSession();
        Livestreams p = this.getLivestreamsById(id);
        try {
            session.delete(p);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }

}
