package service;

import model.Order;
import model.SoccerField;
import repository.ISoccerFieldRepo;
import repository.SoccerFieldRepo;

import java.util.List;

public class SoccerFieldService implements ISoccerFieldService {
    private ISoccerFieldRepo productRepo=new SoccerFieldRepo();

    @Override
    public List<SoccerField> showListProduct() {
        List<SoccerField> productList=productRepo.showListProduct();
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
    public boolean editProduct(SoccerField soccerField) {
        return productRepo.editProduct(soccerField);
    }

    @Override
    public boolean orderProduct(Order order) {
        return productRepo.orderProduct(order);
    }

    @Override
    public List<SoccerField> searchProduct(String tenDV, String tenLoaiDV) {
        List<SoccerField> productList=productRepo.searchProduct(tenDV,tenLoaiDV);
        return productList;
    }
}
