import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_trip/SignupPage.dart';

import 'Authenticate.dart';
import 'BookBus.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final namecontroller = new TextEditingController();
  var email, password, token, name;
  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 20.0);
    TextStyle linkStyle = TextStyle(color: Colors.blue);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: Container(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'LOGIN',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 25),
            ),
          )),
          color: Colors.purpleAccent,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(40),
          //color: Theme.of(context).primaryColor,
          width: double.infinity,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Email Id',
                ),
                onChanged: (val) {
                  email = val;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Password',
                ),
                onChanged: (val) {
                  password = val;
                },
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: RaisedButton(
                  onPressed: () {
                    AuthService().login(email, password).then((val) {
                      if (val.data['success']) {
                        token = val.data['token'];
                        // ignore: unused_local_variable
                        var nameEntered = namecontroller.text;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectBus(
                                    email: email,
                                  )),
                        );
                        Fluttertoast.showToast(
                            msg: 'Successfully Logged',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 16.0);
                        // print("Authen");
                      }
                    });
                  },
                  child: Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              SizedBox(height: 15),
              RichText(
                text: TextSpan(
                  style: defaultStyle,
                  children: <TextSpan>[
                    TextSpan(text: 'Not registered yet?'),
                    TextSpan(
                        text: 'Sign Up',
                        style: linkStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ),
                            );
                          }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
