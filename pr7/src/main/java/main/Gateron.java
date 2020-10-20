package main;

public class Gateron extends Switch {

    public String manufacturer = "Gateron";

    public Gateron(double price, int opForce, String name, String type, Rate rate) {
        this.price = price;
        this.opForce = opForce;
        this.name = name;
        this.type = type;
        this.rate = rate;
    }
    @Override
    public String getManufacturer() {
        return manufacturer;
    }

}
