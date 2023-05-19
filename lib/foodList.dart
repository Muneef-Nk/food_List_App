import 'package:flutter/material.dart';

class Foodinfo extends StatelessWidget {
  final String itemName;
  final int itemPrice;

  Foodinfo({required this.itemName, required this.itemPrice});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(

              decoration: BoxDecoration(
                border: Border.all(width: 3),
                color: Colors.red,
                borderRadius: BorderRadius.circular(30)
              ),
              padding: EdgeInsets.only(top: 40),
              width: 300,
              height: 200,
              child: Column(
                children: [
                  Text(
                    itemName,
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$itemPrice',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
