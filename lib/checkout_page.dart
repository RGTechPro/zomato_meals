import 'package:flutter/material.dart';
import 'package:zomato_meals/widgets/chef_card.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F6FB),
        appBar: AppBar(
          backgroundColor: Color(0xffF5F6FB),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Add your backward navigation logic here
              Navigator.pop(context);
            },
          ),
          title: Text("Dinner notification"),
        ),
        body: Column(children: [
          SizedBox(
            height: 10,
          ),
          Center(
          child: MyCustomContainer(),
        ),
        SizedBox(
          height: 50,
        ),
        Center(
          child: Text("SUBSCRIPTION(S) ADDED"),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: MyPriceContainer(),
        ),
        SizedBox(
          height: 50,
        ),
        Center(
          child: Text("SAVING CORNER"),
        ),
        SizedBox(
          height: 10,
        ),
        MyCouponContainer(),
        Center(
          child: MyPaymentContainer(),
        ),
        ],
        ),
      ),
    );
  }
}

class MyCustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(Icons.restaurant),
          SizedBox(width: 10),
          Text(
            "Dinner, Timings ",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "8:00 PM",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class MyPriceContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Monthly Dinner",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "By Nisha Madhulika",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF7A7E86),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "Edit",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFF04F5F),
                      ),
                    ),
                    Icon(
                      Icons.arrow_downward,
                      size: 14,
                      color: Color(0xFFF04F5F),
                    ),
                  ],
                ),
                SizedBox(height: 20),
          Divider(
            height: 0.8,
            color: Colors.grey,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.add,
                    size: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Add Specials / Add-ons",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      fontFamily: "OpenSans",
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward,
                size: 20,
              ),
            ],
          ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MyQuantityButton(),
                SizedBox(height: 5),
                Text(
                  "Rs. 3600",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyCouponContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(Icons.local_offer),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              "Apply Coupon",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
          Icon(Icons.arrow_forward),
        ],
      ),
    );
  }
}

class MyPaymentContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(-2, -2),
              blurRadius: 10,
              color: Color.fromRGBO(0, 0, 0, 0.25),
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Delivery at ",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "OpenSans",
                  ),
                ),
                Text(
                  "A-234, The South, Ahmedabad",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  "Change",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFF04F5F),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            SizedBox(height: 10),
            Container(
              width: 230,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFF04F5F),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Move to payment",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      fontFamily: "OpenSans",
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyQuantityButton extends StatefulWidget {
  @override
  _MyQuantityButtonState createState() => _MyQuantityButtonState();
}

class _MyQuantityButtonState extends State<MyQuantityButton> {
  int quantity = 0;

  void _incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _incrementQuantity,
      onLongPress: _decrementQuantity,
      child: Container(
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.remove,
              color: Colors.white,
            ),
            Text(
              '$quantity',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.add,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}