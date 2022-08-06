import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'checkhotel.dart';

class CheckRest extends StatefulWidget {
  @override
  _CheckRest createState() => _CheckRest();
}

class _CheckRest extends State<CheckRest> {
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
              'Table Reservation info:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
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
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Date',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                '09-12-2022',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                ),
                              ),
                           
                            ],
                          ),
                             SizedBox(
                                height: 35,
                              ),
                          Row(
                            children: [
                              Text(
                                'Table Type',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                'Normal',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                             SizedBox(
                                height: 35,
                              ),
                          Column(
                            children: [
                              
                              Row(
                                children: [
                                  Text(
                                    'Number of people',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Comfortaa',
                                      fontSize: 20,
                                    ),
                                  ),
                           
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                '3',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                ),
                              ),
                                   ],
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'hours',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Comfortaa',
                                      fontSize: 20,
                                    ),
                                  ),
                                
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                '3',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                ),
                              ),
                              ],
                              ),
                               SizedBox(
                                height: 35,
                              ),
                                    Row(
                                children: [
                                  Text(
                                    'Price',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Comfortaa',
                                      fontSize: 20,
                                    ),
                                  ),
                                
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                '253',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 20,
                                ),
                              ),
                              ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
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
              top: 550,
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
