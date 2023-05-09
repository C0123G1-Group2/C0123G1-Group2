package repository;

import model.Product;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductRepo implements IProductRepo{
    private final String SHOWLISTPRODUCT="SELECT * FROM san_bong;";
    private final String DELETEPRODUCT="DELETE FROM san_bong WHERE ma_san_bong=?;";
    private final String ADDPRODUCT="INSERT INTO san_bong (ten_san_bong,loai_san_bong,gia) VALUES (?,?,?);";
    private final String EDITPRODUCT="UPDATE san_bong SET ten_san_bong=?,loai_san_bong=?,gia=? WHERE ma_san_bong=?;";


    @Override
    public List<Product> showListProduct() {
        Connection connection=DBContext.getConnection();
        List<Product> productList=new ArrayList<>();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(SHOWLISTPRODUCT);
            ResultSet resultSet=preparedStatement.executeQuery();
            while (resultSet.next()){
                int maDV = resultSet.getInt("ma_san_bong");
                String tenDV= resultSet.getString("ten_san_bong");
                String tenLoaiDV=resultSet.getString("loai_san_bong");
                double gia = resultSet.getDouble("gia");
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
}
