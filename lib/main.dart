// @dart=2.9
import 'package:conceito_e_commerce/src/view/home_page_view.dart';
// import 'package:conceito_e_commerce/src/view/item_details_view.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: ItemDetails(),
      home: HomePage(),
    );
  }
}
