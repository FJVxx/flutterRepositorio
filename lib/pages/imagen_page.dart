import 'package:contador/controllers/figuras_controller.dart';
import 'package:contador/controllers/imagen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagenPage extends StatelessWidget {
  ImagenPage({Key? key}) : super(key: key);
  final figurasController = Get.find<FigurasController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('imagen'),
      ),
      body: GetBuilder<ImagenController>(
        builder: (imagenController) => Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(
                image: NetworkImage(imagenController.image),
              ),
            ),
            GestureDetector(
              onTap: () {
                imagenController.cambioImagen();
              },
            )
          ],
        ),
      ),
    );
  }
}
