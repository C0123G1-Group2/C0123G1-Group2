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
    public boolean deleteProduct(int maDV) {
        Connection connection=DBContext.getConnection();
        try {
            PreparedStatement preparedStatement= connection.prepareStatement(DELETEPRODUCT);
            preparedStatement.setString(1, String.valueOf(maDV));
            int resultSet=preparedStatement.executeUpdate();
            if (resultSet<=0){
                return false;
            }else {
                return true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
