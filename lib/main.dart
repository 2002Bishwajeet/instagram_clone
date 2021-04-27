import 'package:flutter/material.dart';
import 'package:instagram_clone/themes.dart';
import 'pages/Home_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: Mytheme.lightTheme(context),
       debugShowCheckedModeBanner: false,//trick to remove debug icon
       debugShowMaterialGrid: false,
      darkTheme: Mytheme.darkTheme(context),
      title: "Instagram",
      home: HomePage(),
    );
  }
}