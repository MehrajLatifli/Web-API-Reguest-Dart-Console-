import 'dart:convert';
import 'package:http/http.dart' as http;

class WebAPIRequest {
  static Future<void> Get() async {
    var apiUrl = 'https://example.com';
    var authKey = 'Bearer key';

    try {
      var response = await http.get(
        Uri.parse(apiUrl),
        headers: {'Authorization': '$authKey'},
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(jsonEncode(data));
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  static Future<void> GetById(String id) async {
    var apiUrl = 'https://example.com${id}';
    var authKey = 'Bearer key';
    try {
      var response = await http.get(
        Uri.parse(apiUrl),
        headers: {'Authorization': '$authKey'},
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(jsonEncode(data));
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  static Future<void> Post() async {
    var apiUrl = 'https://example.com';
    var authKey = 'Bearer key';

    try {
      var Data = {
        "key": "value",
      };

      var response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Authorization': '$authKey'},
        body: jsonEncode(Data),
      );

      if (response.statusCode == 201) {
        var data = jsonDecode(response.body);
        print(jsonEncode(data));
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  static Future<void> UpdateById(String id) async {
    var apiUrl = 'https://example.com${id}';
    var authKey = 'Bearer key';
    try {
      var Data = {
        "key": "value",
      };

      var response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Authorization': '$authKey'},
        body: jsonEncode(Data),
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(jsonEncode(data));
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  static Future<void> DeleteById(String id) async {
    var apiUrl = 'https://example.com${id}';
    var authKey = 'Bearer key';

    try {
      var response = await http.delete(
        Uri.parse(apiUrl),
        headers: {'Authorization': '$authKey'},
      );

      if (response.statusCode == 204) {
        print('Deletion successful.');
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
