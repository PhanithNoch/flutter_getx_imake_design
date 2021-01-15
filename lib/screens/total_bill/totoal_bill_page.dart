import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imake_getx_design/screens/print_order/print_order_screen.dart';
import 'package:flutter_imake_getx_design/shared/components/custom_dialog_box.dart';
import 'package:flutter_imake_getx_design/shared/models/data.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

import 'package:get/get.dart';

class TotalBillScreen extends StatefulWidget {
  @override
  _TotalBillScreenState createState() => _TotalBillScreenState();
}

class _TotalBillScreenState extends State<TotalBillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Bill T017'),
        actions: [
          FlatButton(
              onPressed: () {},
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height:
              context.isLandscape ? context.height * 1 : context.height * 0.8,
          child: Column(
            children: [
              Container(
                height: context.isLandscape
                    ? context.height * 0.1
                    : context.height * 0.06,
                decoration: BoxDecoration(color: Color(0xFF222222)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: context.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Bill.',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '550.00.',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: ExpansionCard(
                  margin: EdgeInsets.all(0),
                  title: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Latest Order#4 (12:05:55)",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  children: <Widget>[
                    Padding(
                      padding:
                          EdgeInsets.only(top: context.isLandscape ? 30 : 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Slidable(
                            actionPane: SlidableDrawerActionPane(),
                            actionExtentRatio: 0.25,
                            child: Container(
                              color: Colors.white,
                              child: ListTile(
                                title: Text('Menu 002'),
                                subtitle: Text('80x3'),
                                trailing: Text('260'),
                              ),
                            ),
                            actions: <Widget>[],
                            secondaryActions: <Widget>[
                              IconSlideAction(
                                caption: 'Delete',
                                color: Colors.red,
                                icon: Icons.delete,
//                    onTap: () => _showSnackBar('Delete'),
                              ),
                            ],
                          ),
                          Slidable(
                            actionPane: SlidableDrawerActionPane(),
                            actionExtentRatio: 0.25,
                            child: Container(
                              color: Colors.white,
                              child: ListTile(

                                title: Text('Menu 001'),
                                subtitle: Text('80x3'),
                                trailing: Text('260'),
                              ),
                            ),
                            actions: <Widget>[],
                            secondaryActions: <Widget>[
                              IconSlideAction(
                                caption: 'Delete',
                                color: Colors.red,
                                icon: Icons.delete,
//                    onTap: () => _showSnackBar('Delete'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: ExpansionCard(
                  margin: EdgeInsets.all(0),
                  title: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "All Menu",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          right: context.width * 0.04,
                          left: context.width * 0.04,
                          top: context.isLandscape ? 30 : 0),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: context.isLandscape
                            ? NeverScrollableScrollPhysics()
                            : null,
                        itemCount: listHomeMenu.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: context.isLandscape ? 6 : 3,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 4, left: 4),
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return CustomDialogBox(
                                        title: "Custom Dialog Demo",
                                        descriptions:
                                            "Hii all this is a custom dialog in flutter and  you will be use in your flutter applications",
                                        text: "Yes",
                                      );
                                    });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          offset: Offset(0, 2),
                                          blurRadius: 30),
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: Image.network(
                                                  "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/horchata-frappuccino-starbucks-1523979480.jpg",
                                                  fit: BoxFit.cover))
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 5),
                                            child: Column(
                                              children: [
                                                Text("Menu 01"),
                                                Text(
                                                  "60 THB",
                                                  style: TextStyle(
                                                      color: Colors.red),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              BottomMenu(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.mode_edit), label: "Detail"),
        ],
      ),
    );
  }
}

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 50,
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: context.width * 0.25,
                  decoration: BoxDecoration(color: Colors.grey),
                  child: Text("CLR", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Get.to(PrintOrderScreen());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: context.width * 0.25,
                    decoration: BoxDecoration(color: Colors.grey),
                    child: Text("PRINT", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: context.width * 0.25,
                  decoration: BoxDecoration(color: Color(0xFF00b056)),
                  child: Text(
                    "NEW",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: context.width * 0.25,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFed412d),
                        Color(0xFFff7c6c),
                      ])
                  ),
                  child: Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),


          ],
        ));
  }
}
