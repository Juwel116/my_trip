import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  Dio dio = new Dio();
  login(email, password) async {
    try {
      return await dio.post('https://my-trip1.herokuapp.com/authenticate',
          data: {"email": email, "password": password},
          options: Options(contentType: Headers.formUrlEncodedContentType));
    } on DioError catch (e) {
      Fluttertoast.showToast(
          msg: e.response.data['msg'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  addUser(name, email, phone, password) async {
    return await dio.post('https://my-trip1.herokuapp.com/adduser',
        data: {
          "name": name,
          "email": email,
          "phone": phone,
          "password": password
        },
        options: Options(contentType: Headers.formUrlEncodedContentType));
  }

  /*getinfo(token) async {
    dio.options.headers['Authorization'] = 'Bearer $token';
    return await dio.get('https://my-trip1.herokuapp.com/getinfo');
  }*/
}
