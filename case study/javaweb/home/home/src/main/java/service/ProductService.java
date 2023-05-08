package service;

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
    public boolean deleteProduct(int maDV) {
        boolean check= productRepo.deleteProduct(maDV);
        return check;
    }
}
