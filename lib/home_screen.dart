import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mark_list_favourite/favourite_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  FavouriteController favouriteController = Get.put(FavouriteController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print('build scaffold');
    return Scaffold(
      appBar: AppBar(
        title: Text('Mark List Items'),
      ),
      body: ListView.builder(
          itemCount: favouriteController.fruitList.length,
          itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(favouriteController.fruitList[index]),
            trailing: Obx(() => Icon(Icons.favorite,
              color: favouriteController.tempFruitList.contains(favouriteController.fruitList[index])? Colors.red : Colors.grey,),),
            onTap: () {
              if(favouriteController.tempFruitList.contains(favouriteController.fruitList[index])) {
                favouriteController.removeFromFavourite(favouriteController.fruitList[index]);
              } else {
                favouriteController.addToFavourite(favouriteController.fruitList[index]);
              }

            },
          ),
        );
      }),
    );
  }
}
