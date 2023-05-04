package model;

public class Services {
    private  int id;
    private  String servicesName ;
    private String price ;

    public Services() {
    }

    public Services(int servicesId, String servicesName, String price) {
        this.id = servicesId;
        this.servicesName = servicesName;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getServicesName() {
        return servicesName;
    }

    public void setServicesName(String servicesName) {
        this.servicesName = servicesName;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
}
