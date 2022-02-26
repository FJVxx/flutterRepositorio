//librerias para el controlador
import 'package:contador/controllers/galeria_controller.dart';
import 'package:contador/controllers/imagen_controller.dart';
import 'package:contador/controllers/menu2_controller.dart';

//para todo lo demas
import 'package:contador/pages/galeria_page.dart';
import 'package:contador/pages/imagen_page.dart';
import 'package:contador/pages/menu2_page.dart';
import 'package:contador/pages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/figuras_controller.dart';

void main() {
  Get.lazyPut(() => Menu2Controller());
  Get.lazyPut(() => FigurasController());
  Get.lazyPut(() => ImagenController());
  //debo sacar el controler para despues
  Get.lazyPut(() => GaleriaController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IDGS10-2 Actividades',
      initialRoute: '/menu',
      routes: {
        //por aqui las rutas
        '/menu': (context) => const MenuPage(),
        '/imagen': (context) => ImagenPage(),
        '/menu2': (context) => const Menu2Pages(),
        '/galeria': (context) => GaleriaPage()
      },
    );
  }
}
