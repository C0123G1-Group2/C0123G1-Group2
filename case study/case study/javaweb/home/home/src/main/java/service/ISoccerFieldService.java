package service;

import model.Order;
import model.SoccerField;

import java.util.List;

public interface ISoccerFieldService {
    List<SoccerField> showListProduct();

    boolean deleteProduct(int maDV);

    boolean addProduct(String tenSan, String tenDV, double gia);

    boolean editProduct(SoccerField soccerField);

    boolean orderProduct(Order order);

    List<SoccerField> searchProduct(String tenDV, String tenLoaiDV);
}
