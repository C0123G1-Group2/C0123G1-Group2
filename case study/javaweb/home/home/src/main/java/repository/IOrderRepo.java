package repository;

import model.Order;

public interface IOrderRepo {
    boolean orderProduct(Order order);
}
