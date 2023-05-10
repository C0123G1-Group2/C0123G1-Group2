package service;

import model.Order;
import model.Product;
import repository.IProductRepo;
import repository.ProductRepo;

import java.util.List;

public class ProductService implements IProductService{
    IProductRepo productRepo=new ProductRepo();

    @Override
    public List<Product> showListProduct() {
        List<Product> productList=productRepo.showListProduct();
        return productList;
    }

    @Override
    public boolean deleteProduct(int maSan) {
        boolean check= productRepo.deleteProduct(maSan);
        return check;
    }

    @Override
    public boolean addProduct(String tenSan, String tenDV, double gia) {
        boolean check= productRepo.addProduct(tenSan,tenDV,gia);
        return check;
    }

    @Override
    public boolean editProduct(int maSan,String tenSan, String tenLoaiSan, double gia) {
        return productRepo.editProduct(maSan,tenSan,tenLoaiSan,gia);
    }

    @Override
    public boolean orderProduct(Order order) {
        return productRepo.orderProduct(order);
    }

    @Override
    public List<Product> searchProduct(String tenDV,String tenLoaiDV) {
        List<Product> productList=productRepo.searchProduct(tenDV,tenLoaiDV);
        return productList;
    }
}
