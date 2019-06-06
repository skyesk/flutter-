import 'package:flutter/material.dart';

var pageList = [
  PageModel(
      imageUrl: "../assets/illustration.png",
      title: "监护",
      body: "守护病人的健康",
      titleGradient: gradients[0]),
  PageModel(
      imageUrl: "../assets/illustration2.png",
      title: "便利",
      body: "提供医护人员的便利",
      titleGradient: gradients[1]),
  PageModel(
      imageUrl: "../assets/illustration3.png",
      title: "未来",
      body: "带来物联网时代的创想",
      titleGradient: gradients[2]),
];

List<List<Color>> gradients = [
  [Color(0xFF9708CC), Color(0xFF43CBFF)],
  [Color(0xFFE2859F), Color(0xFFFCCF31)],
  [Color(0xFF5EFCE8), Color(0xFF736EFE)],
];

class PageModel {
  var imageUrl;
  var title;
  var body;
  List<Color> titleGradient = [];
  PageModel({this.imageUrl, this.title, this.body, this.titleGradient});
}
