import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pagination/About.dart';
import 'package:pagination/routes/route.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      home: Home(),
         routes: allroute
      // <String,WidgetBuilder>
        // {
        //   // '/':(BuildContext context)=>MyApp(),
        //   '/about':(BuildContext context)=>About()
        // }
    );
  }
}
class Home extends StatelessWidget {
  Home({super.key});
var name='homedata';
var route='/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: ElevatedButton(onPressed: (){
        Navigator.pushNamed(context, '/about',arguments: {
          'name':name,
          'route':route
        });//passing data to about page using argument parameter
      }, child: Text('aboutpage')),
    );
  }
}

