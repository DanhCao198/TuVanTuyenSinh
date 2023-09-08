import { useContext, useState } from "react";
import { Button, Form } from "react-bootstrap";
import cookie from "react-cookies";
import { Navigate, useNavigate } from "react-router-dom";
import { MyUserContext } from "../App";
import Apis, { authApi, endpoints } from "../configs/Apis";

const Login = () => {
    const [user, dispatch] = useContext(MyUserContext);
    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");
    const nav = useNavigate();

    const login = (evt) => {
        evt.preventDefault();

        const process = async () => {
            try {
                let res = await Apis.post(endpoints['login'], {
                    "username": username,
                    "password": password
                });
                cookie.save("token", res.data);
                
                let { data } = await authApi().get(endpoints['current-user']);
                cookie.save("user", data);

                dispatch({
                    "type": "login",
                    "payload": data
                });

                nav("/");
            } catch (err) {
                console.error(err);
            }
        }

        process();
    }

    if (user !== null)
        return <Navigate to="/" />

    return (
        <section className="mb-3 mt-3">
            <div className="container">
                <div className="row justify-content-center">
                    <div className="col-md-6">
                        <h1 className="text-center text-info">ĐĂNG NHẬP NGƯỜI DÙNG</h1>

                        <Form onSubmit={login}>
                            <Form.Group className="mb-3" controlId="formBasicUsername">
                                <Form.Label>Tên đăng nhập</Form.Label>
                                <Form.Control
                                    value={username}
                                    onChange={e => setUsername(e.target.value)}
                                    type="text"
                                    placeholder="Tên đăng nhập"
                                />
                            </Form.Group>
                            <Form.Group className="mb-3" controlId="formBasicPassword">
                                <Form.Label>Mật khẩu</Form.Label>
                                <Form.Control
                                    value={password}
                                    onChange={e => setPassword(e.target.value)}
                                    type="password"
                                    placeholder="Mật khẩu"
                                />
                            </Form.Group>
                            <div className="text-center">
                                <Button variant="info" type="submit">
                                    Đăng nhập
                                </Button>
                            </div>
                        </Form>
                    </div>
                </div>
            </div>
        </section>
    );
}

export default Login;
