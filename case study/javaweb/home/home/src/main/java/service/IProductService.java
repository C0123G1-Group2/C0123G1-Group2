package service;

import model.Product;

import java.util.List;

public interface IProductService {
    List<Product> showListProduct();

    boolean deleteProduct(int maDV);
}
