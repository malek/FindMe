import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  @override
  _HomState createState() => _HomState();
}

class _HomState extends State<Home> {
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
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Center(
              child: Text(
                'Welcome in FindMe :D',
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 100),
          RaisedButton.icon(
            color: Colors.grey[900],
              onPressed: () {
                Navigator.pushNamed(context, '/register');
               
              },
              icon: Icon(Icons.add_to_home_screen, color: Colors.yellow[400],),
              label: Text(
                'Register',
                style: TextStyle(color: Colors.yellow[400], fontSize: 16, fontWeight: FontWeight.bold),
              )),
        ],
      )),
    );
  }
}
