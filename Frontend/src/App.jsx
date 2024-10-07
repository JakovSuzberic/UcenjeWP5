import './App.css'
import Container from 'react-bootstrap/Container';
import 'bootstrap/dist/css/bootstrap.min.css';
import NavBarEdunova from './components/NavBarEdunova';
import { Routes } from 'react-router-dom';
import { RouteNames } from './constants';

function App() {
  

  return (
    <>
    <Container>
      <NavBarEdunova />
      <Routes>
        <Route path={RouteNames.HOME} element={<Pocetna/>} />

        <Route path={RouteNames.SMJER_PREGLED} element={<SmjeroviPregled/>} />



      </Routes>
      
    </Container>
    </>
  )
}

export default App
