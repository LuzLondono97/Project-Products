import React, { useState } from 'react';
import './Login.css';

const Login = (props) => {
    const [ user, setUser ] = useState({});
    
    const handleCapture = (event) => {
        setUser({
            ...user,
            [event.target.name]: event.target.value
        });
    };

    const handleClick = (e) => {
        e.preventDefault();
        props.handleSetUser([ ...props.users, { nombre: user.nombre, clave: user.clave} ]);
    };
    

    return (
        <div className="login-container">
            <img className="img-avatar" src="../img/logo.png" alt="img-send"/>
            <input className="input-data" type="text" name="nombre" placeholder="Username" onChange={handleCapture}/>
            <input className="input-data" type="password" name="clave" placeholder="Password" onChange={handleCapture}/>
            <button className="btn-send" onClick={handleClick}>
                Send
            </button>
        </div>
    );
};

export default Login;