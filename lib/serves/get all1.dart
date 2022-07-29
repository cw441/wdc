import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/model1.dart';
import '../model/productmodel.dart';

class EcommerceService1 {
  static const headers = {'Content-Type': 'application/json', 'Accept': 'application/json'};

  // get all products
  static Future<List<Product1>?> getProducts1() async {
    final response = await http.get(
      Uri.parse(
        'https://mahmoudaliapp.herokuapp.com/api/sdzs?populate=*',
      ),
      headers: headers,
    );

    // check http response code must 200
    if (response.statusCode == 200) {
      // parse data
      final json = jsonDecode(response.body);
      final jsonString = jsonEncode(json['data']);
      return product1FromJson(jsonString);
    } else {
      return null;
    }
  }
}