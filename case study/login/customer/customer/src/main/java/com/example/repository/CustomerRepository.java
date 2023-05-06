package com.example.repository;

import com.example.model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private static List<Customer> customerList = new ArrayList<>();

    static {
        customerList.add(new Customer(1, "Nguyễn Đức Thắng", "0782391943", "Hòa Xuân,Cẩm Lệ,Đà Nẵng", "nguyenthangfa2001@gmail.com"));
        customerList.add(new Customer(2, "Nguyễn Đức Thành", "078232345", "Hòa Xuân,Cẩm Lệ,Đà Nẵng", "nguyenthangfa2001@gmail.com"));
        customerList.add(new Customer(3, "Nguyễn Đức Thống", "033987789", "Khuê Trung,Cẩm Lệ,Đà Nẵng", "nguyenthangfa2001@gmail.com"));
        customerList.add(new Customer(4, "Nguyễn Đức Thịnh", "0905378291", "Hòa Thọ Đông,Cẩm Lệ,Đà Nẵng", "nguyenthangfa2001@gmail.com"));
        customerList.add(new Customer(5, "Nguyễn Đức Thanh", "0914000627", "Hòa Thọ Tây,Cẩm Lệ,Đà Nẵng", "nguyenthangfa2001@gmail.com"));
        customerList.add(new Customer(6, "Nguyễn Đức Thạnh", "0782391999", "Hòa An,Cẩm Lệ,Đà Nẵng", "nguyenthangfa2001@gmail.com"));
        customerList.add(new Customer(7, "Nguyễn Đức Nhân", "0782391943", "Hòa Phát,Cẩm Lệ,Đà Nẵng", "nguyenthangfa2001@gmail.com"));
        customerList.add(new Customer(8, "Nguyễn Đức Hoàng", "0987782289", "Hòa Xuân,Cẩm Lệ,Đà Nẵng", "nguyenthangfa2001@gmail.com"));
    }


    @Override
    public List<Customer> getAll() {
        return customerList;
    }

    @Override
    public void save(Customer customer) {
        customerList.add(customer);
    }

    @Override
    public void delete(int id) {
        for (int i = 0; i < customerList.size(); i++) {
            if (id == customerList.get(i).getCustomerId()) {
                customerList.remove(i);
                break;
            }
        }
    }

    @Override
    public void edit(Customer customer) {
        int id = customer.getCustomerId();
        for (int i = 0; i <customerList.size() ; i++) {
            if(id== customerList.get(i).getCustomerId()){
                customerList.set(i,customer);
            }
        }
    }
}
