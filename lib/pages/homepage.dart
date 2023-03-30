import 'package:firstapp8hours/models/catalog.dart';
import 'package:firstapp8hours/widgets/drawer.dart';
import 'package:firstapp8hours/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogjson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogjson);
    final productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
    // print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    // final dummylist = List.generate(20, (index) => CatalogModel.items[0]);
    // return Scaffold(
    // appBar: AppBar(
    //   title: Text(
    //     "Catalog App",
    //     style: TextStyle(color: Colors.black),
    //   ),
    // ),
    // body: Padding(
    //   padding: const EdgeInsets.all(16.0),
    //   child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
    //       ? GridView.builder(
    //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //             crossAxisCount: 2,
    //             mainAxisSpacing: 16,
    //             crossAxisSpacing: 16,
    //           ),
    //           itemBuilder: (context, index) {
    //             final item = CatalogModel.items[index];
    //             return Card(
    //               clipBehavior: Clip.antiAlias,
    //               shape: RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(10)),
    //               // elevation: 2,
    //               child: GridTile(
    //                 header: Container(
    //                   child: Text(
    //                     item.name,
    //                     style: TextStyle(color: Colors.white),
    //                   ),
    //                   padding: const EdgeInsets.all(12),
    //                   decoration: BoxDecoration(
    //                     color: Colors.deepPurple,
    //                   ),
    //                 ),
    //                 child: Image.network(item.image),
    //                 footer: Container(
    //                   child: Text(
    //                     item.price.toString(),
    //                     style: TextStyle(color: Colors.white),
    //                   ),
    //                   padding: const EdgeInsets.all(12),
    //                   decoration: BoxDecoration(
    //                     color: Colors.black,
    //                   ),
    //                 ),
    //               ),
    //             );
    //           },
    //           itemCount: CatalogModel.items.length,
    //         )
    //       // ? ListView.builder(
    //       //     itemCount: CatalogModel.items.length,
    //       // itemBuilder: (context, index) => ItemWidget(
    //       //     item: CatalogModel.items[index],
    //       //   ),
    //       //   )
    //       : Center(
    //           child: CircularProgressIndicator(color: Colors.deepPurple),
    //         ),
    // ),

    // drawer: MyDrawer(),
    return Scaffold(
      backgroundColor: Mytheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(Mytheme.darkBluishColor).make(),
        "Trending Products".text.xl2.make()
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return CatalogItem(catalog: catalog);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatalogImage(
            image: catalog.image,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(Mytheme.darkBluishColor).bold.make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Mytheme.darkBluishColor),
                        shape: MaterialStateProperty.all(
                          StadiumBorder(),
                        )),
                    child: "Buy".text.make(),
                  )
                ],
              ).pOnly(right: 8.0)
            ],
          ))
        ],
      ),
    ).white.rounded.square(150).make().py16();
  }
}

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(Mytheme.creamColor).make().p16().w40(context);
  }
}
