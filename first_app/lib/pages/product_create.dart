import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
}
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue;
  String descriptionValue;
  String priceValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: ListView(
        children: <Widget>[
          TextField(
            onChanged: (String value) {
              setState(() {
                titleValue = value;
              });
            },
              decoration: InputDecoration(labelText: "title")
          ),
          TextField(
              onChanged: (String value) {
                setState(() {
                  descriptionValue = value;
                });
              },
              decoration: InputDecoration(labelText: "description")),
          TextField(
              onChanged: (String value) {
                setState(() {
                  priceValue = value;
                });
              },
              decoration: InputDecoration(labelText: "price"),
          keyboardType: TextInputType.number,)
        ],
      ),
    );
  }
}

