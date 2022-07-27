import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/productmodel.dart';

class EcommerceService {
  static String endpo = "https://res.cloudinary.com/dseqpzbjp/image";
  static const headers = {'Content-Type': 'application/json', 'Accept': 'application/json'};

  // get all products
  static Future<List<Product>?> getProducts() async {
    final response = await http.get(
      Uri.parse(
        'https://mahmoudaliapp.herokuapp.com/api/masls?populate=*',
      ),
      headers: headers,
    );

    // check http response code must 200
    if (response.statusCode == 200) {
      // parse data
      final json = jsonDecode(response.body);
      final jsonString = jsonEncode(json['data']);
      return productFromJson(jsonString);
    } else {
      return null;
    }
  }
}