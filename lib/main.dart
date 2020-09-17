import 'package:flutter/material.dart';
import 'package:vyorius/ui/accept_here.dart';
import 'package:vyorius/ui/pay_here.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/payhere',
    routes: {
      '/payhere':(context) => PayHere(),
      '/accepthere':(context) => AcceptHere(),
    },//PayHere()  or AcceptHere()
  ));
}
