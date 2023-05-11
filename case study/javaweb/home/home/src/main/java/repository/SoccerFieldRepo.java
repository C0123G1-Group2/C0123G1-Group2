package repository;

import model.Order;
import model.SoccerField;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SoccerFieldRepo implements ISoccerFieldRepo {
    private final String SHOWLISTPRODUCT="SELECT * FROM soccer_field;";
    private final String DELETEPRODUCT="DELETE FROM soccer_field WHERE soccer_field_id=?;";
    private final String ADDPRODUCT="INSERT INTO soccer_field (soccer_field_name,soccer_field_type,price) VALUES (?,?,?);";
    private final String EDITPRODUCT="UPDATE soccer_field SET soccer_field_name=?,soccer_field_type=?,price=?,update_at=NOW() WHERE soccer_field_id=?;";
    private final String ODERPRODUCT="INSERT INTO orders(customer_id,employee_id,soccer_field_id,begin_time,rental_time,total_price) VALUES(?,?,?,?,?,?)";
    private final String SEARCHPRODUCT=" SELECT * FROM soccer_field WHERE soccer_field_name LIKE ? AND soccer_field_type LIKE ?;";


    @Override
    public List<SoccerField> showListProduct() {
        Connection connection=DBContext.getConnection();
        List<SoccerField> productList=new ArrayList<>();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(SHOWLISTPRODUCT);
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                int maDV = resultSet.getInt("soccer_field_id");
                String tenDV= resultSet.getString("soccer_field_name");
                String tenLoaiDV=resultSet.getString("soccer_field_type");
                double gia = resultSet.getDouble("price");
                SoccerField product=new SoccerField(maDV,tenDV,tenLoaiDV,gia);
                productList.add(product);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return productList;
    }

    @Override
    public boolean deleteProduct(int maSan) {
        Connection connection=DBContext.getConnection();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(DELETEPRODUCT);
            preparedStatement.setString(1, String.valueOf(maSan));
            boolean check= preparedStatement.executeUpdate()>0;
            return check;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public boolean addProduct(String tenSan, String tenDV, double gia) {
        Connection connection=DBContext.getConnection();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(ADDPRODUCT);
            preparedStatement.setString(1, String.valueOf(tenSan));
            preparedStatement.setString(2, String.valueOf(tenDV));
            preparedStatement.setDouble(3, Double.parseDouble(String.valueOf(gia)));
            boolean check= preparedStatement.executeUpdate()>0;
            return check;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean editProduct(SoccerField soccerField) {
        Connection connection=DBContext.getConnection();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(EDITPRODUCT);
            preparedStatement.setString(1, soccerField.getSoccerFieldName());
            preparedStatement.setString(2, soccerField.getSoccerFieldType());
            preparedStatement.setDouble(3, soccerField.getPrice());
            preparedStatement.setInt(4, soccerField.getSoccerFieldId());

            boolean check= preparedStatement.executeUpdate()>0;
            return check;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

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

    @Override
    public List<SoccerField> searchProduct(String ten, String tenLoai) {
        List<SoccerField> productList=new ArrayList<>();
        Connection connection=DBContext.getConnection();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(SEARCHPRODUCT);
            preparedStatement.setString(1,"%"+ten+"%");
            preparedStatement.setString(2, "%"+tenLoai+"%");
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                int maDV = resultSet.getInt("soccer_field_id");
                String tenDV= resultSet.getString("soccer_field_name");
                String tenLoaiDV=resultSet.getString("soccer_field_type");
                double gia = resultSet.getDouble("price");
                SoccerField product=new SoccerField(maDV,tenDV,tenLoaiDV,gia);
                productList.add(product);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return productList;
    }
}
