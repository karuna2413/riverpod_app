import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  void initState() {
    api();
    // TODO: implement initState
    super.initState();
  }
  void api(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('orders'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(onPressed: (){

              }, child: Text('deliver')),
              ElevatedButton(onPressed: (){

              }, child: Text('process')),
              ElevatedButton(onPressed: (){

              }, child: Text('cancle')),

            ],
          )
        ],
      ),
    );
  }
}
