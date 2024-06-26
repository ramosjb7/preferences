import 'package:flutter/material.dart';
import 'package:prefecences/widgets/witdget.dart';

class HomeScreen extends StatelessWidget {

  static const  String routerName = 'Home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const SideMenu(),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text('isDarkmode: '),
          Divider(),
          Text('Genero: '),
          Divider(),
          Text('Nombre de usuario: '),
          Divider(),
        ],
      )
    );
  }
}