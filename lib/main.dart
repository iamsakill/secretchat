import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:secretchat/provider/themeProvider.dart';

import 'screens/mainScreen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Themeprovider(), child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<Themeprovider>(context);
    return MaterialApp(
      theme: themeProvider.isDarkModeChecked
          ? ThemeData.dark(useMaterial3: true)
          : ThemeData.light(useMaterial3: true),
      home: const MainScreen(),
    );
  }
}
