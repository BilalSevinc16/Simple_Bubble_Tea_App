import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_bubble_tea_app/models/shop.dart';
import 'package:simple_bubble_tea_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BubbleTeaShop(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.brown),
        home: const HomePage(),
      ),
    );
  }
}
