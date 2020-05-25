import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
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
        body: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.redAccent, Colors.pinkAccent])),
              child: Container(
                width: double.infinity,
                height: 240.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://lh3.googleusercontent.com/-mGkGQtgsLjA/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcAQmY3uszZ1HR-gE4VfvMMJkiSNQ.CMID/s96-c/photo.jpg"),
                        radius: 50.0,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Oussama Abderrahim",
                        style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
              elevation: 8.0,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Card(
                          elevation: 4.0,
                          child: Text(
                            "Follow on Facebook",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Card(
                          elevation: 4.0,
                          child: Text(
                            "Follow on Instagram",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Card(
                          elevation: 4.0,
                          child: Text(
                            "Follow on Twitter",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Card(
                          elevation: 4.0,
                          child: Text(
                            "Follow on LinkedIn",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
