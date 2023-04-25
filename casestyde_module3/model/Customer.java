package model;

public class Customer extends Person {
    private int customerId;


    public Customer() {
    }

    public Customer(String fullName, String dateOfBirth, String sex, String citizenIdentification, String phoneNumber, int customerId) {
        super(fullName, dateOfBirth, sex, citizenIdentification, phoneNumber);
        this.customerId = customerId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "customerId=" + customerId +
                ", fullName='" + fullName + '\'' +
                ", dateOfBirth='" + dateOfBirth + '\'' +
                ", sex='" + sex + '\'' +
                ", citizenIdentification='" + citizenIdentification + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                '}';
    }
}
