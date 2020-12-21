//import 'dart:html';

import 'package:flutter/material.dart';

import 'BookBus.dart';
import 'ProfilePage.dart';
import 'loginpage.dart';

class TicketPage extends StatefulWidget {
  final username;
  final seatnumber;
  TicketPage({@required this.username, @required this.seatnumber});

  @override
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  List<DropdownMenuItem<String>> listDrop = [];

  void loadData() {
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: new Text('Profile'),
      value: 'profile',
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    'Book Your Bus',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 52,
                        fontWeight: FontWeight.w100),
                  ),
                ),
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
                                builder: (context) => ProfilePage()),
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
          child: Column(
            children: <Widget>[
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
                      'Bus: ${widget.username}',
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
                      'Seat No: ${widget.seatnumber}',
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
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Route: ${widget.username}',
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
                      'BusTime: ${widget.username}',
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
                      'Date: ${widget.username}',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Center(
                child: Row(
                  children: <Widget>[
                    Center(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectBus()),
                          );
                        },
                        color: Colors.blue,
                        child: Text(
                          "PROCEED TO PAYMENT",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
