package com.tqh.pojo;

import com.tqh.pojo.Users;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-09-03T22:03:01")
@StaticMetamodel(Banner.class)
public class Banner_ { 

    public static volatile SingularAttribute<Banner, String> image;
    public static volatile SetAttribute<Banner, Users> usersSet;
    public static volatile SingularAttribute<Banner, Integer> idbanner;

}