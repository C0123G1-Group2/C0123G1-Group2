package repository;

import model.Order;
import model.SoccerField;

import java.util.List;

public interface ISoccerFieldRepo {
    List<SoccerField> showListProduct();

    boolean deleteProduct(int maDV);

    boolean addProduct(String tenSan, String tenDV, double gia);

    boolean editProduct(SoccerField soccerField);

    boolean orderProduct(Order order);

    List<SoccerField> searchProduct(String tenDV, String tenLoaiDV);

    List<Order> showListOrder();

    boolean deleteOrder(int orderId);

    boolean editOrder(Order order);
}
