class Item {
  final String name;
  final int price;
  final String photo; // url to image or asset path
  final int stock;
  final double rating;

  Item({
    required this.name,
    required this.price,
    required this.photo,
    required this.stock,
    required this.rating,
  });
}
