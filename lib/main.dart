import 'package:flutter/material.dart';
import 'package:prefecences/providers/theme_provider.dart';
import 'package:prefecences/screens/screen.dart';
import 'package:prefecences/shared_preferences/preferences.dart';
import 'package:provider/provider.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => ThemProvider(isDarkmode: Preferences.isDarkmode ))
      ],
      child: const MyApp(),
    )
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material app',
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName: (_) => const HomeScreen(),
        SettingScreen.routerName: (_) => const SettingScreen(),
      },

      theme: Provider.of<ThemProvider>(context).currentTheme,

      
    );
  }
}