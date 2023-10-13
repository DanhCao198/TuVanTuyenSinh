import {  useEffect, useState } from "react"

import Posts from "./Post/Posts.js";

function Home(){
   
    return (
        <>
        <h1 className="text-center text-info">BÀI VIẾT TUYỂN SINH</h1>
        <Posts/>
        </>
    )
}

export default Home;
