import 'package:flutter/material.dart';

class ClientPage extends StatelessWidget {
  final userdata;

  ClientPage(this.userdata);

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
                      title: Text(
                          userdata['name'].toString() +
                              userdata['surname'].toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21.0,
                          )),
                      background: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: ExactAssetImage("assets/download"),
                                fit: BoxFit.cover)),
                      )),
                ),
              ];
            },
            body: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  FocusScope.of(context).requestFocus(new FocusNode());
                },
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text(userdata['phoneNumber'].toString()),
                      subtitle: Text("Mobile"),
                    ),
                    ListTile(
                      title: Text(userdata['placeOfBirth'].toString()),
                      subtitle: Text('place of birth'),
                      leading: Icon(Icons.location_on),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.local_post_office),
                      title: Text(userdata['emailAdress'].toString()),
                      subtitle: Text("Personal"),
                    ),
                    ListTile(
                      leading: Icon(Icons.calendar_today),
                      title: Text(userdata['date'].toString()),
                      subtitle: Text("Date of birth"),
                    ),
                    ListTile(
                      title: Text(userdata['gender'].toString()),
                      subtitle: Text("Gender"),
                    ),
                  ],
                ))));
  }
}
