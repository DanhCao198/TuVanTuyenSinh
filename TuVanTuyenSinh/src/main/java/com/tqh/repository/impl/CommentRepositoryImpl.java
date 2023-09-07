/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.repository.impl;

import com.tqh.pojo.Comment;
import com.tqh.pojo.Post;
import com.tqh.pojo.StaticClass;
import com.tqh.repository.CommentRepository;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Admin
 */
@Repository
@Transactional
public class CommentRepositoryImpl implements CommentRepository {

    @Autowired
    private LocalSessionFactoryBean factory;
@Autowired
    private Environment env;
    @Override
    public List<Comment> getComments(Map<String, String> params) {
         Session session = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Comment> q = b.createQuery(Comment.class);
        Root root = q.from(Comment.class);
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
    public boolean addComment(Comment c,Post p) {
      Session s = this.factory.getObject().getCurrentSession();
        try {
            c.setUsersIdusers(StaticClass.users);
            c.setPostIdpost(p);
            c.setCreatedDate(new Date());
            s.save(c);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public Comment getCommentById(int id) {
         Session session = this.factory.getObject().getCurrentSession();
        return session.get(Comment.class, id);
    }
}
