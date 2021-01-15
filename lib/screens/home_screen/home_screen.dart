import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_imake_getx_design/shared/components/home_appbar.dart';
import 'package:flutter_imake_getx_design/shared/components/home_menu.dart';
import 'package:flutter_imake_getx_design/shared/components/home_slide.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf7f5f5).withOpacity(0.9),
      body: SingleChildScrollView(
        child: Column(

          children: [
            HomeAppBar(),

            Container(child: HomeSlideWidget()),
            Padding(
              padding: EdgeInsets.symmetric(vertical: context.height *0.02 ),
              child: HomeMenuComponent(),
            ),
            
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.content_cut),label: "CRM"),
          BottomNavigationBarItem(icon: Icon(Icons.insights),label: "Insight"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.more),label: "more"),
        ],
      ),
    );
  }
}

