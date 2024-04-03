import React, { useState } from 'react';
import axios from 'axios';

const Login = ({ history }) => {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const [successMessage, setSuccessMessage] = useState('');

  const handleLogin = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.post('http://127.0.0.1:8000/login/', { username, password });
      // Check if response is undefined
      if (!response) {
        setError('An error occurred during login. Please try again.');
        return; // Exit the function if response is undefined
      }
      console.log(response.data);
      if (response.data.message === 'Login successful') {
        setSuccessMessage('Login successful!');
        history.push('/products'); // Use history from props to navigate
      } else {
        setError(response.data.message || 'Invalid credentials'); // Use specific error message if available
      }
    } catch (error) {
      setError('Unable to redirec to products please Go to http://localhost:3000/product your login is OK'); // Handle network errors
    }
  };

  return (
    <div className="container mt-5">
      <div className="row justify-content-center">
        <div className="col-md-6">
          <div className="card">
            <div className="card-header">Login</div>
            <div className="card-body">
              <form onSubmit={handleLogin}>
                <div className="mb-3">
                  <label className="form-label">Username:</label>
                  <input
                    type="text"
                    className="form-control"
                    value={username}
                    onChange={(e) => setUsername(e.target.value)}
                  />
                </div>
                <div className="mb-3">
                  <label className="form-label">Password:</label>
                  <input
                    type="password"
                    className="form-control"
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                  />
                </div>
                <button type="submit" className="btn btn-primary">Login</button>
              </form>
              {error && <p className="text-danger mt-3">{error}</p>}
              {successMessage && <p className="text-success mt-3">{successMessage}</p>}
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Login;
