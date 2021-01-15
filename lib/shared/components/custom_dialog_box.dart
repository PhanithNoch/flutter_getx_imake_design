import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constrants.dart';

class CustomDialogBox extends StatefulWidget {
  final String title, descriptions, text;
  final Image img;

  const CustomDialogBox({Key key, this.title, this.descriptions, this.text, this.img}) : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }
  contentBox(context){
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: Constants.padding,top:20, right: Constants.padding,bottom: Constants.padding
          ),
          margin: EdgeInsets.only(top: Constants.avatarRadius),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(Constants.padding),
              boxShadow: [
                BoxShadow(color: Colors.black,offset: Offset(0,10),
                    blurRadius: 10
                ),
              ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Column(
                    children: [
                      Image.asset('assets/images/coffee3.jpg',fit: BoxFit.cover,height: 50,),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Menu 01',style: TextStyle(fontSize: 18),),
                        Text('150 B',style: TextStyle(fontSize: 12,color: Colors.grey),),
                      ],
                    ),
                  ),



                ],
              ),
              Divider(
                height: 20,
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Size',style: TextStyle(color: Colors.grey),)
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)

                    ),
                    child: FlatButton(
                      child: Text('S',style: TextStyle(fontWeight: FontWeight.bold)),
                      onPressed: (){},
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)

                    ),
                    child: FlatButton(
                      child: Text('M',style: TextStyle(fontWeight: FontWeight.bold)),
                      onPressed: (){},
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)

                    ),
                    child: FlatButton(
                      child: Text('L',style: TextStyle(fontWeight: FontWeight.bold)),
                      onPressed: (){},
                    ),
                  ),

                ],
              ),
              SizedBox(height: 22,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Quantity',style: TextStyle(color: Colors.grey),)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 40,
                    decoration: BoxDecoration(

                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.red,
                          Colors.orange
                        ]
                      )
                    ),
                      child: FlatButton(onPressed: (){},child: FaIcon(FontAwesomeIcons.minus,color: Colors.white,size: 12,),)
                  ),

                  Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)

                    ),
                    child: FlatButton(
                      child: Text('2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
                      onPressed: (){},
                    ),
                  ),
                  Container(
                      width: 40,
                      decoration: BoxDecoration(

                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.red,
                                Colors.orange
                              ]
                          )
                      ),
                      child: FlatButton(onPressed: (){},child: FaIcon(FontAwesomeIcons.plus,color: Colors.white,size: 12,),)
                  ),


                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Price')
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                width: 240,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20)

                ),
                child: Text('300.00',style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFF858585),
                                Color(0xFFa4a4a4),
                              ]
                          )
                      ),
                      child: FlatButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          child: Text("Cancel",style: TextStyle(fontSize: 16,color: Colors.white))),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  
                  Expanded(
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFed412d),
                            Color(0xFFff7c6c),
                          ]
                        )
                      ),
                      child: FlatButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          child: Text("OK",style: TextStyle(fontSize: 16,color: Colors.white))),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
//        Positioned(
//          left: Constants.padding,
//          right: Constants.padding,
//          child: CircleAvatar(
//            backgroundColor: Colors.transparent,
//            radius: Constants.avatarRadius,
//            child: ClipRRect(
//                borderRadius: BorderRadius.all(Radius.circular(Constants.avatarRadius)),
//                child: Image.asset("assets/model.jpeg")
//            ),
//          ),
//        ),
      ],
    );
  }
}
