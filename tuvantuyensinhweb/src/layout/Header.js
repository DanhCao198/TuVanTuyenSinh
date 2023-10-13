import { useContext, useEffect, useState } from "react";
import { Button, Col, Container, Form, Nav, Navbar, NavDropdown, Row } from "react-bootstrap";
import { Link, useNavigate } from "react-router-dom";
import { MyUserContext } from "../App";
import Apis, { endpoints } from "../configs/Apis";
import MySpinner from "./MySpinner";


const Header = () => {
    const [users, dispatch] = useContext(MyUserContext);
    const [kw, setKw] = useState("");
    const nav = useNavigate();
    const [admissions, setAdmissions] = useState(null);
    const [faculties, setFaculties] = useState(null);

    const loadAd = async () => {
        let res = await Apis.get(endpoints['admissions'])
        setAdmissions(res.data);
    }

    useEffect(() => {
        loadAd();
        loadFaculties();
    }, [])

    const loadFaculties = async () => {
        try {
            // Fetch faculties data from your API
            let res = await Apis.get(endpoints['faculties']);
            setFaculties(res.data);
        } catch (error) {
            // Handle errors if needed
            console.error("Error loading faculties: ", error);
        }
    }
    const search = (evt) => {
        evt.preventDefault();
        nav(`/?kw=${kw}`)
    }

    const logout = () => {
        dispatch({
            "type": "logout"
        })
    }
    if (admissions === null)
        return <MySpinner />;

    return (
        <>

            <Navbar expand="lg" className="bg-body-tertiary">
                <Container>
                    <Navbar.Brand href="#home"> Cổng thông tin tuyển sinh</Navbar.Brand>
                    <Navbar.Toggle aria-controls="basic-navbar-nav" />
                    <Navbar.Collapse id="basic-navbar-nav">
                        <Nav className="me-auto">
                            <Link className="nav-link" to="/">&#127968; Trang chủ</Link>

                            <NavDropdown title="Danh mục tuyển sinh" id="basic-nav-dropdown">
                                {admissions.map(a => {
                                    let h = `/?admissionId=${a.idadmission}`;
                                    return <Link className="dropdown-item" to={h} key={a.idadmission}>{a.typeoftraining}</Link>
                                })}

                            </NavDropdown>
                            <NavDropdown title="Danh sách Khoa" id="faculty-nav-dropdown">
                                {faculties.map(faculty => (
                                        <Link
                                            className="dropdown-item"
                                            to={`/faculty/${faculty.idfaculty}`} // Update the route as per your application
                                            key={faculty.idfaculty}
                                        >
                                            {faculty.facultyname}
                                        </Link>
                                    ))
                                }
                            </NavDropdown>


                            {users === null ? <>
                                <Link className="nav-link text-danger" to="/login">Đăng nhập</Link>
                                <Link className="nav-link text-danger" to="/register">Đăng ký</Link>


                            </> : <>
                                <Link className="nav-link text-danger" to="/">Chào {users.username}!</Link>
                                <Button variant="secondary" onClick={logout}>Đăng xuất</Button>
                            </>}
                        </Nav>
                    </Navbar.Collapse>
                    <Form onSubmit={search} inline>
                        <Row>
                            <Col xs="auto">
                                <Form.Control
                                    type="text"
                                    value={kw}
                                    onChange={e => setKw(e.target.value)}
                                    placeholder="Nhập từ khóa..." name="kw"
                                    className=" mr-sm-2"
                                />
                            </Col>
                            <Col xs="auto">
                                <Button type="submit">Tìm</Button>
                            </Col>
                        </Row>
                    </Form>
                </Container>

            </Navbar>
        </>
    )
}

export default Header;