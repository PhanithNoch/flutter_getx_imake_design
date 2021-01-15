import 'package:flutter/material.dart';
import 'package:flutter_imake_getx_design/screens/total_bill/totoal_bill_page.dart';
import 'package:get/get.dart';
class CreateNewOrderScreen extends StatefulWidget {
  @override
  _CreateNewOrderScreenState createState() => _CreateNewOrderScreenState();
}

class _CreateNewOrderScreenState extends State<CreateNewOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Create New Order'),
        actions: [
          FlatButton(
              onPressed: () {},
              child: Text(
                'Cancel',
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
      body: Column(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              Container(
                height: 60,
                child: Card(
                  child: ListTile(
                    leading: Text('Order#'),
                    trailing: Text('#1234'),
                  ),
                ),
              ),
              Container(
                height: 60,
                child: Card(
                  child: ListTile(
                    leading: Text('Bill/Table'),
                    trailing: Text('12'),
                  ),
                ),
              ),
              Container(
                height: 60,
                child: Card(
                  child: ListTile(
                    leading: Text('Phone Number'),
                    trailing: Text('0982233112'),
                  ),
                ),
              ),
              Container(
                height: 60,
                child: Card(
                  child: ListTile(
                    leading: Text('Memo'),
                    trailing: Text('Food & Drink'),
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 70,
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
                    Get.to(TotalBillScreen());

                  },
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
