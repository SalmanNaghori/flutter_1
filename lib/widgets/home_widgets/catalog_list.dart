import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/pages/home_detail_page.dart';
import 'package:flutter_1/widgets/home_widgets/catalog_item.dart';

import '../../models/catalog.dart';
import '../../pages/home_page.dart';

class CatalogList extends StatefulWidget {
  const CatalogList({super.key});

  @override
  State<CatalogList> createState() => _CatalogListState();
}

class _CatalogListState extends State<CatalogList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeDetailPage(catalog: catalog)));
            },
            child: Hero(
                tag: Key(catalog.id.toString()),
                child: CatalogItem(catalog: catalog)));
      },
    );
  }
}
