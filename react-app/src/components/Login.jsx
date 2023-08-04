import React from 'react'
import Form from 'react-bootstrap/Form'
import Row from 'react-bootstrap/Row'
import Button from 'react-bootstrap/Button'
import { useState } from 'react';


const Login = () => {
    const [username, setUsername] = useState('');
    const [password, setPassword] = useState('');

    const handleUsernameChange = (event)=>{
        setUsername(event.target.value);
    }
    const handlePasswordChange = (event)=>{
        setPassword(event.target.value);
    }
    const handleSubmit =(event)=>{
        event.preventDefault();
        let user = {};
        user.username = username;
        user.password = password;
        console.log(user);
    }
  return (
<Row className='LoginForm'>
    <Form>
      <Form.Group className="mb-3" controlId="username">
         <Form.Label>Username: </Form.Label>
            <Form.Control type="text" placeholder="Username" 
            onChange={handleUsernameChange}/>
      </Form.Group>
      <Form.Group className="mb-3" controlId="password">
            <Form.Label>Password: </Form.Label>
            <Form.Control type="text" placeholder="Password" 
            onChange={handlePasswordChange}/>
      </Form.Group>
            <Button variant="primary" type="submit" onClick={handleSubmit}>
            Submit
            </Button>
      </Form>
</Row>
  )
}

export default Login