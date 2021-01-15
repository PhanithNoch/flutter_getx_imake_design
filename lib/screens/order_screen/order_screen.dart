import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imake_getx_design/shared/components/imake_component.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Color(0xFFf5f5f5),
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('Order'),
            actions: [
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
//
                    )



                    ),
                  child: TabBar(
                    onTap: (index){
                      setState(() {
                        selectedIndex = index;
                        print(selectedIndex);
                      });
                    },
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: selectedIndex == 0?Radius.circular(10):Radius.circular(0),
                          topLeft:selectedIndex == 0? Radius.circular(10):Radius.circular(0),
                        topRight: selectedIndex == 1?Radius.circular(10):Radius.circular(0),
                          bottomRight: selectedIndex == 1?Radius.circular(10):Radius.circular(0)

                      ),



                      color: Colors.redAccent,
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: 'Order',
                      ),

                      // second tab [you can add an icon using the icon property]
                      Tab(
                        text: 'Bills',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child:   Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Container(

                              child: ListView.builder(
                                itemCount: 10,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Slidable(
                                      actionPane: SlidableDrawerActionPane(),
                                      actionExtentRatio: 0.25,
                                      child: Container(

                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  height: 100,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius:
                                                    BorderRadius.only(
                                                      bottomLeft:
                                                      Radius.circular(10),
                                                      topLeft:
                                                      Radius.circular(10),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        '30',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 40),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text('Last Order ID :'),
                                                      Text('1234'),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text('Last Order ID :'),
                                                      Text('12:00:05'),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text('Bill Items:'),
                                                      Text('10'),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text('Last Order ID :'),
                                                      Text('1234'),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      secondaryActions: <Widget>[
                                        IconSlideAction(
                                          caption: 'Delete',
                                          color: Colors.red,
                                          icon: Icons.delete,
                                          onTap: () => {
                                            IOSDialog(context, "Do you want to delete the order")
                                          },
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Container(
                              height: MediaQuery.of(context).size.width * 0.8,
                              child: ListView.builder(
                                itemCount: 3,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Slidable(
                                      actionPane: SlidableDrawerActionPane(),
                                      actionExtentRatio: 0.25,
                                      child: Container(
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  height: 100,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius:
                                                    BorderRadius.only(
                                                      bottomLeft:
                                                      Radius.circular(10),
                                                      topLeft:
                                                      Radius.circular(10),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        '30',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 40),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text('Last Order ID :'),
                                                      Text('1234'),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text('Last Order ID :'),
                                                      Text('12:00:05'),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text('Bill Items:'),
                                                      Text('10'),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text('Last Order ID :'),
                                                      Text('1234'),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      secondaryActions: <Widget>[
                                        IconSlideAction(
                                          caption: 'Delete',
                                          color: Colors.red,
                                          icon: Icons.delete,
                                          onTap: () => {},
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),

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
                      onTap: (){
                        IOSDialog(context,"Do you want to add order?");
                      },
                      child: Text(
                        '+ Create New Order',
                        style: TextStyle(
                            color: Colors.white, fontSize: 22),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );


  }





}
