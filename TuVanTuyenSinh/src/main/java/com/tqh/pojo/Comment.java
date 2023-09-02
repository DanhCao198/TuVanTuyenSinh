/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.pojo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author HP
 */
@Entity
@Table(name = "comment")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Comment.findAll", query = "SELECT c FROM Comment c"),
    @NamedQuery(name = "Comment.findByIdcomment", query = "SELECT c FROM Comment c WHERE c.idcomment = :idcomment"),
    @NamedQuery(name = "Comment.findByCommentinformation", query = "SELECT c FROM Comment c WHERE c.commentinformation = :commentinformation")})
public class Comment implements Serializable {

    @JoinColumn(name = "users_idusers", referencedColumnName = "idusers")
    @ManyToOne(optional = false)
    private Users usersIdusers;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idcomment")
    private Integer idcomment;
    @Size(max = 45)
    @Column(name = "commentinformation")
    private String commentinformation;
    @JoinColumn(name = "post_admission_idadmission", referencedColumnName = "admission_idadmission")
    @ManyToOne(optional = false)
    private Post postAdmissionIdadmission;
    @JoinColumn(name = "post_faculty_idfaculty", referencedColumnName = "faculty_idfaculty")
    @ManyToOne(optional = false)
    private Post postFacultyIdfaculty;
    @JoinColumn(name = "post_idpost", referencedColumnName = "idpost")
    @ManyToOne(optional = false)
    private Post postIdpost;
    @JoinColumn(name = "post_users_idusers", referencedColumnName = "users_idusers")
    @ManyToOne(optional = false)
    private Post postUsersIdusers;

    public Comment() {
    }

    public Comment(Integer idcomment) {
        this.idcomment = idcomment;
    }

    public Integer getIdcomment() {
        return idcomment;
    }

    public void setIdcomment(Integer idcomment) {
        this.idcomment = idcomment;
    }

    public String getCommentinformation() {
        return commentinformation;
    }

    public void setCommentinformation(String commentinformation) {
        this.commentinformation = commentinformation;
    }

    public Post getPostAdmissionIdadmission() {
        return postAdmissionIdadmission;
    }

    public void setPostAdmissionIdadmission(Post postAdmissionIdadmission) {
        this.postAdmissionIdadmission = postAdmissionIdadmission;
    }

    public Post getPostFacultyIdfaculty() {
        return postFacultyIdfaculty;
    }

    public void setPostFacultyIdfaculty(Post postFacultyIdfaculty) {
        this.postFacultyIdfaculty = postFacultyIdfaculty;
    }

    public Post getPostIdpost() {
        return postIdpost;
    }

    public void setPostIdpost(Post postIdpost) {
        this.postIdpost = postIdpost;
    }

    public Post getPostUsersIdusers() {
        return postUsersIdusers;
    }

    public void setPostUsersIdusers(Post postUsersIdusers) {
        this.postUsersIdusers = postUsersIdusers;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idcomment != null ? idcomment.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Comment)) {
            return false;
        }
        Comment other = (Comment) object;
        if ((this.idcomment == null && other.idcomment != null) || (this.idcomment != null && !this.idcomment.equals(other.idcomment))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.tqh.pojo.Comment[ idcomment=" + idcomment + " ]";
    }

    public Users getUsersIdusers() {
        return usersIdusers;
    }

    public void setUsersIdusers(Users usersIdusers) {
        this.usersIdusers = usersIdusers;
    }
    
}
