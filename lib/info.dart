import 'package:flutter/material.dart';
class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('info'),
      ),
      body: ElevatedButton(onPressed: (){
        Navigator.popUntil(context, ModalRoute.withName('/about'));

      }, child: Text('infopage')),
    );
  }
}
