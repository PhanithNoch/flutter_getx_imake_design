import 'package:flutter/material.dart';
import 'package:flutter_imake_getx_design/screens/home_screen/home_screen.dart';
import 'package:get/get.dart';
class PrintOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf7f5f5).withOpacity(0.9),
      body: SafeArea(
        top: false,
        bottom: false,
        right: false,
        left: false,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 0),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding:  EdgeInsets.only(top: context.height * 0.04, left: context.height * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order TO17',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Order SEQ 017',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Ref 1234',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text('Date/Time :  19:11:13'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('User ID :  123456'),
                        ],
                      ),

                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: EdgeInsets.only(left: 0),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Row(
                       children: [
                         Text(
                           'Order TO17',
                           style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                         ),
                       ],
                     ),
                      SizedBox(
                        height: 5,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Item name 1',style: TextStyle(color: Colors.grey),),
                          Text('60x2',style: TextStyle(color: Colors.grey)),
                          Text('120',style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Item name 1',style: TextStyle(color: Colors.grey),),
                          Text('60x2',style: TextStyle(color: Colors.grey)),
                          Text('120',style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Item name 1',style: TextStyle(color: Colors.grey),),
                          Text('60x2',style: TextStyle(color: Colors.grey)),
                          Text('120',style: TextStyle(color: Colors.grey)),
                        ],
                      ),

                      Divider(

                      ),
                      SizedBox(
                        height: 5,
                      ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [

                         Text('Thank You!',style: TextStyle(fontSize: 20),),
                       ],
                     ),


                      SizedBox(
                        height: 15,
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              height: context.isLandscape?context.height * 0.1:context.height * 0.08,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xFFed412d),
                    Color(0xFFff7c6c),
                  ])
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                                Get.to(HomeScreen());

                    },
                    child: Text(
                      'Back to main menu',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
