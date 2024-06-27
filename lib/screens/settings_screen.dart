import 'package:flutter/material.dart';
import 'package:prefecences/providers/theme_provider.dart';
import 'package:prefecences/shared_preferences/preferences.dart';
import 'package:prefecences/widgets/witdget.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatefulWidget {

  static const  String routerName = 'Setting';

  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  // bool isDarkmode = false;
  // int gender = 1;
  // String name ='Pedro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ajustes', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),),
              const Divider(),

              SwitchListTile(
                value: Preferences.isDarkmode,
                title: const Text('Darkmode'), 
                onChanged: ( value ) {
                  Preferences.isDarkmode = value;
                  final themeProvider = Provider.of<ThemProvider>(context, listen: false);

                  value 
                    ? themeProvider.setDarkmode()
                    : themeProvider.setLightMode();

                  setState(() {
                    
                  });
                }
              ),
              const Divider(),

              RadioListTile<int>(
                value: 1,
                groupValue: Preferences.gender,
                title: const Text('Masculino'),
                onChanged: ( value ){
                  Preferences.gender = value ?? 1;
                  setState(() {
                    
                  });
                },
              ),

              const Divider(),

              RadioListTile<int>(
                value: 2,
                groupValue: Preferences.gender,
                title: const Text('Femenino'),
                onChanged: ( value ){
                  Preferences.gender = value ?? 2;
                  setState(() {
                    
                  });
                },
              ),

              const Divider(),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: Preferences.name,
                  onChanged: ( value ){
                    Preferences.name = value;
                    setState(() {
                      
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre del usuario'
                  ),
                ),
              )
            ],
          ),
        ),
      )

    );
  }
}