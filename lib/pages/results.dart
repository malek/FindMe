import 'package:flutter/material.dart';
class Results extends StatefulWidget {
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
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
                Navigator.pushNamed(context, '/home');
               
              },
              icon: Icon(Icons.add_to_home_screen, color: Colors.yellow[400],),
              label: Text(
                'Back to Home',
                style: TextStyle(color: Colors.yellow[400], fontSize: 16, fontWeight: FontWeight.bold),
              )),

    );
  }
}