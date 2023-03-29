class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

}

final products = [
  Item(
    id: "ianishmishra",
    name: "Iphone 12 pro",
    desc: "Apple iphone 12th Generation",
    price: 99999,
    color: "#33505a",
    image : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSINoFeI8r7b_zuGNLYGjGw0_yw86uD9EVSjPd2ftJYbw&usqp=CAU&ec=48665701",
  )
];