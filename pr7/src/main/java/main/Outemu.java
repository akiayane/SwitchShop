package main;

public class Outemu extends Switch {
    protected String manufacturer = "Outemu";

    public Outemu(double price, int opForce, String name, String type, Rate rate) {
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
