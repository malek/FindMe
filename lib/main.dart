import 'package:findme/screens/primoRegister.dart';
import 'package:findme/screens/register.dart';
import 'package:findme/screens/results.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/main',
      routes: {
        //'/':  (context) => WelcomeScreen(),
        '/primoRegister': (context) => PrimoRegister(),
        '/register': (context) => Register(),
        '/results': (context) => Results(),
        '/main': (context) => WelcomeScreen(),
      },
      title: 'Find Me',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: kBlackColor,
            ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/space.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.display3,
                children: [
                  TextSpan(
                      text: "Find", //fontWeight: FontWeight.bold,
                      style: TextStyle(color: kBlueGreyColor,fontSize: 80)),
                  TextSpan(
                    text: "Me.",
                    style: TextStyle(fontSize: 60,
                        fontWeight: FontWeight.bold, color: kRedDarkColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              height: (MediaQuery.of(context).size.width) - 350,
              child: RaisedButton(
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.white70,
                  //kBlueGreyColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(color: kBlueGreyColor, width: 2.0)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          // return Register();
                          return PrimoRegister();
                        },
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
