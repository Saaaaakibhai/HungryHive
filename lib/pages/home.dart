import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/pages/details.dart';
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
        margin: EdgeInsets.only(
          top: 50.0,
          left: 20.0,
          right: 20.0, // Added right margin
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello Mahedi Hasan,",
                    style: AppWidget.boldTextFieldStyle()),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
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
            Container(child: showItem()),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
              },
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    foodItemCard("Mashroom Pizza", "So Healthy & Delicious", 500,
                        "images/pizzareal.png"),
                    SizedBox(
                      width: 10.0,
                    ),
                    foodItemCard("Pizza with extra cheese",
                        "Unique Taste in Dhaka City", 450, "images/pizzareal.png"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
              },
              child: Container(
                margin: EdgeInsets.all(4),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child:
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "images/saladreal2.png",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Italian Special Salad v2",
                                  style: AppWidget.SemiBoldTextFieldStyle()),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text("Multiple type of Vegetable used here",
                                  style: AppWidget.LightTextFieldStyle()),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text("\৳ 350",
                                  style: AppWidget.SemiBoldTextFieldStyle()),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        categoryItem("images/pizza.png", pizza, Colors.orange, () {
          setState(() {
            pizza = true;
            burger = false;
            salad = false;
            icecream = false;
          });
        }),
        categoryItem("images/burger.png", burger, Colors.red, () {
          setState(() {
            pizza = false;
            burger = true;
            salad = false;
            icecream = false;
          });
        }),
        categoryItem("images/salad.png", salad, Colors.lightGreen, () {
          setState(() {
            pizza = false;
            burger = false;
            salad = true;
            icecream = false;
          });
        }),
        categoryItem("images/icecream.png", icecream, Colors.pinkAccent, () {
          setState(() {
            pizza = false;
            burger = false;
            salad = false;
            icecream = true;
          });
        }),
      ],
    );
  }

  Widget categoryItem(String image, bool selected, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
              color: selected ? color : Colors.white,
              borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.all(6),
          child: Image.asset(image,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
              color: selected ? Colors.white : Colors.black),
        ),
      ),
    );
  }

  Widget foodItemCard(String title, String subtitle, int price, String imagePath) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25.0,
              ),
              Image.asset(
                imagePath,
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
              Text(
                title,
                style: AppWidget.SemiBoldTextFieldStyle(),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                subtitle,
                style: AppWidget.LightTextFieldStyle(),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "\৳ $price",
                style: AppWidget.SemiBoldTextFieldStyle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
