import 'package:flutter/material.dart';
import '../widgets/socialMediaButton.dart';

class Results extends StatefulWidget {
  @override
  _ResultsState createState() => _ResultsState();
}

// List<Widget> getTextWidgets(List<String> strings) {
//   List<Widget> list = new List<Widget>();
//   for (var i = 0; i < strings.length; i++) {
//     String website = strings[i];
//     list.add(SocialMediaButton(website: website));
//   }
//   return list;
// }

// class SocialMediaButton extends StatelessWidget {
//   const SocialMediaButton({
//     Key key,
//     @required this.website,
//   }) : super(key: key);

//   final String website;

//   @override
//   Widget build(BuildContext context) {
//     return new RaisedButton(
//       onPressed: () {},
//       textColor: Colors.white,
//       padding: const EdgeInsets.all(0.0),
//       elevation: 4.0,
//       child: Container(
//           width: 300,
//           decoration: const BoxDecoration(
//             color: Colors.white,
//             gradient: LinearGradient(
//               colors: <Color>[
//                 Color(0xFF0984e3),
//                 // Color(0xFF1976D2),
//                 Color(0xFF74b9ff),
//               ],
//             ),
//           ),
//           padding: const EdgeInsets.all(10.0),
//           child: Row(
//             mainAxisSize: MainAxisSize.max,
//             children: <Widget>[
//               Icon(Icons.android, color: Colors.black),
//               SizedBox(width: 20),
//               Text("Follow on $website",
//                   textWidthBasis: TextWidthBasis.parent,
//                   textAlign: TextAlign.center,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(fontSize: 20, color: Colors.black)),
//             ],
//           )),
//     );
//   }
// }

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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                  height: 300,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: getTextWidgets(
                          ["Facebook", "Twitter", "Instagram", "Github"]),),
                ),
              ],
            ),
          ],
        ));
  }
}
