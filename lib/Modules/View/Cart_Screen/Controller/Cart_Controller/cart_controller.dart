import 'package:get/get.dart';

import '../../Model/Cart_Model/cart_model.dart';

class CartController extends GetxController {
  List<CartModel> addCart = [];

  addToCart({required CartModel cartModel}) {
    addCart.add(cartModel);
    update();
  }
  //Map<String, CartModel> plantItem = {};
  // Map<String, CartModel> get plantItem {
  //   return {...plantItem};
  // }
  //
  // void addItems({required String id, price, scientificname}) {
  //   if (plantItem.containsKey(id)) {
  //     plantItem.update(
  //         id,
  //         (value) => CartModel(
  //             id: value.id,
  //             scientificName: value.scientificName,
  //             plantImage: value.plantImage,
  //             quantity: value.quantity + 1,
  //             dimension: value.dimension,
  //             category: value.category,
  //             price: value.price));
  //     update();
  //   }
  // }
}
