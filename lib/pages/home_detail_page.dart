import 'package:firstapp8hours/models/catalog.dart';
import 'package:firstapp8hours/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mytheme.creamColor,
      ),
      backgroundColor: Mytheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\₹ ${catalog.price}.00".text.red800.bold.xl4.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Mytheme.darkBluishColor),
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  )),
              child: "Buy".text.xl.make(),
            ).wh(100, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(children: [
                    catalog.name.text.xl4
                        .color(Mytheme.darkBluishColor)
                        .bold
                        .make(),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    10.heightBox,
                    "Dolore clita ipsum gubergren sed dolor amet voluptua diam sadipscing, sit et voluptua magna dolor justo takimata eirmod amet. Diam erat tempor sed lorem. Et diam clita stet sed lorem, lorem sed lorem vero stet. Dolor dolores stet duo elitr ipsum sanctus et amet. Diam magna ipsum nonumy eirmod. Dolor."
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .p16(),
                  ]).py64(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
