import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_1/models/catalog.dart';
import 'package:flutter_1/widgets/drawer.dart';
import 'package:flutter_1/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Jarvis";
  //day 10 learned about context , constraints
  @override
  void initState() {
    super.initState();
    loaddata();
  }

  loaddata() async {
    var catalogjson = rootBundle.loadString("assets/file/catalog.json");
    var decodedata = jsonDecode("assets/file/catalog.json");
    print(decodedata);
  }

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
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CalatogModel.item[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
