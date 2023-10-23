import React, { useEffect, useState } from "react";
import { Alert, Card, Col, Row } from "react-bootstrap";
import { useSearchParams, Link } from "react-router-dom";
import Apis, { endpoints } from "../../configs/Apis";
import MySpinner from '../../layout/MySpinner';
import './Faculties.css';

const Faculties = () => {
  const [faculties, setFaculties] = useState(null);
  const [q] = useSearchParams();

  useEffect(() => {
    const loadFaculties = async () => {
      try {
        let e = endpoints['faculties'];

        let admissionId = q.get("admissionId");
        if (admissionId !== null)
          e = `${e}?cateId=${admissionId}`;
        else {
          let kw = q.get("kw");
          if (kw !== null)
            e = `${e}?kw=${kw}`;
        }

        let res = await Apis.get(e);
        setFaculties(res.data);
      } catch (ex) {
        console.error(ex);
      }
    }

    loadFaculties();
  }, [q]);

  if (faculties == null) {
    return <MySpinner />;
  }

  if (faculties.length === 0) {
    return <Alert variant="info" className="mt-1">Không có khoa nào!</Alert>;
  }

  const colors = ["#ff5733", "#33ff57", "#5733ff", "#33a7ff","#7fffd4","#dcdcdc","#ff69b4","#ba55d3"]; // Mảng màu sắc

  return (
    <div className="faculties-container">
      <Row>
        {faculties.map((f, index) => {
          let url = `/faculties/${f.idfaculty}`;
          const cardColor = colors[index % colors.length];

          return (
            <Col xs={12} md={3} className="mt-2 mb-2" key={f.idfaculty}>
              <Card className="faculty-card" style={{ backgroundColor: cardColor, width: '18rem' }}>
                <Card.Img variant="top" src={f.coverImage} className="faculty-image" />
                <Card.Body>
                  <Card.Title className="faculty-name">{f.facultyname}</Card.Title>
                  <Link to={url} className="btn btn-info btn-block" variant="primary">
                    Xem chi tiết
                  </Link>
                </Card.Body>
              </Card>
            </Col>
          );
        })}
      </Row>
    </div>
  );
};

export default Faculties;
