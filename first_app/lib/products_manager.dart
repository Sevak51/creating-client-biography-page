import 'package:flutter/material.dart';
import 'package:first_app/products.dart';
import 'package:first_app/ProductsController.dart';


class ProductsManager extends StatefulWidget {
  final String startingProduct;

  ProductsManager(this.startingProduct);


  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}

class _ProductsManagerState extends State<ProductsManager> {
  List<String> _products = [];

  @override
  void initState() {

    super.initState();
    _products.add(widget.startingProduct);

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ProductsController(),

        Products(_products),


      ],
    );
  }

}


