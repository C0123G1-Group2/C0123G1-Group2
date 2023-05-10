package repository;

import model.Order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OrderRepo implements IOrderRepo{
    private final String ODERPRODUCT="INSERT INTO orders(customer_id,employee_id,soccer_field_id,begin_time,rental_time,total_price) VALUES(?,?,?,?,?,?)";
    @Override
    public boolean orderProduct(Order order) {
        Connection connection=DBContext.getConnection();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(ODERPRODUCT);
            preparedStatement.setInt(1,1);
            preparedStatement.setInt(2,1);
            preparedStatement.setInt(3,order.getSoccerFieldId());
            preparedStatement.setString(4,order.getBeginTime());
            preparedStatement.setInt(5,order.getRentalTime());
            preparedStatement.setDouble(6,order.getTotalPrice());
            return preparedStatement.executeUpdate()>0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
