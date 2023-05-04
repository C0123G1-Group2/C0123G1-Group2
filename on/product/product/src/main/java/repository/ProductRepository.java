package repository;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements  IProductRepository{
    public static  List<Product> productList = new ArrayList<>();

    static {
productList.add(new Product(1,"Sữa","23k"));
productList.add(new Product(2,"Trà","23k"));
productList.add(new Product(3,"Chanh","34k"));
productList.add(new Product(4,"Bia","23k"));
productList.add(new Product(5,"Sting","23k"));
productList.add(new Product(6,"LúaMach","50k"));
    }
    @Override
    public List<Product> getAll() {
        return productList;
    }

    @Override
    public void save(Product product) {
        productList.add(product);
    }

    @Override
    public void delete(int id) {
        for (int i = 0; i < productList.size(); i++) {
            if(id==productList.get(i).getId()){
                productList.remove(i);
                break;
            }
        }
    }

    @Override
    public void edit(Product product) {
        int id = product.getId();
        for (int i = 0; i <productList.size() ; i++) {
            if(id==productList.get(i).getId()){
                productList.set(i,product);
            }
        }
    }
}
