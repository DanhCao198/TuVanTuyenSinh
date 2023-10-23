
import { useContext, useEffect, useState } from "react";
import { Button, Col, Form, Image, ListGroup, Row } from "react-bootstrap";
import { Link, useParams } from "react-router-dom";
import { MyUserContext } from "../App";
import Apis, {  endpoints } from "../configs/Apis";
import MySpinner from "../layout/MySpinner";
import YouTube from 'react-youtube'; // Import react-youtube
import './Css/LivestreamDetails.css'; // Import file CSS tùy chỉnh


const LivestreamDetails = () => {
    const [user,] = useContext(MyUserContext);
    const { id } = useParams();
    const [livestreams, setLivestreams] = useState(null);


    useEffect(() => {
        const loadLivestreams = async () => {
            let { data } = await Apis.get(endpoints['details2'](id));
            setLivestreams(data);
        }       
        loadLivestreams();

    }, []);


    if (livestreams === null)
        return <MySpinner />;

    let url = `/login?next=/livestreams/${id}`;
    return <>
        <h1 className="text-center text-info mt-2">{livestreams.title}</h1>
        <Row>
            <Col md={5} xs={6}>
                <Image src={livestreams.picture} rounded fluid />
            </Col>
            <Col md={5} xs={6}>
                <p>{livestreams.livestreaminfomation}</p>
                <div className="centered-video1" >
                <YouTube videoId={extractVideoIdFromLink(livestreams.linkstreams)} />
            </div>          
                  <p>{livestreams.startTime}</p>
                <p>{livestreams.endTime}</p>
            </Col>
        </Row>
        <hr />
    </>
}

export default LivestreamDetails;

const extractVideoIdFromLink = (link) => {
    if (link) {
        const regex = /[?&]v=([^?&]+)/;
        const match = link.match(regex);
        if (match) {
            return match[1];
        }
    }
    return '';
};
