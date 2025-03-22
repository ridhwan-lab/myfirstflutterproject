import 'dart:convert';

import 'package:http/http.dart' as http;

class Network {
  String url = "https://attaqwa.masjidku.my/api/";

  getData(apiUrl) async {
    String fullUrl = url + apiUrl.toString();
    return await http.get(Uri.parse(fullUrl));
  }
  
  postData(apiUrl, data) async {
    String fullUrl = url + apiUrl.toString();
    return await http.post(Uri.parse(fullUrl),
        body: jsonEncode(data),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        });
  }
}