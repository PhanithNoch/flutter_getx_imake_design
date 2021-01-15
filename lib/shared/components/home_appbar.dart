import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: context.isLandscape ?Get.height * 0.20:context.height * 0.15,
      child: Padding(
        padding: context.isLandscape ? EdgeInsets.only(top: context.height *0.035): EdgeInsets.only(top: context.height * 0.03),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: context.width * 0.02),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage("assets/images/profile.jpg"),

                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mirin Santra',style: TextStyle(color: Colors.white),),
                        Container(height: 25,child: FlatButton(onPressed: (){}, child: Text('+ New Card',style: TextStyle(color: Colors.white),)))
                      ],
                    ),

                    Row(

                      children: [
                        Icon(Icons.home,color: Colors.white,),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Owner',style: TextStyle(color: Colors.white),),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.card_giftcard,color: Colors.white,),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Owner',style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
