import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, salad = false, burger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello Ishrak,", style: AppWidget.boldTextFieldStyle()),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Delicious Food", style: AppWidget.HeadLineTextFieldStyle()),
            Text("Discover & Get Great Food",
                style: AppWidget.LightTextFieldStyle()),
            SizedBox(
              height: 20.0,
            ),
            
            showItem(),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Material(
                  elevation: 5.0,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25.0,
                        ),
                        Image.asset(
                          "images/pizzareal.png",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Mashroom Pizza",
                          style: AppWidget.SemiBoldTextFieldStyle(),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "So Healthy & Delicious",
                          style: AppWidget.LightTextFieldStyle(),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "\$50",
                          style: AppWidget.SemiBoldTextFieldStyle(),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            pizza = true;
            burger = false;
            salad = false;
            icecream = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza ? Colors.orange : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(6),
              child: Image.asset("images/pizza.png",
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                  color: pizza ? Colors.white : Colors.black),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            pizza = false;
            burger = true;
            salad = false;
            icecream = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: burger ? Colors.red : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(6),
              child: Image.asset("images/burger.png",
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                  color: burger ? Colors.white : Colors.black),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            pizza = false;
            burger = false;
            salad = true;
            icecream = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: salad ? Colors.lightGreen : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(6),
              child: Image.asset("images/salad.png",
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                  color: salad ? Colors.white : Colors.black),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            pizza = false;
            burger = false;
            salad = false;
            icecream = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: icecream ? Colors.pinkAccent : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(6),
              child: Image.asset("images/icecream.png",
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                  color: icecream ? Colors.white : Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
