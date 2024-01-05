import 'package:flutter/material.dart';
import 'package:pagination/About.dart';
import 'package:pagination/contact.dart';
import 'package:pagination/info.dart';
//define all routes path and widgets
var allroute={
  '/about': (BuildContext context)=>About(),
  '/contact':(BuildContext context)=>Contact(),
  '/info':(BuildContext context)=>Info()
};