package model;

public class Employee {
    private int employeeID;
    private String employeeName;
    private String dayOfBirth;
    private String phoneNumber;
    private String email;

    public Employee() {
    }

    public Employee(String employeeName, String dayOfBirth, String phoneNumber, String email) {
        this.employeeName = employeeName;
        this.dayOfBirth = dayOfBirth;
        this.phoneNumber = phoneNumber;
        this.email = email;
    }

    public Employee(int employeeID, String employeeName, String dayOfBirth, String phoneNumber, String email) {
        this.employeeID = employeeID;
        this.employeeName = employeeName;
        this.dayOfBirth = dayOfBirth;
        this.phoneNumber = phoneNumber;
        this.email = email;
    }

    public int getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(int employeeID) {
        this.employeeID = employeeID;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getDayOfBirth() {
        return dayOfBirth;
    }

    public void setDayOfBirth(String dayOfBirth) {
        this.dayOfBirth = dayOfBirth;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
