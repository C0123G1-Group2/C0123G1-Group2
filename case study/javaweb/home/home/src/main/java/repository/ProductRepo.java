package repository;

import model.Order;
import model.Product;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductRepo implements IProductRepo{
    private final String SHOWLISTPRODUCT="SELECT * FROM soccer_field;";
    private final String DELETEPRODUCT="DELETE FROM soccer_field WHERE soccer_field_id=?;";
    private final String ADDPRODUCT="INSERT INTO soccer_field (soccer_field_name,soccer_field_type,price) VALUES (?,?,?);";
    private final String EDITPRODUCT="UPDATE soccer_field SET soccer_field_name=?,soccer_field_type=?,price=?,update_at=NOW() WHERE soccer_field_id=?;";
    private final String ODERPRODUCT="INSERT INTO orders(customer_id,soccer_field_id,begin_time,rental_time) VALUES(?,?,?,?)";
    private final String SEARCHPRODUCT=" SELECT * FROM soccer_field WHERE soccer_field_name LIKE ? AND soccer_field_type LIKE ?;";


    @Override
    public List<Product> showListProduct() {
        Connection connection=DBContext.getConnection();
        List<Product> productList=new ArrayList<>();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(SHOWLISTPRODUCT);
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                int maDV = resultSet.getInt("soccer_field_id");
                String tenDV= resultSet.getString("soccer_field_name");
                String tenLoaiDV=resultSet.getString("soccer_field_type");
                double gia = resultSet.getDouble("price");
                Product product=new Product(maDV,tenDV,tenLoaiDV,gia);
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
    public boolean editProduct(int maSan,String tenSan, String tenLoaiSan, double gia) {
        Connection connection=DBContext.getConnection();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(EDITPRODUCT);
            preparedStatement.setString(1, tenSan);
            preparedStatement.setString(2, tenLoaiSan);
            preparedStatement.setDouble(3, gia);
            preparedStatement.setInt(4, maSan);

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
            preparedStatement.setInt(2,order.getSoccerFieldId());
            preparedStatement.setString(3,order.getBeginTime());
            preparedStatement.setInt(4,order.getRentalTime());
            return preparedStatement.executeUpdate()>0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Product> searchProduct(String ten, String tenLoai) {
        List<Product> productList=new ArrayList<>();
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
                Product product=new Product(maDV,tenDV,tenLoaiDV,gia);
                productList.add(product);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return productList;
    }
}
