import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagenController extends GetxController {
  var image =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuQGYyNnXQ-4oeJOEzbcNZ2-nJxi6J25cp3A&usqp=CAU";

  void cambioImagen() {
    if (image ==
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuQGYyNnXQ-4oeJOEzbcNZ2-nJxi6J25cp3A&usqp=CAU") {
      image =
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI-x4Sg_Tm7LUcQLp-W5kcA2JVmBF4jx8T1Q&usqp=CAU";
    } else {
      image =
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuQGYyNnXQ-4oeJOEzbcNZ2-nJxi6J25cp3A&usqp=CAU";
    }
    update();
  }
}
