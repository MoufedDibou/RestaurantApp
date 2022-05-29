import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retaurant/Controllers/OnBoardController.dart';

class OnBoard1 extends StatelessWidget {

  final _boardController=OnBoardController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children:[
            PageView.builder(

              onPageChanged: _boardController.selectedIndex,
            itemCount: _boardController.onBoardPages.length,
            itemBuilder: (context,index)
          {
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(_boardController.onBoardPages[index].Image ),
                  SizedBox(height: 30),
                  Text(_boardController.onBoardPages[index].Title,
                    style: TextStyle(
                    fontSize: 24,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Text(_boardController.onBoardPages[index].Description,
                    textAlign: TextAlign.center
                    ,style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  )
                ],
              ),
            );
            },
    ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Row(
                children: List.generate(_boardController.onBoardPages.length,
                        (index) => Obx( () {
                            return Container(
                 width: 12,
                 height: 12,
                 margin: const EdgeInsets.all(8.0),
                 decoration: BoxDecoration(
                   color: _boardController.selectedIndex.value == index ? Colors.green : Colors.grey,
                   shape: BoxShape.circle
                 ),
                );
                          }
                        )
                )

                ,
              ),
            ),
            Positioned(
              right: 20,
                bottom: 20,
                child: FloatingActionButton(
                  elevation: 0,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/Login');
                  },
                  child:  Obx(() {
                    return Text( _boardController.IsLastPage ? 'Start' : 'Start');
                    }
                    ),
                )
            )
     ]
        ),
      ),

    );
  }
}
