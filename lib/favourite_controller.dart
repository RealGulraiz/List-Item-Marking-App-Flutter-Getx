

import 'package:get/get.dart';

class FavouriteController extends GetxController {
  List<String> fruitList = ['Orange', 'Mango', 'Banana', 'Apple'].obs;
  List tempFruitList = [].obs;    // Don't Specify List DataType to make it dynamic

  addToFavourite(String value) {
    tempFruitList.add(value);
  }

  removeFromFavourite(String value) {
    tempFruitList.remove(value);
  }


}