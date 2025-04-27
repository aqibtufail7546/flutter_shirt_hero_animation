import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_hero/product_page_detail_state.dart';

class ProductDetailPage extends StatefulWidget {
  final String id;
  final String image;
  final String title;
  final String price;
  final String description;

  const ProductDetailPage({
    Key? key,
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  }) : super(key: key);

  @override
  State<ProductDetailPage> createState() => ProductDetailPageState();
}
