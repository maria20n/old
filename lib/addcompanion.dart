import 'dart:io';

import 'package:flutter/material.dart';


class AddCompanion extends StatefulWidget {
  @override
  _AddCompanion createState() => _AddCompanion();
}

File image;

class _AddCompanion extends State<AddCompanion> {
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF9114),
        centerTitle: true,
        title: Text(
          'Add your informations',
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0, 10))
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/person.png')))),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Color(0xffFF9114),
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              buildTextField("First Name", "Maria"),
              buildTextField("Last Name", "Nwilati"),
              buildTextField("Country", "20"),
              buildTextField("Language", "Arabic"),
              buildTextField("Price per day", "20"),
              buildTextField("Phone", "0999999"),
              buildTextField("Free to book ?", "Yes"),
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  SizedBox(width: 35),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      
                    },
                    child: Text("CANCEL",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.black)),
                  ),
                  SizedBox(width: 50),
                  RaisedButton(
                    onPressed: () {
                      
                    },
                    color: Color(0xffFF9114),
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Add",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, String placeholder) {
    // controller.text=placeholder;

    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
             labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.black54,
            ),
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
