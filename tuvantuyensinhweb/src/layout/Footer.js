import React from 'react';
import { Container, Row, Col } from 'react-bootstrap';

function Footer() {
  return (
    <div className="my-5">
      {/* Footer */}
      <footer className="text-center text-lg-start text-white" style={{ backgroundColor: '#1c2331' }}>
        {/* Section: Social media */}
        <section className="d-flex justify-content-between p-4" style={{ backgroundColor: 'red' }}>
          {/* Left */}
          <div className="me-5">
            <span>Liên hệ với chúng tôi:</span>
          </div>
          {/* Left */}
  
          {/* Right */}
          <div>
            {/* Social media icons */}
            {/* Replace the anchor tags with the appropriate links */}
            <a style={{ textDecoration: 'none' }} href="a" className="text-white me-4">
              <i className="fa fa-facebook-f"></i>
            </a>
            <a style={{ textDecoration: 'none' }} href="a" className="text-white me-4">
              <i className="fa fa-twitter"></i>
            </a>
            <a style={{ textDecoration: 'none' }} href="a" className="text-white me-4">
              <i className="fa fa-google"></i>
            </a>
            <a style={{ textDecoration: 'none' }} href="a" className="text-white me-4">
              <i className="fa fa-instagram"></i>
            </a>
            <a style={{ textDecoration: 'none' }} href="a" className="text-white me-4">
              <i className="fa fa-linkedin"></i>
            </a>
            <a style={{ textDecoration: 'none' }} href="a" className="text-white me-4">
              <i className="fa fa-github"></i>
            </a>
          </div>
          {/* Right */}
        </section>
        {/* Section: Social media */}
  
        {/* Section: Links  */}
        <section className="">
          <Container className="text-center text-md-start mt-5">
            <Row className="mt-3">
              {/* Grid column */}
              <Col md={3} lg={4} xl={3} mxAuto mb={4}>
                <h6 className="text-uppercase fw-bold">Huy</h6>
                <hr className="mb-4 mt-0 d-inline-block mx-auto" style={{ width: '60px', backgroundColor: '#7c4dff', height: '2px' }} />
                <p>
                  Chuyên cung cấp các dịch vụ trang web
                </p>
              </Col>
              {/* Grid column */}
  
              {/* Grid column */}
              <Col md={2} lg={2} xl={2} mxAuto mb={4}>
                <h6 className="text-uppercase fw-bold">Sản phẩm</h6>
                <hr className="mb-4 mt-0 d-inline-block mx-auto" style={{ width: '60px', backgroundColor: '#7c4dff', height: '2px' }} />
                <p>
                  <a href="#!" className="text-white">Cổng thông tin tư vấn tuyển sinh</a>
                </p>
                <p>
                  <a href="#!" className="text-white">Website bán vé máy bay</a>
                </p>
              </Col>
              {/* Grid column */}
  
              {/* Grid column */}
              <Col md={3} lg={2} xl={2} mxAuto mb={4}>
                <h6 className="text-uppercase fw-bold">Useful links</h6>
                <hr className="mb-4 mt-0 d-inline-block mx-auto" style={{ width: '60px', backgroundColor: '#7c4dff', height: '2px' }} />
                <p>
                  <a href="#!" className="text-white">Your Account</a>
                </p>
                <p>
                  <a href="#!" className="text-white">Become an Affiliate</a>
                </p>
                <p>
                  <a href="#!" className="text-white">Shipping Rates</a>
                </p>
                <p>
                  <a href="#!" className="text-white">Help</a>
                </p>
              </Col>
              {/* Grid column */}
  
              {/* Grid column */}
              <Col md={4} lg={3} xl={3} mxAuto mbMd={0} mb={4}>
                <h6 className="text-uppercase fw-bold">Hợp tác</h6>
                <hr className="mb-4 mt-0 d-inline-block mx-auto" style={{ width: '60px', backgroundColor: '#7c4dff', height: '2px' }} />
                <p><i className="fa fa-home mr-3"></i> Việt Nam, VN</p>
                <p><i className="fa fa-envelope mr-3"></i> huy@gmail.com</p>
                <p><i className="fa fa-phone mr-3"></i> 0938842106</p>
                <p><i className="fa fa-print mr-3"></i> 123456789</p>
              </Col>
              {/* Grid column */}
            </Row>
          </Container>
        </section>
        {/* Section: Links  */}
  
        {/* Copyright */}
        <div className="text-center p-3" style={{ backgroundColor: 'rgba(0, 0, 0, 0.2)' }}>
          © 2023 Copyright:
          <a className="text-white" href="a">Huy</a>
        </div>
        {/* Copyright */}
      </footer>
      {/* Footer */}
    </div>
  );
}

export default Footer;
