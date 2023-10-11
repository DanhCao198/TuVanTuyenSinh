import axios from "axios";
import cookie from "react-cookies";

const SERVER_CONTEXT ="/TuVanTuyenSinh";
const SERVER ="http://localhost:8080";

export const endpoints = {
    "admissions": `${SERVER_CONTEXT}/api/admissions/`,
    "posts": `${SERVER_CONTEXT}/api/posts/`,
    "login": `${SERVER_CONTEXT}/api/login/`,
    "current-user": `${SERVER_CONTEXT}/api/current-user`,
    "register": `${SERVER_CONTEXT}/api/register/`
}

export const authApi = () =>{
    return axios.create({
        baseURL: SERVER,
        Headers: {
            "Authorization": cookie.load("token")
        }
    })
}

export default axios.create({
    baseURL:SERVER
})