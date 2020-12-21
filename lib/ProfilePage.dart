import 'package:flutter/material.dart';
import 'package:my_trip/BookBus.dart';
import 'loginpage.dart';

// ignore: must_be_immutable
class ProfilePage extends StatefulWidget {
  ProfilePage({Key key, this.username, this.email, this.phone})
      : super(key: key);
  final username;
  final email;
  final phone;
  var token;
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<DropdownMenuItem<String>> listDrop = [];

  void loadData() {
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: new Text('BookBus'),
      value: 'bookbus',
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('Logout'),
      value: 'logout',
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadData();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          color: Colors.purpleAccent,
          child: Row(
            children: [
              Text(
                'My Profile',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 52,
                    fontWeight: FontWeight.w100),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: new DropdownButton(
                      items: listDrop,
                      hint: new Icon(Icons.person),
                      onChanged: (value) {
                        if (value == "logout") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectBus()),
                          );
                        }
                      })),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Column(children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Name: ${widget.username}',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Email: ${widget.username}',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Phone No: ${widget.phone}',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'From: ${widget.username}',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'To: ${widget.username}',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
