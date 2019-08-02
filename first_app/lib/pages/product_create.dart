import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

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
  String date;
  bool editable = false;
  final dateFormat = DateFormat("EEEE, MMMM d, yyyy");



  DropdownButton _dropdown() => DropdownButton<String>(
    items: [
      DropdownMenuItem<String>(
        value: 'outdated',
        child: Text('outdated'),

      ),
      DropdownMenuItem<String>(
        value: 'new',
        child: Text('new'),
      ),
    ],
    hint: Text('Choose product quality'),
    onChanged: (value) {
      setState(() {
        date = value;
      });
    },
    value: date,
  );

  Widget _buildPicker(){
    if (date == 'outdated'){
      return DateTimePickerFormField(
        dateOnly: true,
        format: dateFormat,
        decoration: InputDecoration(labelText: 'Date of birth'),
      );
    }
    return Container();




  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: ListView(
        children: <Widget>[
          TextFormField(

            onSaved: (String value) {
              setState(() {
                titleValue = value;
              });
            },
              decoration: InputDecoration(labelText: "title")

          ),
          TextFormField(
              onSaved: (String value) {
                setState(() {
                  descriptionValue = value;
                });

              },
              decoration: InputDecoration(labelText: "description")),
          TextFormField(
              onSaved: (String value) {
                setState(() {
                  priceValue = value;
                });
              },

              decoration: InputDecoration(labelText: "price"),
          keyboardType: TextInputType.number,),
          _dropdown(),
          _buildPicker()

        ],
      ),
    );
  }
}
//TextFormField(
//onFieldSubmitted: (String value) {
//setState(() {
//_userdata['surname'] = value;
//});
//},
//decoration: InputDecoration(labelText: "surname"),
//validator: (value) {
//if (value.isEmpty) {
//return 'Enter some text';
//}
//return null;
//},
//),

