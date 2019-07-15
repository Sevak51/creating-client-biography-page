import 'package:flutter/material.dart';
import 'package:client_page/pages/client.dart';

class FirstPageBody extends StatefulWidget {
  @override
  _FirstPageBodyState createState() => _FirstPageBodyState();
}

class _FirstPageBodyState extends State<FirstPageBody> {
  @override

  String name;
  String surname;
  String emailAdress;
  String phoneNumber;
  String dateOfBirth;
  String placeOfBirth;
  String index;
  String married;
  String profession;
  String hobby;

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: ListView(
        children: <Widget>[
          TextField(
              onChanged: (String value) {
                setState(() {
                  name = value;
                });
              },
              decoration: InputDecoration(labelText: "name")),
          TextField(
              onChanged: (String value) {
                setState(() {
                  surname = value;
                });
              },
              decoration: InputDecoration(labelText: "surname")),
          TextField(
              onChanged: (String value) {
                setState(() {
                  emailAdress = value;
                });
              },
              decoration: InputDecoration(labelText: "email adress")),
          TextField(
            onChanged: (String value) {
              setState(() {
                phoneNumber = value;
              });
            },
            decoration: InputDecoration(labelText: "phone number"),
            keyboardType: TextInputType.number,
          ),
          TextField(
            onChanged: (String value) {
              setState(() {
                dateOfBirth = value;
              });
            },
            decoration: InputDecoration(labelText: "date of birth"),
            keyboardType: TextInputType.number,
          ),
          TextField(
              onChanged: (String value) {
                setState(() {
                  placeOfBirth = value;
                });
              },
              decoration: InputDecoration(labelText: "place of birth")),
          TextField(
            onChanged: (String value) {
              setState(() {
                index = value;
              });
            },
            decoration: InputDecoration(labelText: "user index"),
            keyboardType: TextInputType.number,
          ),
          TextField(
              onChanged: (String value) {
                setState(() {
                  married = value;
                });
              },
              decoration: InputDecoration(labelText: "married or not")),
          TextField(
              onChanged: (String value) {
                setState(() {
                  profession = value;
                });
              },
              decoration: InputDecoration(labelText: "profession")),
          TextField(
              onChanged: (String value) {
                setState(() {
                  hobby = value;
                });
              },
              decoration: InputDecoration(labelText: "hobby")),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ClientPage(name,surname,emailAdress,phoneNumber,dateOfBirth,placeOfBirth,index,married,profession,hobby)));
            },
            color: Theme.of(context).primaryColor,
            child: Text("Save"),
          )
        ],
      ),
    );
  }
}
