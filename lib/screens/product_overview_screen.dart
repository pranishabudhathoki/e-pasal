import 'package:epasal/model/product.dart';
import 'package:epasal/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
        id: "first",
        title: "Watch",
        price: 2000,
        description: "The best watch you will find anywhere",
        imageUrl:
            "https://cdn.shopify.com/s/files/1/2583/4922/products/11_8abde9a0-fec0-4a94-9be8-2314c2dd8b9b_800x.png?v=1545990174",
        isFavourite: false),
    Product(
        id: "second",
        title: "shoes",
        price: 1500,
        description: "The best watch you will find anywhere",
        imageUrl:
            "https://assets.adidas.com/images/w_600,f_auto,q_auto:sensitive,fl_lossy/e06ae7c7b4d14a16acb3a999005a8b6a_9366/Lite_Racer_RBN_Shoes_White_F36653_01_standard.jpg ",
        isFavourite: false),
    Product(
        id: "third",
        title: "Laptop",
        price: 80000,
        description: "The best watch you will find anywhere",
        imageUrl:
            " https://i.gadgets360cdn.com/large/mi_gaming_laptop_2019_image_1565003115644.jpg",
        isFavourite: false),
    Product(
        id: "fourth",
        title: "T-shirt",
        price: 2000,
        description: "The best watch you will find anywhere",
        imageUrl:
            " https://static-01.daraz.com.np/original/75295333bd7fa3b83d008642a35c8850.jpg",
        isFavourite: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-Pasal"),
      ),
      body: GridView.builder(
          itemCount: loadedProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 2,
          ),
          itemBuilder: (ctx, i) {
            return ProductItem(
              loadedProducts[i].title,
              loadedProducts[i].price,
              loadedProducts[i].imageUrl,
            );
          }),
    );
  }
}
