import React, { useEffect, useState } from "react";
import { Alert, Col, Row } from "react-bootstrap";
import Apis, { endpoints } from "../../configs/Apis";
import MySpinner from '../../layout/MySpinner';
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import "./Banner.css"; // Import tệp CSS bạn vừa tạo

const Banners = () => {
  const [banners, setBanners] = useState(null);

  useEffect(() => {
    const loadBanners = async () => {
      try {
        let e = endpoints['banners']; 
        let res = await Apis.get(e);
        setBanners(res.data);
      } catch (ex) {
        console.error(ex);
      }
    }

    loadBanners();
  }, []);

  if (banners === null) {
    return <MySpinner />;
  }

  if (banners.length === 0) {
    return <Alert variant="info" className="mt-1">Không có khoa nào!</Alert>;
  }

  const settings = {
    dots: true,
    infinite: true,
    speed: 1000, // 1 giây
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 5000, // 1 giây
  };

  return (
    <div>
      <Slider className="my-slider" {...settings}>
        {banners.map((b) => (
          <div key={b.idbanner}>
            <img src={b.image} alt={`Banner ${b.idbanner}`} />
          </div>
        ))}
      </Slider>
    </div>
  );
};

export default Banners;
