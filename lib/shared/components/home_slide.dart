import 'package:flutter/material.dart';
import 'package:flutter_imake_getx_design/shared/models/data.dart';
import 'package:get/get.dart';

class HomeSlideWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 0, top: 20),
        child: Container(
          height:
              context.isLandscape ? context.height * 0.5 : context.height * 0.3,
          child: PageView.builder(
            controller: PageController(initialPage: 0,viewportFraction: 0.9),
            scrollDirection: Axis.horizontal,
            itemCount: lstHomeSlide.length,
            onPageChanged: (index) {},
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Expanded(
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child: Image.asset(
                                      lstHomeSlide[index].image,
                                      fit: BoxFit.cover,
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 20, top: 10),
                              child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius:
                                      BorderRadius.circular(30)),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'Edit',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              decoration:
                              BoxDecoration(color: Colors.white),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        child: Text(
                                          'DEAN',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        backgroundColor: Colors.grey[700],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(lstHomeSlide[index].title),
                                        Text(
                                            lstHomeSlide[index].subTitle),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "150",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22),
                                      ),
                                      Text('Pls'),
                                    ],
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
              );
            },
          ),
        ),
      ),
    );
  }
}
