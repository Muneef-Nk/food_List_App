import 'package:flutter/material.dart';
import 'home.dart';

void main(){
  runApp(FoodList());
}


class FoodList extends StatelessWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.red[400])
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
