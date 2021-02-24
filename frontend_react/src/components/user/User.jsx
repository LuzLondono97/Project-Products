import React from 'react';
import './User.css';

const User = (props) => {
    return (
        <div className="user-container">
            {props.usuarios.map((item, index) => {
                return (
                    <div className="container-name" key={index}>
                        <h2>Nombre : {item.nombre}</h2>
                        <h2>Clave : {item.clave}</h2>
                    </div>
                );
            })}
        </div>
    );
};

export default User;