import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class ResponseStatus {
//* SHARED Get FOR ALL APIs
  Future<dynamic> get({required String subUrl, String? customUrl}) async {
    try {
      var link = Uri.parse("");
      http.Response response = await http.get(link, headers: {
        'Content-Type': 'application/json',
      });
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception("Get - $subUrl${response.statusCode}");
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
