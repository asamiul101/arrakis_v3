import React from "react";
import Login from "./components/Login";
import Home from "./components/Home";
import Container from "react-bootstrap/Container";
import Nav from "react-bootstrap/Nav";
import Navbar from "react-bootstrap/Navbar";
import { Routes, Route } from "react-router-dom";
import "./App.css";
import Footer from "./components/footer";

const App = () => {
  return (
    <>
    <Footer />
      <Navbar className="NavBar">
        <img src={require("./Images/db-logo.jpg")} width={70} height={70} />
        {/* <Container className="NavBar-list">
              <ul className="NavBar-list">
              <Nav.Link href="/home">Home  </Nav.Link>
              <h1> </h1>
              <Nav.Link href="/">  Login  </Nav.Link>
              <h1> </h1>
              <Nav.Link href="#adduser">  Add User</Nav.Link>
              </ul>
        </Container> */}
      </Navbar>

      <Routes>
        <Route path="/" element={<Login />} />
        <Route path="/home" element={<Home />} />
      </Routes>
    </>
    
  );
};

export default App;
