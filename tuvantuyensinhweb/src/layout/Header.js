import React from 'react';
import { Container, Navbar, Nav, NavDropdown, Form, FormControl, Button, Image } from 'react-bootstrap';
import { Link } from 'react-router-dom';

function Header() {
  return (
    <section className="mb-3 mt-3">
      <Container>
        <div className="row justify-content-between">
          <div className="col-md-8 order-md-last">
            <div className="row">
              <div className="col-md-6 text-center">
                <Navbar.Brand as={Link} to="/">
                  CỔNG THÔNG TIN TƯ VẤN TUYỂN SINH<br />ĐẠI HỌC MỞ THÀNH PHỐ HỒ CHÍ MINH
                </Navbar.Brand>
              </div>
              <div className="col-md-6 d-md-flex justify-content-end mb-md-0 mb-3">
                <Form className="searchform order-lg-last" action="#">
                  <div className="form-group d-flex">
                    <FormControl type="text" className="form-control pl-3" placeholder="Search" />
                    <Button type="submit" className="form-control search">
                      <span className="fa fa-search"></span>
                    </Button>
                  </div>
                </Form>
              </div>
            </div>
          </div>
          <div className="col-md-4 d-flex">
            <div className="social-media">
              <p className="mb-0 d-flex">
                <Image
                  src="https://res.cloudinary.com/dev7q6f9g/image/upload/v1693319387/norzb2fl19qkalnqtmn5.png"
                  alt="Social Media Logo"
                  width={60}
                  height={40}
                />
              </p>
            </div>
          </div>
        </div>
      </Container>

      <Navbar expand="lg" variant="dark" className="ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <Container fluid>
          <Navbar.Toggle aria-controls="ftco-nav">
            <span className="fa fa-bars"></span> Menu
          </Navbar.Toggle>
          <Navbar.Collapse id="ftco-nav">
            <Nav className="navbar-nav m-auto">
              <Nav.Item className="nav-item active">
                <Nav.Link as={Link} to="/" className="nav-link">
                  Trang Chủ
                </Nav.Link>
              </Nav.Item>
              <NavDropdown title="Hệ" id="dropdown04">
     
              </NavDropdown>
              <NavDropdown title="Khoa" id="dropdown04">
 
              </NavDropdown>
              <Nav.Item className="nav-item">
                <Nav.Link as={Link} to="/school" className="nav-link">
                  Giới thiệu
                </Nav.Link>
              </Nav.Item>
              <Nav.Item className="nav-item">
                <Nav.Link as={Link} to="/benmarks" className="nav-link">
                  Điểm chuẩn
                </Nav.Link>
              </Nav.Item>
            </Nav>
            <Nav className="navbar-nav ml-auto">
            </Nav>
          </Navbar.Collapse>
        </Container>
      </Navbar>
    </section>
  );
}

export default Header;