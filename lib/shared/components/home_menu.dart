import 'package:flutter/material.dart';
import 'package:flutter_imake_getx_design/screens/order_screen/order_screen.dart';
import 'package:flutter_imake_getx_design/shared/models/data.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeMenuComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: context.width * 0.04,
          left: context.width * 0.04,
          top: context.isLandscape ? 30 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: context.height * 0.5,
            child: GridView.builder(
              shrinkWrap: true,
              physics:
                  context.isLandscape ? NeverScrollableScrollPhysics() : null,
              itemCount: listHomeMenu.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: context.isLandscape ? 6 : 3,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(4),
                  child: GestureDetector(
                  onTap: () {
                   Get.to(OrderScreen());
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
                          SvgPicture.asset(
                            listHomeMenu[index].iconPath,
                            color: Colors.red,
                            width: 40,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(listHomeMenu[index].name),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
