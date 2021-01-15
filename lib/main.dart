import 'package:flutter/material.dart';
import 'package:flutter_imake_getx_design/screens/home_screen/home_screen.dart';
import 'package:flutter_imake_getx_design/screens/print_order/print_order_screen.dart';
import 'package:flutter_imake_getx_design/screens/total_bill/totoal_bill_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Kanit-Medium"
      ),
      home: HomeScreen(),
//      home: TotalBillScreen(),
//      home: PrintOrderScreen(),
    );
  }
}
