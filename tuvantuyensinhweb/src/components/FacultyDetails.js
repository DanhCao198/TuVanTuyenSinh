import { useContext, useEffect, useState } from "react";
import { Link, useParams } from "react-router-dom";
import { MyUserContext } from "../App";
import Apis, { endpoints } from "../configs/Apis";
import MySpinner from "../layout/MySpinner";
import YouTube from 'react-youtube'; // Import react-youtube
import './Css/FacultyDetails.css'; // Import file CSS tùy chỉnh

const FacultyDetails = () => {
    const [user,] = useContext(MyUserContext);
    const { id } = useParams();
    const [faculties, setFaculties] = useState(null);

    useEffect(() => {
        const loadFaculties = async () => {
            let { data } = await Apis.get(endpoints['details1'](id));
            setFaculties(data);
        }

        loadFaculties();

    }, []);

    if (faculties === null)
        return <MySpinner />;

    let url = `/login?next=/faculties/${id}`;
    return (
        <div className="faculty-details">
            <h1 className="text-center text-info mt-2">{faculties.facultyname}</h1>
            <p>{faculties.gioiThieu}</p>
            <p>{faculties.moTaCTDT}</p>
            <a href={faculties.website} target="_blank" rel="noopener noreferrer">WEBSITE ĐÀO TẠO</a>
            <div className="centered-video">
                <YouTube videoId={extractVideoIdFromLink(faculties.introvideo)} />
            </div>
        </div>
    );
}

export default FacultyDetails;

const extractVideoIdFromLink = (link) => {
    const regex = /[?&]v=([^?&]+)/;
    const match = link.match(regex);
    if (match) {
        return match[1];
    }
    return '';
};
