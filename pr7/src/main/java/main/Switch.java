package main;

abstract public class Switch implements encode {
    protected double price;
    protected int opForce;
    protected String name;
    protected String description;
    protected String type;
    protected Rate rate;

    public double getPrice() {
        return price;
    }

    public int getOpForce() {
        return opForce;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getType() {
        return type;
    }

    public Rate getRate() {
        return rate;
    }
}
