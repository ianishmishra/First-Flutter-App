class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iphone 14 pro",
      desc: "Apple iphone 14th pro Generation",
      price: 9999.0,
      color: "#33505a",
      image : "https://m.media-amazon.com/images/I/71ZDY57yTQL._AC_SX522_.jpg",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

}