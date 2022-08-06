import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CheckCompanion extends StatefulWidget {
  @override
  _CheckCompanion createState() => _CheckCompanion();
}

class _CheckCompanion extends State<CheckCompanion> {
  var book = ['no', 'Done'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffFF9114),
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () => Get.back(),
            ),
          ),
        ),
        body: Stack(children: [
          Container(
            height: double.infinity,
            width: 500,
            color: Colors.white70,
          ),
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.topLeft,
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                color: Color(0xffff9114),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                )),
            child: Text(
              'Companion Reservation info :',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Positioned(
              top: 110,
              right: 35,
              child: Container(
                width: 330,
                height: 390,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Day',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                '15',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                'How many days :',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Column(
                            children: [
                              Text(
                                'Month',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                'June',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 247,
                            height: 60,
                            child: DropdownButtonFormField(
                                hint: Text('Did the client came ? '),
                                decoration: InputDecoration(),
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: book.map((String book) {
                                  return DropdownMenuItem(
                                    value: book,
                                    child: Text(book),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  value = value as String;
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
              top: 530,
              right: 35,
              child: Container(
                width: 330,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffff9114),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'SAVE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )),
        ]));
  }
}
