import 'package:ecommerce/page/tabs.page.dart';
import 'package:ecommerce/theme/light.theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      theme: lightTheme(),
      home: DefaultTabController(
        length: 3,
        child: TabPage(),
      ),
    );
  }
}
