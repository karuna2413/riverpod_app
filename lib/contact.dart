import 'package:flutter/material.dart';
class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('contact'),
      ),
      body: ElevatedButton(onPressed: (){
        Navigator.pushNamedAndRemoveUntil(context,'/info',ModalRoute.withName('/'));
        // pushReplacement only replaces the top route while the pushAndRemoveUntil could replace multiple routes up until your defined predicate.
      }, child: Text('aboutpage')),
    );
  }
}
