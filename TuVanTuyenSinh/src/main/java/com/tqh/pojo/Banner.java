/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tqh.pojo;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author HP
 */
@Entity
@Table(name = "banner")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Banner.findAll", query = "SELECT b FROM Banner b"),
    @NamedQuery(name = "Banner.findByIdbanner", query = "SELECT b FROM Banner b WHERE b.idbanner = :idbanner"),
    @NamedQuery(name = "Banner.findByImage", query = "SELECT b FROM Banner b WHERE b.image = :image")})
public class Banner implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idbanner")
    private Integer idbanner;
    @Size(max = 225)
    @Column(name = "image")
    private String image;
    @OneToMany(mappedBy = "bannerIdbanner")
    private Set<Users> usersSet;

    public Banner() {
    }

    public Banner(Integer idbanner) {
        this.idbanner = idbanner;
    }

    public Integer getIdbanner() {
        return idbanner;
    }

    public void setIdbanner(Integer idbanner) {
        this.idbanner = idbanner;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @XmlTransient
    public Set<Users> getUsersSet() {
        return usersSet;
    }

    public void setUsersSet(Set<Users> usersSet) {
        this.usersSet = usersSet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idbanner != null ? idbanner.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Banner)) {
            return false;
        }
        Banner other = (Banner) object;
        if ((this.idbanner == null && other.idbanner != null) || (this.idbanner != null && !this.idbanner.equals(other.idbanner))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.tqh.pojo.Banner[ idbanner=" + idbanner + " ]";
    }
    
}
