package service;

import model.Order;

public class OrderService implements IOrderService{
    IOrderService orderProduct=new OrderService();
    @Override
    public boolean orderProduct(Order order) {
        return orderProduct.orderProduct(order);
    }
}
