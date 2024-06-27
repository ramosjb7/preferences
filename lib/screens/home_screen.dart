import 'package:flutter/material.dart';
import 'package:prefecences/shared_preferences/preferences.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text('isDarkmode: ${Preferences.isDarkmode}'),
          const Divider(),
          Text('Genero: ${Preferences.gender}'),
          const Divider(),
          Text('Nombre de usuario: ${Preferences.name}'),
          const Divider(),
        ],
      )
    );
  }
}