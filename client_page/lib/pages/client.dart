import 'package:flutter/material.dart';

class ClientPage extends StatelessWidget {
final  userdata;

  ClientPage(
      this.userdata);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 300.0,
                  floating: false,
                  pinned: true,
                  actions: <Widget>[
                    IconButton(icon: Icon(Icons.edit), onPressed: null),
                    IconButton(icon: Icon(Icons.more_vert), onPressed: null)
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: false,
                      title: Text('uyguyg',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21.0,
                          )),
                      background: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(image: ExactAssetImage("assets/download"),
                            fit: BoxFit.cover
                            )
                          ),
)),
                ),
              ];
            },
            body: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('fghfghfghfghf'),
                  subtitle: Text("Mobile"),
                ),
                ListTile(
                  title: Text("(374)47941945"),
                  subtitle: Text("Home"),
                  leading: Icon(Icons.phone),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.local_post_office),
                  title: Text("levon@gmail.com"),
                  subtitle: Text("Personal"),
                ),
                ListTile(
                  leading: Icon(Icons.calendar_today),
                  title: Text("02.06.2002"),
                  subtitle: Text("Day of birth"),
                ),
              ],
            )));
  }
}
