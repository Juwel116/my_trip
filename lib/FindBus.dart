import 'package:flutter/material.dart';
import 'package:my_trip/BookSeat.dart';

import 'package:flutter/cupertino.dart';

import 'ProfilePage.dart';
import 'loginpage.dart';

class FindYourBus extends StatefulWidget {
  const FindYourBus({
    Key key,
    @required this.frominfo,
    @required this.toinfo,
    @required this.dateinfo,
    this.users,
  }) : super(key: key);
  final frominfo;
  final toinfo;
  final dateinfo;
  final users;

  @override
  _FindYourBusState createState() => _FindYourBusState();
}

class _FindYourBusState extends State<FindYourBus> {
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
                    'Select Bus',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Chennai - Bangalore',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '11:30 - 23:45',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Universal Bus',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'A/C',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text('Rs.200'),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              onPressed: () {
                                var nameEntered = '${widget.users}';
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BookMySeat(
                                            name: nameEntered,
                                          )),
                                );
                              },
                              textColor: Colors.white,
                              color: Colors.deepPurpleAccent,
                              child: Text("View".toUpperCase(),
                                  style: TextStyle(fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Chennai - Bangalore',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '4:30 - 13:45',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Volvo',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'A/C',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text('Rs.150'),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              onPressed: () {
                                var nameEntered = '${widget.users}';
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BookMySeat(
                                            name: nameEntered,
                                          )),
                                );
                              },
                              textColor: Colors.white,
                              color: Colors.deepPurpleAccent,
                              child: Text("View".toUpperCase(),
                                  style: TextStyle(fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Chennai - Bangalore',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '8:30 - 18:45',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Sleeper',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'A/C',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text('Rs.300'),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(color: Colors.blue),
                              ),
                              onPressed: () {},
                              textColor: Colors.white,
                              color: Colors.deepPurpleAccent,
                              child: Text("View".toUpperCase(),
                                  style: TextStyle(fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Chennai - Bangalore',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '11:30 - 23:45',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Volvo',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Non A/C',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text('Rs.250'),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              onPressed: () {
                                var nameEntered = '${widget.users}';
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BookMySeat(
                                            name: nameEntered,
                                          )),
                                );
                              },
                              textColor: Colors.white,
                              color: Colors.deepPurpleAccent,
                              child: Text("View".toUpperCase(),
                                  style: TextStyle(fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Chennai - Bangalore',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '11:30 - 23:45',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Volvo',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Non A/C',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text('Rs.300'),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              onPressed: () {
                                var nameEntered = '${widget.users}';
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BookMySeat(
                                            name: nameEntered,
                                          )),
                                );
                              },
                              textColor: Colors.white,
                              color: Colors.deepPurpleAccent,
                              child: Text("View".toUpperCase(),
                                  style: TextStyle(fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Chennai - Bangalore',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '11:30 - 23:45',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Volvo',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Non A/C',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text('Rs.100'),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              onPressed: () {},
                              textColor: Colors.white,
                              color: Colors.deepPurpleAccent,
                              child: Text("View".toUpperCase(),
                                  style: TextStyle(fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Chennai - Bangalore',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '11:30 - 23:45',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Volvo',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Non A/C',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text('Rs.350'),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              onPressed: () {
                                var nameEntered = '${widget.users}';
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BookMySeat(
                                            name: nameEntered,
                                          )),
                                );
                              },
                              textColor: Colors.white,
                              color: Colors.deepPurpleAccent,
                              child: Text("View".toUpperCase(),
                                  style: TextStyle(fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Chennai - Bangalore',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '11:30 - 23:45',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Volvo',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Non A/C',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text('Rs.75'),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              onPressed: () {
                                var nameEntered = '${widget.users}';
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BookMySeat(
                                            name: nameEntered,
                                          )),
                                );
                              },
                              textColor: Colors.white,
                              color: Colors.deepPurpleAccent,
                              child: Text("View".toUpperCase(),
                                  style: TextStyle(fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Chennai - Bangalore',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '11:30 - 23:45',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Volvo',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Non A/C',
                              style: TextStyle(
                                letterSpacing: 2.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text('Rs.200'),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              onPressed: () {
                                var nameEntered = '${widget.users}';
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BookMySeat(
                                            name: nameEntered,
                                          )),
                                );
                              },
                              textColor: Colors.white,
                              color: Colors.deepPurpleAccent,
                              child: Text("View".toUpperCase(),
                                  style: TextStyle(fontSize: 14)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
