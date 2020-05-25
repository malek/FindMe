import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text(
          'FindMe',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,

      ),
      body: RaisedButton.icon(
            color: Colors.grey[900],
              onPressed: () {
                Navigator.pushNamed(context, '/results');
               
              },
              icon: Icon(Icons.add_to_home_screen, color: Colors.yellow[400],),
              label: Text(
                'Done',
                style: TextStyle(color: Colors.yellow[400], fontSize: 16, fontWeight: FontWeight.bold),
              )),
    );
  }
}