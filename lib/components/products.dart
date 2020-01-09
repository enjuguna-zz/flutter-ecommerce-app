import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "Picture":"images/products/clothes",
      "Price":"Blazer",
      "Old Price":"Blazer",

    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
