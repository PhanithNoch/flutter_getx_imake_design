
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSlide {
  String image;
  String title;
  String subTitle;
  String profile;

  HomeSlide({this.image, this.title, this.subTitle, this.profile});
}


List<HomeSlide> lstHomeSlide = [
  HomeSlide(
    title: "Ice Late",
    subTitle: "The Guardian   ",
    profile: "assets/images/profile.jpg",
    image: "assets/images/coffee1.jpg"
  ),

  HomeSlide(
      title: "Ice Late",
      subTitle: "The Guardian  ",
      profile: "assets/images/profile.jpg",
      image: "assets/images/coffee2.jpg"
  ),


  HomeSlide(
      title: "Ice Late",
      subTitle: "The Guardian ",
      profile: "assets/images/profile.jpg",
      image: "assets/images/coffee2.jpg"
  ),
];

class HomeMenu{
  String iconPath;
  String name;

  HomeMenu({this.iconPath, this.name});
}

List<HomeMenu> listHomeMenu =[
  HomeMenu(
      iconPath: "assets/icons/star.svg",
    name: "Give Point"
  ),
  HomeMenu(
    iconPath: "assets/icons/give_point_act.svg",
    name: "Redeem"
  ),
  HomeMenu(
    iconPath: "assets/icons/redeem.svg",
    name: "Mini POS"
  ),
  HomeMenu(
    iconPath: "assets/icons/minipos.svg",
    name: "Spacial"
  ),
  HomeMenu(
    iconPath: "assets/icons/eye.svg",
    name: "View"
  ),
  HomeMenu(
    iconPath: "assets/icons/order.svg",
    name: "Order"
  ),
];