

import React, { useState } from 'react';
import axios from 'axios';

const BuyProductForm = ({ productId, onClose }) => {
  const [formData, setFormData] = useState({
    username: '',
    password: '',
    email: ''
  });

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.post(`http://127.0.0.1:8000/products/${productId}/buy/`, formData);
      console.log(response.data);
      onClose();
      // Handle success message or redirect
    } catch (error) {
      console.error('Buy failed:', error.response.data);
      // Handle error message
    }
  };

  return (
    <div className="container py-5">
      <h2>Buy Product</h2>
      <form onSubmit={handleSubmit}>
        <div className="mb-3">
          <label htmlFor="username" className="form-label">Username</label>
          <input type="text" className="form-control" id="username" name="username" value={formData.username} onChange={handleChange} required />
        </div>
        <div className="mb-3">
          <label htmlFor="password" className="form-label">Password</label>
          <input type="password" className="form-control" id="password" name="password" value={formData.password} onChange={handleChange} required />
        </div>
        <div className="mb-3">
          <label htmlFor="email" className="form-label">Email</label>
          <input type="email" className="form-control" id="email" name="email" value={formData.email} onChange={handleChange} required />
        </div>
        <button type="submit" className="btn btn-primary">Buy Product</button>
      </form>
    </div>
  );
};

export default BuyProductForm;
