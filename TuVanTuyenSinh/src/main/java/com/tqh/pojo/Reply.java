/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.pojo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author HP
 */
@Entity
@Table(name = "reply")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Reply.findAll", query = "SELECT r FROM Reply r"),
    @NamedQuery(name = "Reply.findByIdreply", query = "SELECT r FROM Reply r WHERE r.idreply = :idreply"),
    @NamedQuery(name = "Reply.findByCreatedDate", query = "SELECT r FROM Reply r WHERE r.createdDate = :createdDate")})
public class Reply implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idreply")
    private Integer idreply;
    @Lob
    @Size(max = 2147483647)
    @Column(name = "replyinfomation")
    private String replyinfomation;
    @Column(name = "createdDate")
    @Temporal(TemporalType.DATE)
    private Date createdDate;
    @JoinColumn(name = "fkreply_commentid", referencedColumnName = "idcomment")
    @ManyToOne
    private Comment fkreplyCommentid;
    @JoinColumn(name = "fkreply_userid", referencedColumnName = "idusers")
    @ManyToOne
    private Users fkreplyUserid;

    public Reply() {
    }

    public Reply(Integer idreply) {
        this.idreply = idreply;
    }

    public Integer getIdreply() {
        return idreply;
    }

    public void setIdreply(Integer idreply) {
        this.idreply = idreply;
    }

    public String getReplyinfomation() {
        return replyinfomation;
    }

    public void setReplyinfomation(String replyinfomation) {
        this.replyinfomation = replyinfomation;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public Comment getFkreplyCommentid() {
        return fkreplyCommentid;
    }

    public void setFkreplyCommentid(Comment fkreplyCommentid) {
        this.fkreplyCommentid = fkreplyCommentid;
    }

    public Users getFkreplyUserid() {
        return fkreplyUserid;
    }

    public void setFkreplyUserid(Users fkreplyUserid) {
        this.fkreplyUserid = fkreplyUserid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idreply != null ? idreply.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Reply)) {
            return false;
        }
        Reply other = (Reply) object;
        if ((this.idreply == null && other.idreply != null) || (this.idreply != null && !this.idreply.equals(other.idreply))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.tqh.pojo.Reply[ idreply=" + idreply + " ]";
    }
    
}
