package com.tqh.pojo;

import com.tqh.pojo.Post;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-09-08T14:52:57")
@StaticMetamodel(Admission.class)
public class Admission_ { 

    public static volatile SingularAttribute<Admission, Integer> idadmission;
    public static volatile SingularAttribute<Admission, String> typeoftraining;
    public static volatile SetAttribute<Admission, Post> postSet;

}