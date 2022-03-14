class CartModel
{
  final imageName;
  final String productName;
  final String categoryName;
  final String quantity;
  final String price;

  CartModel({
    required this.imageName,
    required this.price,
    required this.productName,
    required this.categoryName,
    required this.quantity,
});
}