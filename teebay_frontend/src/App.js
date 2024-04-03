import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Login from './components/Login';
import ProductList from './components/ProductList';
import RegistrationPage from './components/RegistrationPage';

const App = () => {
  return (
    <Router>
      <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', minHeight: '100vh' }}>
        <h1>Welcome to TEEBAY</h1>
        <Routes>
          <Route exact path="/login" element={<Login />} />
          <Route path="/products" element={<ProductList />} />
          <Route path="/register" element={<RegistrationPage />} />
        </Routes>
      </div>
    </Router>
  );
};

export default App;
