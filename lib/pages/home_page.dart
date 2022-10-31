import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
