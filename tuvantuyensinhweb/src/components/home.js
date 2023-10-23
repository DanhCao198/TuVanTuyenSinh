import Posts from "./Post/Posts.js";
import Faculties from "./Faculty/Faculties.js";
import Banners from "./Banner/Banners.js";
import Livestreams from "./Livestream/Livestreams.js";
import "./Livestream/Livestreams.css";


function Home(){
   
    return (
        <>
        <Banners/>
        <h1 className="text-center text-info">BÀI VIẾT TUYỂN SINH</h1>
        <Posts/>
        <h1 className="text-center text-info">THÔNG BÁO LIVESTREAM</h1>
        <Livestreams/>
        <h1 className="text-center text-info">KHOA</h1>
        <Faculties/>
        </>
    )
}

export default Home;
