import React from "react";
import Form from "react-bootstrap/Form";
import Row from "react-bootstrap/Row";
import Button from "react-bootstrap/Button";
import { useState } from "react";
import { useEffect } from "react";
import { getAllUsers } from "../services/UserServices";
import { useNavigate } from "react-router-dom";

const Login = () => {
  let nav = useNavigate();

  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [err, setErr] = useState("");
  const [allData, setAllData] = useState([]);

  let bond_holders = [];
  let passwords = [];
  let ids = [];

  useEffect(() => {
    getUsersFromAPI();
  }, []);

  const getUsersFromAPI = () => {
    getAllUsers()
      .then((res) => {
        setAllData(res.data);
      })
      .catch((err) => {
        setAllData([]);
        console.log(err);
      });
  };

  console.log(allData);

  const handleUsernameChange = (event) => {
    setUsername(event.target.value);
  };
  const handlePasswordChange = (event) => {
    setPassword(event.target.value);
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    allData.map((row) => {
      bond_holders.push(row.bond_holder);
      ids.push(row.id);
      passwords.push(row.password);
    });

    console.log(bond_holders);
    console.log(ids);
    console.log(passwords);

    console.log(username, password);

    const foundBondHolder = bond_holders.includes(username);
    console.log(foundBondHolder);

    const foundPassword = passwords.includes(password);
    console.log(foundPassword);

    if (foundBondHolder === true && foundPassword === true) {
      nav("/home");
    } else {
      setErr("                  Wrong email and password");
    }
  };
  return (
    <Row className="LoginForm">
      <Form>
        <Form.Group className="mb-3" controlId="username">
          <Form.Label>Username: </Form.Label>
          <Form.Control
            type="text"
            placeholder="Username"
            onChange={handleUsernameChange}
          />
        </Form.Group>
        <Form.Group className="mb-3" controlId="password">
          <Form.Label>Password: </Form.Label>
          <Form.Control
            type="text"
            placeholder="Password"
            onChange={handlePasswordChange}
          />
        </Form.Group>
        <Button variant="primary" type="submit" onClick={handleSubmit}>
          Submit
        </Button>
        {err}
      </Form>
    </Row>
  );
};

export default Login;
