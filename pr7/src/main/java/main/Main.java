package main;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Main{

    public static void main(String[] args) throws Exception {
        Switch gat = new Gateron(2, 55, "Blue",
                "Often referred to as 'stiffer' browns. As a tactile switch without click and acoustic feedback, " +
                        "the CHERRY MX Clear is the sister model of the MX Brown. With an actuation force of 65 centinewton, " +
                        "the required force is slightly higher. The Cherry MX Clear is sometimes used as the space bar " +
                        "for keyboards with MX Brown switches.", "tactile", new Rate(8.26, 8.23, 9));
        Switch kal = new Kailh(2, 60, "pink",
                "Often referred to as 'stiffer' browns. As a tactile switch without click and acoustic feedback, " +
                        "the CHERRY MX Clear is the sister model of the MX Brown. With an actuation force of 65 centinewton, " +
                        "the required force is slightly higher. The Cherry MX Clear is sometimes used as the space bar " +
                        "for keyboards with MX Brown switches.", "tactile", new Rate(8.26, 8.23, 9));


        Cart cart = new Cart();
        cart.addOrder(gat, 15);
        cart.addOrder(kal, 50);
        System.out.println(cart.getTotal());
    }

}