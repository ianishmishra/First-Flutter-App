import 'package:firstapp8hours/models/catalog.dart';
import 'package:firstapp8hours/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final dummylist = List.generate(20, (index) => CatalogModel.items[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          // itemCount: CatalogModel.items.length,
          itemCount: dummylist.length,
          itemBuilder: (context , index) {
            return ItemWidget(
              // item: CatalogModel.items[index],
              item: dummylist[index],
            );
          }
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
