package main;

public class Cherry extends Switch {
    protected String manufacturer = "Cherry";

    public Cherry(double price, int opForce, String name, String description, String type, Rate rate) {
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
