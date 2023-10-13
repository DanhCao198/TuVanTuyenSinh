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
import Register from "./components/Register"
import PostDetails from "./components/PostDetails";
import 'moment/locale/vi';

export const MyUserContext = createContext();
export const MyAdmissionContext = createContext();

const App = () => {
  const [users, dispatch] = useReducer(MyUserReducer, cookie.load("users") || null);

  return (
    <MyUserContext.Provider value={[users, dispatch]}>
      <BrowserRouter>
        <Header/>
        <Container>
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/login" element={<Login />} />
            <Route path="/register" element={<Register />} />
            <Route path="/posts/:id" element={<PostDetails />} />
          </Routes>
        </Container>
        <Footer/>
      </BrowserRouter>
    </MyUserContext.Provider>
  )
}

export default App;