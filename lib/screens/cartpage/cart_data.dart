import 'package:groceryapp/gen/assets.gen.dart';
import 'package:groceryapp/screens/cartpage/cart_model.dart';


List<CartModel> cartData = [
  CartModel(
      imageName: Assets.images.banana,
      price: "7.89",
      productName: "Banana",
      categoryName: "Organic",
      quantity: "10Kg"),

  CartModel(
      imageName: Assets.images.apple,
      price: "4.49",
      productName: "Apple",
      categoryName: "Organic",
      quantity: "12Kg"),

  CartModel(
      imageName: Assets.images.avocado,
      price: "4.99",
      productName: "Avocado",
      categoryName: "Organic",
      quantity: "12Kg"),

  CartModel(
      imageName: Assets.images.chiku,
      price: "2.49",
      productName: "Chikku",
      categoryName: "Organic",
      quantity: "50Kg"),
];