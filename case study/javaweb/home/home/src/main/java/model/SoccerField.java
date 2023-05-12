package model;

public class SoccerField {
    private int soccerFieldId;
    private String soccerFieldName;
    private String soccerFieldType;
    private double price;

    public SoccerField() {
    }

    public SoccerField(int soccerFieldId, String soccerFieldName, String soccerFieldType, double price) {
        this.soccerFieldId = soccerFieldId;
        this.soccerFieldName = soccerFieldName;
        this.soccerFieldType = soccerFieldType;
        this.price = price;
    }

    public int getSoccerFieldId() {
        return soccerFieldId;
    }

    public void setSoccerFieldId(int soccerFieldId) {
        this.soccerFieldId = soccerFieldId;
    }

    public String getSoccerFieldName() {
        return soccerFieldName;
    }

    public void setSoccerFieldName(String soccerFieldName) {
        this.soccerFieldName = soccerFieldName;
    }

    public String getSoccerFieldType() {
        return soccerFieldType;
    }

    public void setSoccerFieldType(String soccerFieldType) {
        this.soccerFieldType = soccerFieldType;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
