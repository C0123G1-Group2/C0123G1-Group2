package service;

import model.Product;

import java.util.List;

public interface IProductService {
    List<Product> showListProduct();

    boolean deleteProduct(int maDV);

    boolean addProduct(String tenSan, String tenDV, double gia);

    boolean editProduct(int maSan,String tenSan, String tenLoaiSan, double gia);
}
