import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Widgets'),
      ),

      //lista de actividades del cesar
      body: ListView(
        children: [
          const Divider(),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/imagen'),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.purple),
            leading: const Icon(Icons.image, color: Colors.blue),
            title: const Text('imagen'),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/menu2'),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.purple),
            leading: const Icon(Icons.contact_mail, color: Colors.blue),
            title: const Text('menu2'),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, '/galeria'),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.purple),
            leading: const Icon(Icons.import_contacts, color: Colors.blue),
            title: const Text('galeria'),
          )
        ],
      ),
    );
  }
}
