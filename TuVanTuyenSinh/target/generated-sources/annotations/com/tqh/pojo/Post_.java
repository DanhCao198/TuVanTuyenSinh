package com.tqh.pojo;

import com.tqh.pojo.Admission;
import com.tqh.pojo.Faculty;
import com.tqh.pojo.Users;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-09-04T17:17:28")
@StaticMetamodel(Post.class)
public class Post_ { 

    public static volatile SingularAttribute<Post, Admission> admissionIdadmission;
    public static volatile SingularAttribute<Post, Faculty> facultyIdfaculty;
    public static volatile SingularAttribute<Post, String> postinformation;
    public static volatile SingularAttribute<Post, String> postName;
    public static volatile SingularAttribute<Post, String> posttype;
    public static volatile SingularAttribute<Post, Integer> idpost;
    public static volatile SingularAttribute<Post, Users> usersIdusers;
    public static volatile SingularAttribute<Post, String> postImg;

}