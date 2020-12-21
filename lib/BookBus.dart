import 'package:flutter/material.dart';
import 'package:my_trip/FindBus.dart';
import 'package:my_trip/ProfilePage.dart';
import 'package:my_trip/loginpage.dart';
//import 'package:my_trip/constants.dart';

class SelectBus extends StatefulWidget {
  SelectBus({
    Key key,
    this.username,
    this.email,
  }) : super(key: key);
  final username;
  final email;
  @override
  _SelectBusState createState() => _SelectBusState();
}

class _SelectBusState extends State<SelectBus> {
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

  final namecontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    loadData();
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(250),
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
                          fontWeight: FontWeight.w700),
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
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 0,
                ),
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.26,
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: Container(
                        decoration: BoxDecoration(
                            // color: mainColor,
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(20),
                              topRight: const Radius.circular(20),
                              bottomLeft: const Radius.circular(20),
                              bottomRight: const Radius.circular(20),
                            ),
                            border: Border.all(
                                width: 1,
                                color: Colors.grey,
                                style: BorderStyle.solid)),
                        padding:
                            EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              //controller: namecontroller,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                labelText: 'From',
                                labelStyle: TextStyle(
                                  fontFamily: 'Arial',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            TextFormField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                labelText: 'To',
                                labelStyle: TextStyle(
                                    fontFamily: 'Arial',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            TextFormField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                icon: Icon(Icons.calendar_view_day_outlined),
                                labelText: 'Date',
                                labelStyle: TextStyle(
                                    fontFamily: 'Arial',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Row(
                    children: <Widget>[
                      Center(
                        child: RaisedButton(
                          onPressed: () {
                            // ignore: unused_local_variable
                            var from = namecontroller.text;
                            // ignore: unused_local_variable
                            var to = namecontroller.text;
                            // ignore: unused_local_variable
                            var date = namecontroller.text;
                            // ignore: unused_local_variable
                            // var user = '$username';
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FindYourBus(
                                        frominfo: from,
                                        toinfo: to,
                                        dateinfo: date,
                                        // users: user,
                                      )),
                            );
                          },
                          child: Text(
                            "SELECT MY BUS",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        resizeToAvoidBottomPadding: false);
  }
}
