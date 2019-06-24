import 'package:flutter/material.dart';


class ProductsController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      RaisedButton(
        child: Text(
          'Press',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        color: Colors.red,
        onPressed: () {
//          setState(() {
//            _products.add('Advanced food tester');
//            print(_products);
//          });
        },
      ),
    );
  }
}

