import 'package:flutter/material.dart';

class ProductsDetailScreen extends StatelessWidget {
  // final String title;
  // ProductsDetailScreen(this.title);
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
