package com.tqh.pojo;

import com.tqh.pojo.Users;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-09-08T20:23:06")
@StaticMetamodel(School.class)
public class School_ { 

    public static volatile SetAttribute<School, Users> usersSet;
    public static volatile SingularAttribute<School, Integer> idschool;
    public static volatile SingularAttribute<School, String> description;
    public static volatile SingularAttribute<School, String> imageSchool;
    public static volatile SingularAttribute<School, String> tieuDe;

}