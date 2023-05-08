package repository;

import model.Product;

import java.util.List;

public interface IProductRepo {
    List<Product> showListProduct();

    boolean deleteProduct(int maDV);
}
