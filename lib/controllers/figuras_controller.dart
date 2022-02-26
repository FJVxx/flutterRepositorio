import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FigurasController extends GetxController {
  Color color = Colors.blue;
  Color colorIcon = Colors.red;
  var icon = Icons.crop_square_sharp;
  var border = BorderRadius.circular(120);

  void cambioColor() {
    if (color == Colors.blue) {
      color = Colors.red;
    } else {
      color = Colors.blue;
    }
    update();
  }

  void cambioColorIcon() {
    if (colorIcon == Colors.blue) {
      color = Colors.red;
    } else {
      color = Colors.blue;
    }
    update();
  }

  void cambioIcono() {
    if (icon == Icons.crop_square_sharp) {
      icon = Icons.circle;
    } else {
      icon = Icons.crop_square_sharp;
    }
    update();
  }

  void figuraBorder() {
    if (border == BorderRadius.circular(120)) {
      border = BorderRadius.circular(0);
    } else {
      border = BorderRadius.circular(120);
    }
    update();
  }
}
