class CatalogModel {
  static final List<Item> items = [
    Item(
      id: 1234588,
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image: "https://www.citypng.com/public/uploads/preview/gold-apple-iphone-12-pro-max-front-back-view-704081694682342sv7nulvewt.png" // Replace with a valid image URL
    )
    // Add more items if needed
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}
