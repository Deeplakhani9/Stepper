import 'package:flutter/material.dart';

class Global {
  static List<Map<dynamic, dynamic>> step = [
    {
      'title': 'SignUP',
      'content': Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: '👤 Full Name'),
          ),
          TextField(
            decoration: InputDecoration(hintText: '✉ Email id'),
          ),
          TextField(
            decoration: InputDecoration(hintText: '🔑 Password'),
          ),
          TextField(
            decoration: InputDecoration(hintText: '🔑 Confrom password'),
          ),
        ],
      )
    },
    {
      'title': 'Login',
      'content': Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: '👤 User Name'),
          ),
          TextField(
            decoration: InputDecoration(hintText: '🔑 Password'),
          ),
        ],
      )
    },
    {
      'title': ' Home',
      'content': TextField(
        decoration: InputDecoration(hintText: '🏠 Home'),
      )
    }
  ];
  static int index = 0;
}
