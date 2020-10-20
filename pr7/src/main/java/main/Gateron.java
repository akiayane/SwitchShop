package main;

public class Gateron extends Switch {

    protected String manufacturer = "Gateron";

    public Gateron(double price, int opForce, String name, String description, String type, Rate rate) {
        this.price = price;
        this.opForce = opForce;
        this.name = name;
        this.description = description;
        this.type = type;
        this.rate = rate;
    }

    public String getManufacturer() {
        return manufacturer;
    }

}
