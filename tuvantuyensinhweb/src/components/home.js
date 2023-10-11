import {  useEffect, useState } from "react"
import { Alert, Card, Col, Row, Button } from "react-bootstrap";
import { useSearchParams } from "react-router-dom";
import Apis, { endpoints } from "../configs/Apis";
import MySpinner from "../layout/MySpinner";

const Home = () => {

    const [posts, setPosts] = useState(null);
    const [q] = useSearchParams();

    useEffect(() => {
        const loadPosts = async () => {
           try {
            let e = endpoints['posts'];

            let admissionId = q.get("admissionId");
            if (admissionId !== null)
                e = `${e}?cateId=${admissionId}`;
            else {
                let kw = q.get("kw");
                if (kw !== null)
                    e = `${e}?kw=${kw}`;
            }
            
            let res = await Apis.get(e);
            setPosts(res.data);
           } catch (ex) {
               console.error(ex);
           }
        }

        loadPosts();
    }, [q]); 

    if (posts === null) 
    return <MySpinner />

    if (posts.length === 0)
    return <Alert variant="info" className="mt-1">Không có sản phẩm nào!</Alert>
 
    return (
        <>
        <h1 className="text-center text-info">DANH MỤC BÀI VIẾT</h1>
        <Row>
            
                {posts.map((p, index) => {
                    return <Col xs={12} md={3} className="mt-2 mb-2" key={index}>
                                <Card style={{ width: '18rem' }} >
                                    <Card.Img variant="top" src={p.postImg}  />
                                    <Card.Body>
                                        <Card.Title>{p.postName}</Card.Title>
                                        <Button style={{marginRight: "5px"}} variant="primary">Xem chi tiết</Button>
                                    </Card.Body>
                                </Card>
                            </Col>
                })}
            
        </Row>

        </>
    )
}

export default Home;
