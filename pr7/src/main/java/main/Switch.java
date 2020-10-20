package main;

abstract public class Switch implements encode {
    public double price;
    public int opForce;
    public String name;
    public String type;
    public Rate rate;

    public double getPrice() {
        return price;
    }

    public int getOpForce() {
        return opForce;
    }

    public String getName() {
        return name;
    }


    public String getType() {
        return type;
    }

    public Rate getRate() {
        return rate;
    }

    public String getManufacturer(){
        return "";
    }
}
