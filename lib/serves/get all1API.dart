import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;


import '../model/model1.dart';

class EcommerceService1 {
  static const headers = {'Content-Type': 'application/json', 'Accept': 'application/json'};

  // get all products
  static Future<List<Product11>?> getProducts1() async {
    final response = await http.get(
      Uri.parse(
        'https://mahmoudaliapp.herokuapp.com/api/sdzs?populate=*',
      ),
      headers: headers,
    );
    log('${response.statusCode}');
    // check http response code must 200
    if (response.statusCode == 200) {
      // parse data
      log('${response.body}');
      final json = jsonDecode(response.body);
      final jsonString = jsonEncode(json['data']);
      return product1FromJson(jsonString);

    } else {
      return null;
    }
  }

}