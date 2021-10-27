import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
        id: 'p1',
        title: 'Red Shirt',
        description: 'a shirt red',
        price: 20.00,
        imageUrl:
            'https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg'),
    Product(
        id: 'p2',
        title: 'Red Shirt',
        description: 'a shirt red',
        price: 20.00,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9R6WVd7lIJePzBBD2MiZRy511oh9ONh0H_w&usqp=CAU'),
    Product(
        id: 'p3',
        title: 'Red Shirt',
        description: 'a shirt red',
        price: 20.00,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0PR2ZAzwhWY7orX3aNxJE67X5TaAjAN7H_g&usqp=CAU'),
    Product(
        id: 'p4',
        title: 'Red Shirt',
        description: 'a shirt red',
        price: 20.00,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC2yLsax2357l_Sli3jpe-kg1mdyJV9A3JjA&usqp=CAU'),
    Product(
        id: 'p5',
        title: 'Red Shirt',
        description: 'a shirt red',
        price: 20.00,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu_fpPmbK-bebEeX036y7frmW06amtCkG1ew&usqp=CAU'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MyShop',
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(loadedProducts[i].id,
            loadedProducts[i].title, loadedProducts[i].imageUrl),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
      ),
    );
  }
}
