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
  final urlLinkControler = new TextEditingController();
final brandControler = new TextEditingController();
  Column addedButtonClmn = Column(
    children: <Widget>[
        //initialized 

    ],
  );



  Widget _UrlField() {
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
          color: Colors.black,
        ),
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.url,
      
      
    );
  }

  Widget _BrandNameField() {
    return TextFormField(
      controller: brandControler,
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
      
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset:
            false, //to avoid yellow bottom error once we tap to write
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 2,
                              color: Colors.black,
                              style: BorderStyle.solid),
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
                    //Add button
                    GestureDetector(
                      onTap: () {
                        //GestureDetector();
                        setState(() {
                          brand = brandControler.text;
                         urlLink= urlLinkControler.text;
                        });
                        

                        addedButtonClmn = Column(
                          children: <Widget>[
                            addedButtonClmn,

                            GestureDetector(
                              onTap: () {
                                //GestureDetector();
                              },
                              child: Container(
                                width: 700,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(vertical: 4),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 2,
                                      color: Colors.black,
                                      style: BorderStyle.solid),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 15),
                                      blurRadius: 30,
                                      color: Color(0xFF666666).withOpacity(.11),
                                    ),
                                  ],
                                ),
                                child: Text(
                                  'Follow $brand on $urlLink',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: kIconColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                        setState(() {
                          
                        });

                        //
                      },
                      child: Container(
                        width: 100,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(vertical: 4),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 2,
                              color: Colors.black,
                              style: BorderStyle.solid),
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
                addedButtonClmn,
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
