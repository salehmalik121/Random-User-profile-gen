import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:profile/data/Aboutmodel.dart';

class Aboutdata {
  String seed;
  Aboutdata({
    required this.seed,
  });
  Future<AboutData> getaboutdata() async {
    //https://randomuser.me/api/?seed=fea8be3e64777240
    final perimeter = {
      "seed": seed,
    };
    final uri = Uri.https('randomuser.me', '/api/', perimeter);
    final response = await http.get(uri);
    final decodejson = jsonDecode(response.body)['results'][0];
    return AboutData.fromjson(decodejson);
  }
}

void main() async {
  AboutData? results;
  final data = Aboutdata(seed: '53d12752251bcf94');
  final newdata = await data.getaboutdata();
  results = newdata;
  print(results.name.first);
}
