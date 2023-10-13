
import { useContext, useEffect, useState } from "react";
import { Button, Col, Form, Image, ListGroup, Row } from "react-bootstrap";
import Moment from "react-moment";
import { Link, useParams } from "react-router-dom";
import { MyUserContext } from "../App";
import Apis, { authApi, endpoints } from "../configs/Apis";
import MySpinner from "../layout/MySpinner";

const PostDetails = () => {
    const [user,] = useContext(MyUserContext);
    const { id } = useParams();
    const [posts, setPosts] = useState(null);
    const [comments, setComments] = useState(null);
    const [content, setContent] = useState();
    

    useEffect(() => {
        const loadPosts = async () => {
            let { data } = await Apis.get(endpoints['details'](id));
            setPosts(data);
        }

        const loadComments = async () => {
            let { data } = await Apis.get(endpoints['comments'](id));
            setComments(data);
        }

        loadPosts();
        loadComments();
    }, []);

    // const addComment = () => {
    //     const process = async () => {
    //         let {data} = await authApi().post(endpoints['add-comment'], {
    //             "content": content, 
    //             "posts": posts.id
    //         });

    //         setComments([...comments, data]);
    //     }

    //     process();
    // }

    if (posts === null)
        return <MySpinner />;

    let url = `/login?next=/posts/${id}`;
    return <>
        <h1 className="text-center text-info mt-2">{posts.postName}</h1>
        <Row>
            <Col md={5} xs={6}>
                <Image src={posts.postImg} rounded fluid />
            </Col>
            <Col md={5} xs={6}>
                <h2 className="text-danger">{posts.posttype}</h2>
                <p>{posts.postinformation}</p>

            </Col>
        </Row>
        <hr />


        {user===null?<p>Vui lòng <Link to={url}>đăng nhập</Link> để bình luận! </p>:<>
        {/* <Form.Control as="textarea" aria-label="With textarea" value={content} onChange={e => setContent(e.target.value)} placeholder="Nội dung bình luận" />
        <Button onClick={addComment} className="mt-2" variant="info">Bình luận</Button> */}
        </>}
        <hr />

        {/* <ListGroup>
            {comments.map(c => <ListGroup.Item id={c.id}>
                        {c.user.username} - {c.content} - <Moment locale="vi" fromNow>{c.createdDate}</Moment>
                    </ListGroup.Item>)
            }
        </ListGroup> */}
    </>
}

export default PostDetails;