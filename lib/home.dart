import 'package:flutter/material.dart';
import 'package:food_list/info.dart';
import './foodList.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text(FoodList.appName)),),
        body: _listView(context),
    );
  }
}

  ListView _listView(BuildContext context) {
    return ListView.builder(
      itemCount: FoodList.items.length,
      itemBuilder: (BuildContext, index){
      return Card(
        elevation: 3,
        color: Colors.red[400],
        child: ListTile(
          title: Text('${FoodList.items[index]}',style: TextStyle(color: Colors.white),),
          subtitle: Text('${FoodList.price[index]}',style: TextStyle(color: Colors.white)),
          leading: Icon(Icons.food_bank_sharp),
          trailing:  IconButton(
              onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Foodinfo(itemName: FoodList.items[index], itemPrice: FoodList.price[index])));
          }, icon: const Icon(Icons.arrow_forward_rounded,color: Colors.white),)
        ),
      );
      },
    );
  }

