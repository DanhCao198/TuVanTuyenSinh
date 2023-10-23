import { useEffect, useState } from "react";
import { Alert, Card, Col, Row, Pagination } from "react-bootstrap";
import { useSearchParams, Link } from "react-router-dom";
import Apis, { endpoints } from "../../configs/Apis";
import MySpinner from '../../layout/MySpinner';
import './Posts.css';

const Posts = () => {
  const [posts, setPosts] = useState(null);
  const [q] = useSearchParams();
  const postsPerPage = 8;
  const [currentPage, setCurrentPage] = useState(1);

  useEffect(() => {
    const loadPosts = async () => {
      try {
        let e = endpoints['posts'];

        let idadmission = q.get("idadmission");
        if (idadmission !== null)
          e = `${e}?idadmission=${idadmission}`;
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

  if (posts == null)
    return <MySpinner />

  if (posts.length === 0)
    return <Alert variant="info" className="mt-1">Không có sản phẩm nào!</Alert>

  // Tính chỉ mục bắt đầu và kết thúc của danh sách bài viết cần hiển thị trên trang hiện tại.
  const startIndex = (currentPage - 1) * postsPerPage;
  const endIndex = Math.min(startIndex + postsPerPage, posts.length);

  const visiblePosts = posts.slice(startIndex, endIndex);

  // Hàm xử lý chuyển trang
  const paginate = (pageNumber) => {
    setCurrentPage(pageNumber);
  };

  return (
    <div>
      <Row>
        {visiblePosts.map((p) => {
          let url = `/posts/${p.idpost}`;
          return (
            <Col xs={12} md={3} className="mt-2 mb-2">
              <Card style={{ width: '18rem', height: '100%' }}>
              <Card className="card-custom">
                <Card.Img variant="top" src={p.postImg} fluid rounded />
                <Card.Body className="d-flex flex-column justify-content-start">
                <Card.Title className="card-title1" title={p.postName}>{p.postName}</Card.Title>
                  <Card.Text>{p.posttype}</Card.Text>
                  <Link to={url} className="btn btn-info mt-auto" style={{ alignSelf: "flex-end" }} variant="primary">
                    Xem chi tiết
                  </Link>
                </Card.Body>
              </Card>
              </Card>
            </Col>
          );
        })}
      </Row>
      <Pagination>
        {Array.from({ length: Math.ceil(posts.length / postsPerPage) }).map((_, index) => (
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

export default Posts;
