//i made the button ta3 existing links same size

import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:findme/userInformation.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String urlLink;
  UserInformation user = UserInformation();
  List<String> urls = [];
  final TextEditingController eCtrl = new TextEditingController();
  final urlLinkControler = new TextEditingController();

  Widget _urlField() {
    return TextFormField(
      controller: urlLinkControler,
      style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2.0),
      decoration: InputDecoration(
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(5.0),
          borderSide: new BorderSide(),
        ),
        hintText: 'ADD LINK',
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.url,
    );
  }

  List<String> urlss = [];
  Container existingLinksContainer = new Container();
  Container fieldLinkContainer = new Container();
  Container cont = new Container();
  String changeText = 'Add links';
  int doneClicks = 0;

  @override
  Widget build(BuildContext context) {
    user = ModalRoute.of(context).settings.arguments as UserInformation;
    print('brand: ${user.brandName} ');
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 60.0),
            Center(
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/uploadPicTest.jpg'),
                    radius: 40.0,
                  ),
                  SizedBox(height: 20),
                  Text('${user.brandName}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kIconColor,
                      )),
                ],
              ),
            ),
            SizedBox(height: 10),
            existingLinksContainer,
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            fieldLinkContainer,
            SizedBox(
              //width: MediaQuery.of(context).size.width * .5,
              height: (MediaQuery.of(context).size.width) - 350,
              child: RaisedButton(
                  child: Text('$changeText',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  color: Colors.white70,
                  //kBlueGreyColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(color: kBlueGreyColor, width: 2.0)),
                  onPressed: () {
                    setState(() {
                      doneClicks += 1;
                      changeText = 'Done ALL';
                    });
                    if (doneClicks == 1) {
                      fieldLinkContainer = Container(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          _urlField(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(
                                child: RaisedButton(
                                    child: Text('save link',
                                        style: TextStyle(
                                          fontSize: 20,
                                        )),
                                    color: Colors.white70,
                                    //kBlueGreyColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        side: BorderSide(
                                            color: kBlueGreyColor, width: 2.0)),
                                    onPressed: () {
                                      setState(() {
                                        urlLink = urlLinkControler.text;
                                        urls.add(urlLinkControler.text);
                                      });
                                      existingLinksContainer = Container(
                                          child: Column(
                                        children: <Widget>[
                                          existingLinksContainer,
                                          SizedBox(
                                            width: 350.0,
                                            height: 40.0,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),

                                              //     onPressed: () {}),
                                              child: SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .5,
                                                  height:
                                                      (MediaQuery.of(context)
                                                              .size
                                                              .width) -
                                                          350,
                                                  child: RaisedButton(
                                                    child: Text(
                                                        'Follow ${user.brandName} on $urlLink',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            color:
                                                                kBlueGreyColor)),
                                                    color: Colors.white70,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25.0),
                                                            side: BorderSide(
                                                                color:
                                                                    kBlueGreyColor,
                                                                width: 2.0)),
                                                    onPressed: () {},
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ));
                                    }),
                              ),
                            ],
                          ),
                        ],
                      ));
                    } else if (doneClicks == 2) {
                      setState(() {
                        UserInformation user = UserInformation(
                          //later i have to pass pic
                          urls: urls,
                        );
                        print(urls);
                        Navigator.of(context)
                            .pushNamed('/results', arguments: user);
                      });
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
