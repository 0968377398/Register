package com.example.t2009m1helloworld.Model;

import com.example.t2009m1helloworld.Entity.Product;


import java.util.List;

public interface ProductModel {
    boolean save(Product product);
    boolean update(int id, Product product);
    boolean delete(int id);
    Product findById(int id);
    List<Product> findAll();
}