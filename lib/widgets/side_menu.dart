import 'package:flutter/material.dart';
import 'package:prefecences/screens/screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          _DrawerHeader(),

          ListTile(
            leading: const Icon(Icons.pages_outlined),
            title: const Text('Home'),
            onTap: (){
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);
            },
          ),

          ListTile(
            leading: const Icon(Icons.people_outline),
            title: const Text('People'),
            onTap: (){

            },
          ),

          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Setting'),
            onTap: (){
              // Navigator.pop(context);
              Navigator.pushReplacementNamed(context, SettingScreen.routerName);
            },
          ),

        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  // const _DrawerHeader({super.key,});


  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(

      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu-img.jpg'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}