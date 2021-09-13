import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:profile/data/models.dart';

class GetData {
  Future<Results> getData() async {
    //https://randomuser.me/api
    final uri = Uri.https('randomuser.me', '/api');
    final getjson = await http.get(uri);
    final decodeJson = jsonDecode(getjson.body)['results'][0];
    return Results.fromjson(decodeJson);
  }
}

void main() async {
  Results? results;
  final data = GetData();
  final newdata = await data.getData();
  results = newdata;
  print(results.location.country);
}
