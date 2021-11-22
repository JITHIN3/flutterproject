import 'package:flutter/material.dart';
import 'package:flutterproject/uipg1.dart';
import 'package:flutterproject/uipg2.dart';
import 'package:flutterproject/uipg3.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(debugShowCheckedModeBanner:false,routes:{
      '/': (context) => const Uipage(),
      '/second':(context) => const Uipage2(),
      '/third':(context) => const Uipage3(),
    });
  }
}
