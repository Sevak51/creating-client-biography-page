import 'package:flutter/material.dart';
import 'package:client_page/pages/client.dart';

class FirstPageBody extends StatefulWidget {
  @override
  _FirstPageBodyState createState() => _FirstPageBodyState();
}

class _FirstPageBodyState extends State<FirstPageBody> {
  @override
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


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

 Map<String,dynamic> _userdata = {
   "name": null,
   "surname" : null,
   "emailAdress" : null,
   "phoneNumber" : null,
   "dateOfBirth" : null,
   "placeOfBirth" : null,
   "index" : null,
   "married" : null,
   "profession" : null,
   "hobby" : null,
};

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("User account data"),
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                onFieldSubmitted: (String value) {
                  setState(() {
                    name = value;
                  });
                },
                decoration: InputDecoration(labelText: "name"),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                onFieldSubmitted: (String value) {
                  setState(() {
                    surname = value;
                  });
                },
                decoration: InputDecoration(labelText: "surname"),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                onFieldSubmitted: (String value) {
                  setState(() {
                    emailAdress = value;
                  });
                },
                decoration: InputDecoration(labelText: "email adress"),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                onFieldSubmitted: (String value) {
                  setState(() {
                    phoneNumber = value;
                  });
                },
                decoration: InputDecoration(labelText: "phone number"),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter some text';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                  onFieldSubmitted: (String value) {
                    setState(() {
                      dateOfBirth = value;
                    });
                  },
                  decoration: InputDecoration(labelText: "date of birth"),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter some text';
                    }
                    return null;
                  }),
              TextFormField(
                onFieldSubmitted: (String value) {
                  setState(() {
                    placeOfBirth = value;
                  });
                },
                decoration: InputDecoration(labelText: "place of birth"),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                  onFieldSubmitted: (String value) {
                    setState(() {
                      index = value;
                    });
                  },
                  decoration: InputDecoration(labelText: "user index"),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter some text';
                    }
                    return null;
                  }),
              TextFormField(
                  onFieldSubmitted: (String value) {
                    setState(() {
                      married = value;
                    });
                  },
                  decoration: InputDecoration(labelText: "married or not"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter some text';
                    }
                    return null;
                  }),
              TextFormField(
                  onFieldSubmitted: (String value) {
                    setState(() {
                      profession = value;
                    });
                  },
                  decoration: InputDecoration(labelText: "profession"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter some text';
                    }
                    return null;
                  }),
              TextFormField(
                  onFieldSubmitted: (String value) {
                    setState(() {
                      hobby = value;
                    });
                  },
                  decoration: InputDecoration(labelText: "hobby"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter some text';
                    }
                    return null;
                  }),


              RaisedButton(
                onPressed: () {
                  if(_formKey.currentState.validate()){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClientPage(
                              _userdata       )));
                }},
                color: Theme.of(context).primaryColor,
                child: Text("Save"),
              )
            ],
          ),
        ));
  }
}
