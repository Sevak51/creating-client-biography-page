import 'package:flutter/material.dart';

class ClientPage extends StatelessWidget {
  final String name;
  final String surname;
  final String emailAdress;
  final String phoneNumber;
  final String dateOfBirth;
  final String placeOfBirth;
  final String index;
  final String married;
  final String profession;
  final String hobby;

  ClientPage(
      this.name,
      this.surname,
      this.emailAdress,
      this.phoneNumber,
      this.dateOfBirth,
      this.placeOfBirth,
      this.index,
      this.married,
      this.profession,
      this.hobby);

  @override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("Client page"),
    ),
    body: ListView(
      padding: const EdgeInsets.all(8.0),
      children: <Widget>[
        Container(child:
          Row(children: <Widget>[
            Image.asset('assets/user.png',
                height: 140.0, width: 140.0),
            Container(
                margin: EdgeInsets.all(50.0),
                child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  placeOfBirth,
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  index,
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  married,
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  profession,
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  hobby,
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            )),

      ],),
        ),
        Text(name, style: TextStyle(fontSize: 15.0),),
Text(surname, style: TextStyle(fontSize: 15.0),),
Text(emailAdress, style: TextStyle(fontSize: 15.0),),
Text(phoneNumber, style: TextStyle(fontSize: 15.0),),
Text(dateOfBirth, style: TextStyle(fontSize: 15.0),)
      ],

    ),
  );}
}
