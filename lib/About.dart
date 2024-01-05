import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pagination/provider/futurep.dart';
final futureProvider=FutureProvider((ref) {
  final providerres = ref.watch(provider);
  return providerres.fetch();
}
);
class About extends ConsumerWidget {
  About({super.key});
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final data=ref.watch(futureProvider);
    //access the data from previous route
    final arg =
        ModalRoute.of(context)?.settings?.arguments as Map<String, String>;
 //modalroute covered entire navigator
    return
      Scaffold(
      appBar: AppBar(
        title: Text('about'),
      ),
      body:
      data.when(data: (data)=>
          Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    // Navigator.pushReplacementNamed(context, '/contact');
                    //this method remove previous page on the stack on back button
                    ref.read(futureProvider.future);
                    //for refresh data we use provider.future
                    ref.refresh(futureProvider);

                  },
                  child: Text('contactpage')),
              // Text(arg['name'].toString()),
              // Text(arg['route'].toString()),
              Text(data['data'][0]['first_name'])
            ],
          ),
           error: (error,StackTrace)=>Center(child: Text(error.toString()))
           ,
          loading: ()=>CircularProgressIndicator())

    );
  }
}
