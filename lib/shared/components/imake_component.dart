import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imake_getx_design/screens/create_new_order/create_new_order_screen.dart';
import 'package:get/get.dart';

IOSDialog(context,message) {
  showDialog(

      context: context,
      builder: (_) => new CupertinoAlertDialog(
        content: new Text(message),
        actions: <Widget>[
          FlatButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Get.to(CreateNewOrderScreen());
            },
          )
        ],
      ));
}