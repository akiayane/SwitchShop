package main;

import java.util.LinkedList;

public class Cart {
    public LinkedList<Order> cart;

    public Cart(){
        cart = new LinkedList<>();
    }

    public double getTotal(){
        double total=0;

        for (Order item : cart){
            total += item.getTotalPrice();
        }

        return total;
    }

    public void addOrder(Switch switchname, int quantity){
        cart.add(new Order(switchname, quantity));
    }

    public void getAllOrders(){
        for (Order item : cart){
            item.printOrder();
        }
    }
}
