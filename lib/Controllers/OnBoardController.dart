

import 'package:flutter/cupertino.dart';
import 'package:retaurant/Models/OnBoardModel.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnBoardController extends GetxController{

  List<OnBoardModel> onBoardPages=[
    OnBoardModel('images/food1.jpg', 'Delicious meals', 'safe and fresh components of Meals'),
    OnBoardModel('images/food4.jpg', 'cool halls and clean tables', 'take your rest in your second home'),
    OnBoardModel('images/food6.jpg', 'Delivery Service', 'hot meals will arrive to any where you want')

  ];

  var selectedIndex=0.obs;
  bool get IsLastPage => selectedIndex.value == onBoardPages.length -1;

 // var pageController=PageController();
  
//   Next (){
//     if(IsLastPage){
//
//     }
//     else
//     pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
// }


}