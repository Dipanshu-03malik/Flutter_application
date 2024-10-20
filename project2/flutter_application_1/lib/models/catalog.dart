class CatalogModel {
  static final List<Item> items = [
    Item(
      id: 1234588,
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image: "https://www.citypng.com/public/uploads/preview/gold-apple-iphone-12-pro-max-front-back-view-704081694682342sv7nulvewt.png" // Replace with a valid image URL
    ),
    Item(
      id: 1234589,
      name: "Samsung Galaxy S21",
      desc: "Samsung Galaxy S21 5G",
      price: 799,
      color: "#1f1f1f",
      image: "https://i5.walmartimages.com/seo/Samsung-Galaxy-S21-5G-128GB-G991U-Fully-Unlocked-Smartphone_dcf28e36-4c71-49d1-931b-4649b866db89.22d7e2d5e09fe373b2541876b509ebfb.jpeg",
    ),
    Item(
      id: 1234590,
      name: "Google Pixel 6",
      desc: "Google Pixel 6 with advanced AI",
      price: 699,
      color: "#ff9500",
      image: "https://m.media-amazon.com/images/I/61YsYjlywtL.jpg",
    ),
    Item(
      id: 1234591,
      name: "OnePlus 9 Pro",
      desc: "OnePlus 9 Pro with 120Hz display",
      price: 969,
      color: "#d32f2f",
      image: "https://oasis.opstatics.com/content/dam/oasis/page/2021/9-series/spec-image/9-pro/Pine%20green-gallery..png",
    ),
    Item(
      id: 1234592,
      name: "Sony Xperia 1 III",
      desc: "Sony Xperia with 4K HDR display",
      price: 1199,
      color: "#004080",
      image: "https://www.sahivalue.com/product-images/1400x1400-fotor-20240627182539.jpg/293890000042382032/1400x1400",
    ),
    Item(
      id: 1234593,
      name: "Xiaomi Mi 11",
      desc: "Xiaomi Mi 11 with Snapdragon 888",
      price: 749,
      color: "#00a896",
      image: "https://i5.walmartimages.com/asr/6f76919a-020a-4b5b-8977-510da7a23cde.a9db17cb21b646685aefe8dc82146db8.jpeg",
    ),
    Item(
      id: 1234594,
      name: "Oppo Find X3 Pro",
      desc: "Oppo Find X3 with 10-bit color",
      price: 899,
      color: "#ff5733",
      image: "https://www.oppo.com/content/dam/oppo/product-asset-library/find-x3-series/weu-find-x3-pro/v2/assets/product-design-phone-blue.png",
    ),
    Item(
      id: 1234595,
      name: "Huawei P40 Pro",
      desc: "Huawei P40 with Leica camera",
      price: 999,
      color: "#505050",
      image: "https://consumer.huawei.com/content/dam/huawei-cbg-site/common/mkt/list-image/phones/p40-pro/p40-pro-silver.png",
    ),
    Item(
      id: 1234596,
      name: "Realme GT",
      desc: "Realme GT with 65W fast charging",
      price: 499,
      color: "#fbc531",
      image: "https://rukminim2.flixcart.com/image/850/1000/l3rmzrk0/mobile/5/k/h/-original-imagetme9qz26q4k.jpeg?q=90&crop=false",
    ),
    Item(
      id: 1234597,
      name: "Asus ROG Phone 5",
      desc: "Asus ROG Phone with gaming features",
      price: 1099,
      color: "#2c3e50",
      image: "https://m.media-amazon.com/images/I/51RH05R6RpL.jpg",
    ),
    Item(
      id: 1234598,
      name: "Motorola Edge 20 Pro",
      desc: "Motorola Edge with 144Hz OLED display",
      price: 599,
      color: "#ff0000",
      image: "https://fdn2.gsmarena.com/vv/bigpic/motorola-edge20-pro-.jpg",)
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