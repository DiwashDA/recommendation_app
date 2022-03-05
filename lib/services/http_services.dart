import 'dart:convert';

import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class HttpService {
  static String baseUrl = FlavorConfig.instance.variables['baseUrl'];
  static Map<String, String> header = {
    "X-API-KEY": "${FlavorConfig.instance.variables['apiKey']}"
  };

  Future<Response> getData(Uri url) async {
    var response = await http.get(url, headers: header);
    return response;
  }

  postData({required Uri url, required Map<String, dynamic> map}) async {
    var response = await http.post(
      url,
      headers: header,
      body: json.encode(map),
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      return response.body;
    }
  }

  putData({required Uri url, required Map<String, dynamic> map}) async {
    var response = await http.put(
      url,
      headers: header,
      body: json.encode(map),
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      return response.body;
    }
  }
}
