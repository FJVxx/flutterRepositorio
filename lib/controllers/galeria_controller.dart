import 'package:get/get.dart';

class GaleriaController extends GetxController {
  List img = [
    'https://media.istockphoto.com/photos/clown-picture-id533837393?k=20&m=533837393&s=612x612&w=0&h=Cf02sdAjdOyvCsFfUNgubZUTj2wbDydu_WRas2SU8NE=',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgqrHg9Ao1u8BgKck8AbCSeMIcXIjV0WckPg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQuPyIUY3NKthtX-if5aketAI6TXcr3OWXFswdlgQGO6fN-Vj4UWLgns-DglR-yHiFniU&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4p_gJYheYLzymU-m5RJxj8rO_um-T2HdqiVbiOaifFqGB5J4G9j27Jg7BjZZiFMFSP30&usqp=CAU',
    'https://ae01.alicdn.com/kf/HTB1vMmVNXXXXXb0aXXXq6xXFXXXz/Disfraces-de-Halloween-para-adultos-disfraz-divertido-de-payaso-de-circo-uniforme-de-arlequ-n-travieso.jpg_Q90.jpg_.webp'
  ];

  int i = 0;

  void changeNext() {
    if (i < img.length - 1) {
      i++;
    } else {
      i = 0;
    }
    update();
  }

  void changePrev() {
    if (i == 0) {
      i = img.length - 1;
    } else {
      i--;
    }
    update();
  }
}
