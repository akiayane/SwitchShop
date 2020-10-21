package main;

public class Order {
    public Switch switchName;
    public int quantity;

    public Order(Switch switchName, int quantity) {
        this.switchName = switchName;
        this.quantity = quantity;
    }

    public double getTotalPrice(){
        return switchName.getPrice() * quantity;
    }

    public String printOrder(){
        return "|" + quantity + " " + switchName.getManufacturer() + " " + switchName.name;
    }
}
