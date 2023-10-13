import React from "react";
import {
    FaFacebook,
    FaTwitter,
    FaGithub,
    FaEnvelope,
    FaInstagram,
    FaPhone,
    FaFax,
    FaMapMarker
} from "react-icons/fa";
import "./Footer.css";
const Footer = () => (
    <footer
        className="page-footer font-small red pt-4"
        style={{ backgroundColor: "blue", color: "white" }}>

        <div className="container-fluid text-center text-md-left">
            <div className="row">
                <div className="col-md-6 mt-md-0 mt-3">
                    <h5 className="text-uppercase">Cổng thông tin tuyển sinh</h5>
                    <p>Liên hệ với chúng tôi</p>
                    <ul className="list-unstyled contact-info" style={{ marginRight : "50px" }}>
                        <li><i className="social-icon"></i><FaMapMarker/> 35-37 Hồ Hảo Hớn, P.Cô Giang, Q1, Tp.HCM</li>
                        <li><i className="social-icon"></i><FaPhone/> 028.39207627; 08.39300072</li>
                        <li><i className="social-icon"></i><FaFax/> Hotline: 1800585884</li>
                        <li><i className="social-icon"></i><FaEnvelope /> tuyensinh@ou.edu.vn</li>
                    </ul>
                    <div className="social-icons">
                        <div className="social-icon"><FaFacebook /></div>
                        <div className="social-icon"><FaTwitter /></div>
                        <div className="social-icon"><FaGithub /></div>
                        <div className="social-icon"><FaEnvelope /></div>
                        <div className="social-icon"><FaInstagram /></div>
                    </div>

                </div>


                <hr className="clearfix w-100 d-md-none pb-0" />

                <div className="col-md-3 mb-md-0 mb-2">
                    <h5 className="text-uppercase">Cơ sở học tập</h5>
                    <ul
                        className="list-unstyled"
                        style={{ textAlign: "left", color: "white" }}
                    >
                        <li>
                            <b>Cơ sở 1:</b> 97 Võ Văn Tần P6 Q3 Tp.HCM.
                        </li>
                        <li>
                            <b>Cơ sở 2:</b> 35-37 Hồ Hảo Hớn, Phường Cô Giang, Quận 1, Tp. Hồ
                            Chí Minh.
                        </li>
                        <li>
                            <b>Cơ sở 3:</b> Khu dân cư Nhơn Trạch, Huyện Nhà Bè, Tp. Hồ Chí
                            Minh.
                        </li>
                        <li>
                            <b>Cơ sở 4:</b> 02 Mai Thị Lựu, Phường Đa Kao, Quận 1, Tp. Hồ Chí
                            Minh.
                        </li>
                        <li>
                            <b>Cơ sở 5:</b> 68 Lê Thị Trung, Tp.Thủ Dầu Một, Tỉnh Bình Dương.
                        </li>
                        <li>
                            <b>Cơ sở 6:</b> Phường Long Bình Tân, Tp. Biên Hòa, Tỉnh Đồng Nai.
                        </li>
                        <li>
                            <b>Cơ sở 7:</b> Phường Long Bình Tân, Tp. Biên Hòa, Tỉnh Đồng Nai.
                        </li>
                    </ul>
                </div>

                <div className="col-md-3 mb-md-0 mb-3">
                    <h5 className="text-uppercase">Bản đồ</h5>
                    <ul className="list-unstyled" style={{ color: "white" }}>
                        <li>
                            <iframe
                                width="100%"
                                height="300"
                                frameBorder="0"
                                src="https://maps.google.com/maps?q=35-37%20H%E1%BB%93%20H%E1%BA%A3o%20H%E1%BB%9Bn%20Qu%E1%BA%ADn%201%20Th%C3%A0nh%20ph%E1%BB%91%20H%E1%BB%93%20Ch%C3%AD%20Minh&amp;t=&amp;z=15&amp;ie=UTF8&amp;iwloc=&amp;output=embed"
                                title="Google Map"
                            ></iframe>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div className="footer-copyright text-center py-3">
            © 2023 Copyright:
            <a> Huy&Danh</a>
        </div>
    </footer>
);

export default Footer;
