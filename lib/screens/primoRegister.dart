import 'package:flutter/material.dart';
import 'package:findme/userInformation.dart';

import '../constants.dart';

class PrimoRegister extends StatefulWidget {
  @override
  _PrimoRegisterState createState() => _PrimoRegisterState();
}

class _PrimoRegisterState extends State<PrimoRegister> {
  String brand;
  final brandControler = new TextEditingController();

  Widget _bandNameField() {
    return TextFormField(
      controller: brandControler,
      style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2.0,color: kBlueGreyColor),
      decoration: InputDecoration(
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(1.0),
          borderSide: new BorderSide(style: BorderStyle.solid, color:kBlueGreyColor),
        ),
        hintText: 'Brand Name',
        hintStyle: TextStyle(
          color: Colors.black38,
        ),
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset:
            false, //to avoid yellow bottom error once we tap to write
        body: Center(
          child: Column(
            children: <Widget>[
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 60.0,
                      ),
                      Center(
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/uploadPicTest.jpg'),
                          radius: 70.0,
                        ),
                      ),
                      SizedBox(height: 40),
                      Center(
                          child: Container(
                              width: 200.0, child: _bandNameField())),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 100),
              Align(
                alignment: Alignment(1, 1),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  height: (MediaQuery.of(context).size.width) - 350,
                  child: RaisedButton(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 20,
                          color: kRedDarkColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: kBlueGreyColor,
                      //kBlueGreyColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide(color: kBlueGreyColor, width: 2.0)),
                      onPressed: () {
                        UserInformation user = UserInformation(
                          //later i have to pass pic
                          brandName: brandControler.text,
                        );
                        Navigator.of(context)
                            .pushNamed('/register', arguments: user);
                      }),
                ),
              ),
            ],
          ),
        ));
  }
}
