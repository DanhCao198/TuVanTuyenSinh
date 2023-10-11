
import { BrowserRouter,Route,  Routes } from "react-router-dom";
import Home from "./components/Home";
import Footer from "./layout/Footer";
import Header from "./layout/Header";
import 'bootstrap/dist/css/bootstrap.min.css';
import { Container } from "react-bootstrap";
import Login from "./components/Login";
import { createContext, useReducer } from "react";
import MyUserReducer from "./reducers/MyUserReducer";
import cookie from "react-cookies";
import Register from "./components/Register";
import MyAdmissionCounterReducer from "./reducers/MyAdmissionCounterReducer";
import Admission from "./components/Admission";

export const MyUserContext = createContext();
export const MyAdmissionContext = createContext();

const App = () => {
  const [user, dispatch] = useReducer(MyUserReducer, cookie.load("user") || null);
  const [admissionCounter, admissionDispatch] = useReducer(MyAdmissionCounterReducer, 0);

  return (
    <MyUserContext.Provider value={[user, dispatch]}>
      <MyAdmissionContext.Provider value={[admissionCounter, admissionDispatch]}>
      <BrowserRouter>
        <Header/>
        <Container>
          <Routes>
            <Route path="/" element={<Home />} />
            {/* <Route path="/login" element={<Login />} />
            <Route path="/register" element={<Register />} />
            <Route path="/admission" element={<Admission />} />  */}
          </Routes>
        </Container>
        <Footer/>
      </BrowserRouter>
      </MyAdmissionContext.Provider>
    </MyUserContext.Provider>
  )
}

export default App;