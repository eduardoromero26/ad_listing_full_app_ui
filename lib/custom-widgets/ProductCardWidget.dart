// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project_name/screens/ProductDetail.dart';
//import 'package:get/get.dart';
//import 'package:project_name/screens/product-detail.dart';

class ProductCardWidget extends StatelessWidget {
  final String productName;
  final String price;
  final String imageURL;
  final String description;

  const ProductCardWidget({
    Key? key,
    required this.productName,
    required this.price,
    required this.imageURL,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ProductDetailScreen(
          detailProductName: productName,
          detailPrice: price,
          detailImageURL: imageURL,
          detailDescription: description,
        ));
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.network(
                imageURL,
                fit: BoxFit.cover,
              )),
          Container(
            height: 68,
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            color: Colors.black.withOpacity(0.6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    color: Colors.orange[800],
                  ),
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
