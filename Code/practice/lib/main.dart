import 'package:flutter/material.dart';
import '../screens/products_overview_screen.dart';
import './screens/products_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.deepOrange,
        fontFamily: 'Lato',
      ),
      home: ProductsOverviewScreen(),
      routes: {
        ProductsDetailScreen.routeName: (ctx) => ProductsDetailScreen(),
      },
    );
  }
}
