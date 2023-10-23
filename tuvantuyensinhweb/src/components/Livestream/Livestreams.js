import React, { useEffect, useState } from "react";
import { Alert, Card, Col, Row, Pagination } from "react-bootstrap";
import { useSearchParams, Link } from "react-router-dom";
import Apis, { endpoints } from "../../configs/Apis";
import MySpinner from '../../layout/MySpinner';
import './Livestreams.css';

const Livestreams = () => {
    const [livestreams, setLivestreams] = useState(null);
    const [q] = useSearchParams();
    const postsPerPage = 8;
    const [currentPage, setCurrentPage] = useState(1);

    useEffect(() => {
        const loadLivestreams = async () => {
            try {
                let e = endpoints['livestreams'];
                let res = await Apis.get(e);
                setLivestreams(res.data);
            } catch (ex) {
                console.error(ex);
            }
        }

        loadLivestreams();
    }, [q]);

    if (livestreams == null)
        return <MySpinner />

    if (livestreams.length === 0)
        return <Alert variant="info" className="mt-1">Không có sản phẩm nào!</Alert>

    // Tính chỉ mục bắt đầu và kết thúc của danh sách bài viết cần hiển thị trên trang hiện tại.
    const startIndex = (currentPage - 1) * postsPerPage;
    const endIndex = Math.min(startIndex + postsPerPage, livestreams.length);

    const visibleLivestreams = livestreams.slice(startIndex, endIndex);

    // Hàm xử lý chuyển trang
    const paginate = (pageNumber) => {
        setCurrentPage(pageNumber);
    };

    return (
        <div>
            <Row>
                {visibleLivestreams.map((l) => {
                    let url = `/livestreams/${l.idlivestreams}`;
                    return (
                        <Col xs={12} md={3} className="mt-2 mb-2">
                            <Card className="custom-card">
                            <Card.Img variant="top" src={l.picture} className="custom-image" />
                                <Card.Body className="d-flex flex-column justify-content-start">
                                    <Card.Title>{l.title}</Card.Title>
                                    <Card.Text>{l.createdDate}</Card.Text>
                                    <Link to={url} className="btn btn-info mt-auto" style={{ alignSelf: "flex-end" }} variant="primary">
                                        Xem chi tiết
                                    </Link>
                                </Card.Body>
                            </Card>
                        </Col>
                    );
                })}
            </Row>
            <Pagination>
                {Array.from({ length: Math.ceil(livestreams.length / postsPerPage) }).map((_, index) => (
                    <Pagination.Item
                        key={index}
                        active={index + 1 === currentPage}
                        onClick={() => paginate(index + 1)}
                    >
                        {index + 1}
                    </Pagination.Item>
                ))}
            </Pagination>
        </div>
    );
};

export default Livestreams;
