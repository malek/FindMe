import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FindMe',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: RaisedButton.icon(
          color: Colors.blue,
          onPressed: () {
            Navigator.pushNamed(context, '/results');
          },
          icon: Icon(
            Icons.add_to_home_screen,
            color: Colors.white,
          ),
          label: Text(
            'Done',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
