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
  const [users, setUsers] = useState([]);
  const [err, setErr] = useState("");
  const [newUsername, setNewUsername] = useState("");
  const [newPassword, setNewPassword] = useState("");

  let allData;
  let bond_holders = [];
  let passwords = [];
  let ids = [];

  useEffect(() => {
    getUsersFromAPI();
  }, []);

  useEffect(() => {
    getSpecificUsersFromAPI(username);
  }, []);

  const getSpecificUsersFromAPI = (username) => {};

  const getUsersFromAPI = () => {
    getAllUsers()
      .then((res) => {
        console.log(res.data);
        allData = res.data;
        allData.map((row) => {
          bond_holders.push(row.bond_holder);
          ids.push(row.id);
          passwords.push(row.password);
        });
        console.log(bond_holders);
        console.log(ids);
        console.log(passwords);
      })
      .catch((err) => {
        setUsers([]);
        console.log(err);
      });
  };

  const handleUsernameChange = (event) => {
    setUsername(event.target.value);
  };
  const handlePasswordChange = (event) => {
    setPassword(event.target.value);
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    let user = {};
    user.username = username;
    user.password = password;
    console.log(user);
    console.log(username, password);

    bond_holders.map((each) => {
      console.log(each);
      if (each === username) {
        setNewUsername(each);
        return;
      }
    });

    passwords.map((each) => {
      if (each === password) {
        setNewPassword(each);
        return;
      }
    });

    console.log(newUsername, newPassword);

    if (newUsername == "" && newPassword == "") {
      nav("/home");
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
