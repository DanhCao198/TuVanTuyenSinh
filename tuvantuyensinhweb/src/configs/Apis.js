import axios from "axios";
import cookie from "react-cookies";

const SERVER_CONTEXT ="/TuVanTuyenSinh";
const SERVER ="http://localhost:8080";

export const endpoints = {
    "admissions": `${SERVER_CONTEXT}/api/admissions/`,
    "posts": `${SERVER_CONTEXT}/api/posts/`,
    "login": `${SERVER_CONTEXT}/api/login/`,
    "current-user": `${SERVER_CONTEXT}/api/current-user/`,
    "register": `${SERVER_CONTEXT}/api/users/`,
    "details": (id) => `${SERVER_CONTEXT}/api/posts/${id}/`,
    "comments": (id) => `${SERVER_CONTEXT}/api/posts/${id}/comments/`,
    "add-comment": `${SERVER_CONTEXT}/api/comments/`,
    "faculties": `${SERVER_CONTEXT}/api/faculties/`,
    "details1": (id) => `${SERVER_CONTEXT}/api/faculties/${id}/`,
    "banners": `${SERVER_CONTEXT}/api/banners/`,
    "livestreams": `${SERVER_CONTEXT}/api/livestreams/`,
    "details2": (id) => `${SERVER_CONTEXT}/api/livestreams/${id}/`,
    "benmarks": `${SERVER_CONTEXT}/api/benmarks/`,

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