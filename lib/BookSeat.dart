import 'package:flutter/material.dart';

import 'ProfilePage.dart';
import 'TicketPage.dart';
import 'loginpage.dart';

class BookMySeat extends StatefulWidget {
  BookMySeat({Key key, this.title, this.name}) : super(key: key);

  final String title;
  final name;

  @override
  _BookMySeatState createState() => _BookMySeatState();
}

class _BookMySeatState extends State<BookMySeat> {
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
                    'Book My Seat',
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(children: [
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        // ignore: unused_local_variable
                        var seatno = 1;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 2;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 3;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 4;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 5;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                  ]),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        // ignore: unused_local_variable
                        var seatno = 6;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 7;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 8;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 50,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 9;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 10;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        // ignore: unused_local_variable
                        var seatno = 11;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 12;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 13;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 14;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 15;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        // ignore: unused_local_variable
                        var seatno = 16;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 17;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 18;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 19;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 20;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        // ignore: unused_local_variable
                        var seatno = 21;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 22;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 23;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 24;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 25;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        // ignore: unused_local_variable
                        var seatno = 26;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 27;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 28;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 29;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.directions_transit,
                      ),
                      iconSize: 25,
                      color: Colors.green,
                      splashColor: Colors.purple,
                      onPressed: () {
                        var nameEntered = '${widget.name}';
                        var seatno = 30;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketPage(
                                    username: nameEntered,
                                    seatnumber: seatno,
                                  )),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
