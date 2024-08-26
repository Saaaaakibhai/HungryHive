import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                Text("Hello Sakib,",
                    style:AppWidget.boldTextFieldStyle()
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.shopping_cart, color: Colors.white,),
                )
              ],
            ),
            SizedBox(height: 20.0,),
            Text("Delicious Food",
                style:AppWidget.HeadLineTextFieldStyle()
            ),
            Text("Discover & Get Great Food",
                style:AppWidget.LightTextFieldStyle()
            ),
          ],
        ),
      ),
    );
  }
}
