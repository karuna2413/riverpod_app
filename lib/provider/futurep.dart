import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

class ServiceRepo{
  Future fetch()async{
    final res=await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    final response=jsonDecode(res.body);
    print(response);
    return response;
  }
}
final provider=Provider((ref) => ServiceRepo());