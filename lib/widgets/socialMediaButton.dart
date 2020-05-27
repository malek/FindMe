import 'package:flutter/material.dart';


List<Widget> getTextWidgets(List<String> strings) {
  List<Widget> list = new List<Widget>();
  for (var i = 0; i < strings.length; i++) {
    String website = strings[i];
    list.add(SocialMediaButton(website: website));
  }
  return list;
}
class SocialMediaButton extends StatelessWidget {
  
  
  
  
  const SocialMediaButton({
    Key key,
    @required this.website,
  }) : super(key: key);

  final String website;
 @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {},
      textColor: Colors.white,
      padding: const EdgeInsets.all(0.0),
      elevation: 4.0,
      child: Container(
          width: 300,
          decoration: const BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF0984e3),
                // Color(0xFF1976D2),
                Color(0xFF74b9ff),
              ],
            ),
          ),
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Icon(Icons.android, color: Colors.black),
              SizedBox(width: 20),
              Text("Follow on $website",
                  textWidthBasis: TextWidthBasis.parent,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 20, color: Colors.black)),
            ],
          )),
    );
  }
}