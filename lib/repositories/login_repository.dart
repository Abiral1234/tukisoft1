import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class LoginResponse {
  final int statusCode;
  final String body;

  LoginResponse(this.statusCode, this.body);
}

class LoginRepository {
  Future<LoginResponse?> sendLogin(String email, String password) async {
    try {
      print(email);
      print(password);
      final url = Uri.parse(
          'https://www.daykhata.helpnepaltax.com.np/api/adminUserLogin');
      final Map<String, dynamic> data = {
        'email': email,
        'password': password,
        "is_this_mobile_app": 1
      };
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(data),
      );
      var responseData = jsonDecode(response.body);
      print(response.statusCode);
      print(response.body); // Print the response body directly
      if (response.statusCode == 200) {
        print('Data posted successfully');
      } else {
        print('Failed to post data. Error code: ${response.statusCode}');
      }
      return LoginResponse(response.statusCode, response.body);
    } catch (e) {
      print("the error is " + e.toString());
    }
  }
}
