import 'package:flutter/material.dart';
import 'package:flutter_application_1/addcompanion.dart';
import 'package:get/get.dart';

  void main()=> runApp(Dash());

  class Dash extends StatelessWidget{
    
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     
      debugShowCheckedModeBanner: false,
      home: AddCompanion(),
    );
  }

  }
  

  