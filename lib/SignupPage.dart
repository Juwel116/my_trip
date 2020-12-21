import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_trip/loginpage.dart';
//import 'dmanager.dart';
import 'Authenticate.dart';
//import 'loginpage.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
//  final DbUsers dbmanager = new DbUsers();

  final _nameController = TextEditingController();
  final _emailidController = TextEditingController();
  final _phonenumberController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = new GlobalKey<FormState>();
  var name, email, phone, password, token;
  // BusBooking userdetails;
  //List<BusBooking> userlist;
  //int updateIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          color: Colors.purpleAccent,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              "SIGN UP",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          )),
        ),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(40),
            //color: Theme.of(context).primaryColor,
            width: double.infinity,
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    decoration: new InputDecoration(labelText: 'Name'),
                    onChanged: (val) {
                      name = val;
                    },
                    controller: _nameController,
                    validator: (val) =>
                        val.isNotEmpty ? null : 'Name Should Not Be empty',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: new InputDecoration(labelText: 'Email ID'),
                    onChanged: (val) {
                      email = val;
                    },
                    controller: _emailidController,
                    validator: (val) =>
                        val.isNotEmpty ? null : 'Email id Should Not Be empty',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: new InputDecoration(labelText: 'Phone Number'),
                    onChanged: (val) {
                      phone = val;
                    },
                    controller: _phonenumberController,
                    validator: (val) => val.isNotEmpty
                        ? null
                        : 'Phone Number Should Not Be empty',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: new InputDecoration(labelText: 'Password'),
                    onChanged: (val) {
                      password = val;
                    },
                    controller: _passwordController,
                    validator: (val) =>
                        val.isNotEmpty ? null : 'Password Should Not Be empty',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration:
                        new InputDecoration(labelText: 'Confirm Password'),
                    //controller: _nameController,
                    validator: (val) => val.isNotEmpty
                        ? null
                        : 'Confirm Password Should Not Be empty',
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: RaisedButton(
                      onPressed: () {
                        // _submitUser(context);
                        AuthService()
                            .addUser(name, email, phone, password)
                            .then((val) {
                          Fluttertoast.showToast(
                              msg: val.data['msg'],
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        });
                      },
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  /*void _submitUser(BuildContext context) {
    if (_formKey.currentState.validate()) {
      if (userdetails == null) {
        BusBooking st = new BusBooking(
            name: _nameController.text,
            emailid: _emailidController.text,
            phonenumber: _phonenumberController.text,
            password: _passwordController.text);
        dbmanager.insertuserdetails(st).then((id) => {
              _nameController.clear(),
              _emailidController.clear(),
              _phonenumberController.clear(),
              _passwordController.clear(),
              print('User Added to Db $id')
            });
      } else {
        userdetails.name = _nameController.text;
        userdetails.emailid = _emailidController.text;
        userdetails.phonenumber = _phonenumberController.text;
        userdetails.password = _passwordController.text;
        print('User Added to Db 0');
        /* dbmanager.updateStudent(student).then((id) =>{
          setState((){
            studlist[updateIndex].name = _nameController.text;
            studlist[updateIndex].course= _courseController.text;
          }),
          _nameController.clear(),
          _courseController.clear(),
          student=null
        }*/

      }
    }
  }*/
}
