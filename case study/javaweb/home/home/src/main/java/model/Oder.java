package model;

public class Oder {
    private int soccerFieldId;
    private String beginTime;
    private int rentalTime;

    public Oder() {
    }

    public Oder(int soccerFieldId, String beginTime, int rentalTime) {
        this.soccerFieldId = soccerFieldId;
        this.beginTime = beginTime;
        this.rentalTime = rentalTime;
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
