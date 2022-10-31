import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  //day 10 learned about context , constraints
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome Jarvis"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
