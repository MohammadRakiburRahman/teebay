import React, { useState, useEffect } from 'react';
import axios from 'axios';
import 'bootstrap/dist/css/bootstrap.min.css';

const ProductList = () => {
  const [products, setProducts] = useState([]);
  const [selectedProduct, setSelectedProduct] = useState(null);
  const [formData, setFormData] = useState({
    username: '',
    password: '',
    email: ''
  });

  useEffect(() => {
    const fetchProducts = async () => {
      const response = await axios.get('http://127.0.0.1:8000/products');
      setProducts(response.data);
    };

    fetchProducts();
  }, []);

  const handleProductClick = (product) => {
    setSelectedProduct(product);
  };

  const handleCloseModal = () => {
    setSelectedProduct(null);
  };

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setFormData({ ...formData, [name]: value });
  };

  const handleBuy = async () => {
    try {
      const response = await axios.post(`http://127.0.0.1:8000/products/${selectedProduct.id}/buy/`, formData);
      console.log(response.data);
      // Handle success message or redirect
    } catch (error) {
      console.error('Buy failed:', error.response.data);
      // Handle error message
    }
  };

  const handleRent = () => {
    // Implement logic for rent action
    console.log("Rent action for product:", selectedProduct);
  };

  return (
    <div className="container py-5">
      <h1>ALL PRODUCTS</h1>
      <div className="row row-cols-1 row-cols-md-2 g-4">
        {products.map((product) => (
          <div className="col mb-4" key={product.id}>
            <div className="card shadow-sm" onClick={() => handleProductClick(product)}>
              <div className="card-body">
                <h5 className="card-title">{product.name}</h5>
                <p className="card-text">Price: ${product.price}</p>
                {product.rent_price && <p className="card-text">Rent Price: ${product.rent_price}</p>}
                <div className="d-flex justify-content-between align-items-center">
                </div>
                <p className="card-text text-truncate">{product.description}</p>
                <a href="#" className="btn btn-primary">More Details</a>
              </div>
            </div>
          </div>
        ))}
      </div>

      {/* Product Modal */}
      {selectedProduct && (
        <div className="modal" tabIndex="-1" style={{ display: 'block', backgroundColor: 'rgba(0, 0, 0, 0.5)', zIndex: 1000 }}>
          <div className="modal-dialog modal-dialog-centered">
            <div className="modal-content">
              <div className="modal-header">
                <h5 className="modal-title">{selectedProduct.name}</h5>
                <button type="button" className="btn-close" onClick={handleCloseModal}></button>
              </div>
              <div className="modal-body">
                <p>{selectedProduct.description}</p>
                <p>Price: ${selectedProduct.price}</p>
                {selectedProduct.rent_price && <p>Rent Price Per Hour: ${selectedProduct.rent_price}</p>}

                {/* Form for buying product */}
                <form>
                  <div className="mb-3">
                    <label htmlFor="username" className="form-label">Username</label>
                    <input type="text" className="form-control" id="username" name="username" value={formData.username} onChange={handleInputChange} required />
                  </div>
                  <div className="mb-3">
                    <label htmlFor="password" className="form-label">Password</label>
                    <input type="password" className="form-control" id="password" name="password" value={formData.password} onChange={handleInputChange} required />
                  </div>
                  <div className="mb-3">
                    <label htmlFor="email" className="form-label">Email</label>
                    <input type="email" className="form-control" id="email" name="email" value={formData.email} onChange={handleInputChange} required />
                  </div>
                </form>
              </div>
              <div className="modal-footer">
                <button type="button" className="btn btn-primary" onClick={handleBuy}>Buy</button>
                <button type="button" className="btn btn-primary" onClick={handleRent}>Rent</button>
                <button type="button" className="btn btn-secondary" onClick={handleCloseModal}>Close</button>
              </div>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default ProductList;
