import 'package:flutter/material.dart';
import 'package:flutter_1/models/catalog.dart';
import 'package:flutter_1/widgets/drawer.dart';
import 'package:flutter_1/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  //day 10 learned about context , constraints
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CalatogModel.item.length,
          itemBuilder: (context,index){
          return ItemWidget(item:CalatogModel.item[index],);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
