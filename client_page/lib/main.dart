import 'package:flutter/material.dart';
import 'package:client_page/body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Client page"),
            ),
            body: FirstPageBody()));
  }
}
