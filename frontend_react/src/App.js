import './App.css';
import Login from './components/login/Login';
import User from './components/user/User';
import { useState } from 'react';

const Users = [
  {
    nombre: "Luz",
    clave:23
  },
  {
    nombre: "Manuel",
    clave:26
  }
]

function App() {
  const [userData, setUserData] = useState(Users);
  return (
    <div className="App">
        <Login handleSetUser={setUserData} users={userData}></Login>
        <User usuarios={userData}></User>
    </div>
  );
}

export default App;
