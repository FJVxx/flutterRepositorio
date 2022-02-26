import 'dart:html';

import 'package:contador/pages/container_page.dart';
import 'package:flutter/material.dart';

class StackPages extends StatelessWidget {
  const StackPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('seccion de stack'),
        leading: const Icon(Icons.menu),
        actions: [
          const CircleAvatar(
            backgroundColor: Colors.blueGrey,
            child: Text('CE'),
          )
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt6bJfj8yngJCw8lBOeCU81Txo9EUSrwIkXA&usqp=CAU'),
            ),
            const Positioned(
              right: 0.0,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
