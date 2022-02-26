import 'package:contador/controllers/galeria_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GaleriaPage extends StatelessWidget {
  GaleriaPage({Key? key}) : super(key: key);
  final galeriaController = Get.find<GaleriaController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeria'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: GetBuilder<GaleriaController>(
          builder: (galeriaController) => Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                      NetworkImage(galeriaController.img[galeriaController.i]),
                  fit: BoxFit.fill),
            ),
          ),
        ),
      ),
      floatingActionButton: GetBuilder<GaleriaController>(
        builder: (galeriaController) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                galeriaController.changePrev();
              },
              backgroundColor: Colors.red,
              child: const Icon(Icons.arrow_left),
            ),
            FloatingActionButton(
              onPressed: () {
                galeriaController.changeNext();
              },
              backgroundColor: Colors.red,
              child: const Icon(Icons.arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}
