import Navbar from './components/navbar/Navbar';
import './App.css';
import Signup from './components/navbar/Signup';
import { Routes, Route } from 'react-router-dom';
import Login from './components/navbar/Login';

function App() {
  return (
    <>
   
    <Routes>
      <Route path='/' element={<Navbar/>}/>
      <Route path='/signup' element={<Signup/>} />
      <Route path='/login' element={<Login/>} />
    </Routes>  
    </>
  );
}

export default App;
