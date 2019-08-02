import 'package:flutter/material.dart';
import 'package:client_page/pages/client.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class FirstPageBody extends StatefulWidget {
  @override
  _FirstPageBodyState createState() => _FirstPageBodyState();
}

class _FirstPageBodyState extends State<FirstPageBody> {
  bool editable = false;
  final dateFormat = DateFormat("EEEE, MMMM d, yyyy");
  DateTime date;
  @override
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Map<String, dynamic> _userdata = {
    "name": null,
    "surname": null,
    "emailAdress": null,
    "phoneNumber": null,
    "dateOfBirth": null,
    "placeOfBirth": null,
    "index": null,
    "married": false,
    "profession": null,
    "hobby": null,
    "date": null,
    "gender": null
  };

  DropdownButton _dropdown() => DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            value: 'Male',
            child: Text('Male'),
          ),
          DropdownMenuItem<String>(
            value: 'Female',
            child: Text('Female'),
          ),
        ],
        hint: Text('Choose your gender'),
        onChanged: (value) {
          setState(() {
            _userdata['gender'] = value;
          });
        },
        value: _userdata['gender'],
      );

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("User account data"),
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      onFieldSubmitted: (String value) {
                        setState(() {
                          _userdata['name'] = value;
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
                          _userdata['surname'] = value;
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
                    _dropdown(),
                    SwitchListTile(value: _userdata['married'], onChanged:(value){
                      setState(() {


                        _userdata['married'] = value;

                      });

                    },
                      title: Text('Married'),),
                    TextFormField(
                      onFieldSubmitted: (String value) {
                        setState(() {
                          _userdata['emailAdress'] = value;
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
                          _userdata['phoneNumber'] = value;
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
//              TextFormField(
//                  onFieldSubmitted: (String value) {
//                    setState(() {
//                      _userdata['dateOfBirth'] = value;
//                    });
//                  },
//                  decoration: InputDecoration(labelText: "date of birth"),
//                  keyboardType: TextInputType.number,
//                  validator: (value) {
//                    if (value.isEmpty) {
//                      return 'Enter some text';
//                    }
//                    return null;
//                  }),
                    TextFormField(
                      onFieldSubmitted: (String value) {
                        setState(() {
                          _userdata['placeOfBirth'] = value;
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
                            _userdata['index'] = value;
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
                            _userdata['profession'] = value;
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
                            _userdata['hobby'] = value;
                          });
                        },
                        decoration: InputDecoration(labelText: "hobby"),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Enter some text';
                          }
                          return null;
                        }),
                    Container(
                      child: Column(
                        children: <Widget>[
                          DateTimePickerFormField(
                            dateOnly: true,
                            format: dateFormat,
                            decoration: InputDecoration(labelText: 'Date of birth'),
                            onChanged: (dt) => setState(() => _userdata["date"] = dt),
                          ),
                        ],
                      ),
                    ),

                    RaisedButton(
                      onPressed: () {
//                  print(_userdata.toString());
                        if (_formKey.currentState.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ClientPage(_userdata)));
                        }
                      },
                      color: Theme.of(context).primaryColor,
                      child: Text("Save"),
                    )

                  ],
                ),
              )
             ],
          ),
        ));
  }
}
