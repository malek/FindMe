import 'package:findme/pages/results.dart';
import 'package:findme/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String urlLink;
  String brand;

  Widget _UrlField() {
    return TextFormField(
      style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0),
      decoration: InputDecoration(
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(25.0),
          borderSide: new BorderSide(),
        ),
        hintText: 'ADD LINK',
        hintStyle: TextStyle(
          color: Colors.black,
        ),
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.url,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Url is Required';
        }

        return null;
      },
      onSaved: (String value) {
        urlLink = value;
      },
    );
  }

  Widget _BrandNameField() {
    return TextFormField(
      style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2.0),
      decoration: InputDecoration(
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(1.0),
          borderSide: new BorderSide(style: BorderStyle.solid),
        ),
        hintText: 'Brand Name',
        hintStyle: TextStyle(
          color: Colors.black,
        ),
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.text,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Brand Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        brand = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            resizeToAvoidBottomInset: false, //to avoid yellow bottom error once we tap to write
            body: SingleChildScrollView(
                child: Container(
                margin: EdgeInsets.all(24),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 60.0),
                    Center(
                      child: CircleAvatar(
                          backgroundImage: AssetImage('assets/uploadPicTest.jpg'),
                        radius: 40.0,
                      ),
                    ),
                    SizedBox(height: 40),
                    Center(
                        child: Container(width: 200.0, child: _BrandNameField())),
                    // Divider(
                    //   height: 60.0,
                    //   color: Colors.grey[800],
                    // ),
                    SizedBox(height: 66),
                    _UrlField(),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        //cancel button
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 125,
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(vertical: 4),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width:2, color: Colors.black, style: BorderStyle.solid),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 15),
                                  blurRadius: 30,
                                  color: Color(0xFF666666).withOpacity(.11),
                                ),
                              ],
                            ),
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: kIconColor,
                              ),
                            ),
                          ),
                        ),
                        //SizedBox(width: 120),
                        //Add button
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 100,
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(vertical: 4),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width:2, color: Colors.black, style: BorderStyle.solid),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 15),
                                  blurRadius: 30,
                                  color: Color(0xFF666666).withOpacity(.11),
                                ),
                              ],
                            ),
                            child: Text(
                              'Add',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: kIconColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 60.0,
                      color: Colors.grey[800],
                    ),
                     SizedBox(
                       
                width: MediaQuery.of(context).size.width * .6,
                child: RoundedButton(
                  text: "Results",
                  fontSize: 20,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Results();
                        },
                      ),
                    );
                  },
                ),
              ),
                  ],
                ),
              ),
            ));
  }
}
