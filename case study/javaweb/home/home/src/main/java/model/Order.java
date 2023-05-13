package model;

public class Order {
    private  int orderId;
    private int customerId;
    private int employeeId;
    private int soccerFieldId;
    private String beginTime;
    private int rentalTime;
    private double totalPrice;

    public Order() {
    }

    public Order(int orderId, int customerId, int employeeId, int soccerFieldId, String beginTime, int rentalTime, double totalPrice) {
        this.orderId = orderId;
        this.customerId = customerId;
        this.employeeId = employeeId;
        this.soccerFieldId = soccerFieldId;
        this.beginTime = beginTime;
        this.rentalTime = rentalTime;
        this.totalPrice = totalPrice;
    }

    public Order(int customerId, int employeeId, int soccerFieldId, String beginTime, int rentalTime, double totalPrice) {
        this.customerId = customerId;
        this.employeeId = employeeId;
        this.soccerFieldId = soccerFieldId;
        this.beginTime = beginTime;
        this.rentalTime = rentalTime;
        this.totalPrice = totalPrice;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getSoccerFieldId() {
        return soccerFieldId;
    }

    public void setSoccerFieldId(int soccerFieldId) {
        this.soccerFieldId = soccerFieldId;
    }

    public String getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(String beginTime) {
        this.beginTime = beginTime;
    }

    public int getRentalTime() {
        return rentalTime;
    }

    public void setRentalTime(int rentalTime) {
        this.rentalTime = rentalTime;
    }
}
