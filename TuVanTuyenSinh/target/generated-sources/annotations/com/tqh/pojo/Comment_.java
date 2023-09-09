package com.tqh.pojo;

import com.tqh.pojo.Post;
import com.tqh.pojo.Reply;
import com.tqh.pojo.Users;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2023-09-09T22:09:49")
@StaticMetamodel(Comment.class)
public class Comment_ { 

    public static volatile SingularAttribute<Comment, String> commentinformation;
    public static volatile SingularAttribute<Comment, Date> createdDate;
    public static volatile SingularAttribute<Comment, Post> postIdpost;
    public static volatile SingularAttribute<Comment, Integer> idcomment;
    public static volatile SetAttribute<Comment, Reply> replySet;
    public static volatile SingularAttribute<Comment, Users> usersIdusers;

}