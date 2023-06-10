import 'dart:convert';
import 'package:http/http.dart' as http;

class SignUpResponse {
  final int statusCode;
  final String body;

  SignUpResponse(this.statusCode, this.body);
}

class SignUpRepository {
  Future<SignUpResponse?> signUp(String firstname, String lastname,
      String email, String password, String confirmPassword) async {
    try {
      final url = Uri.parse(
          'https://www.daykhata.helpnepaltax.com.np/api/addAdminUser');

      final Map<String, dynamic> data = {
        'email': email,
        'password': password,
        'is_this_mobile_app': 1,
        'name': firstname + " " + lastname,
      };
      print("The data is " + data.toString());

      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(data),
      );
      print(response.body);
      if (response.statusCode == 200) {
        print('Data posted successfully');
      } else {
        print('Failed to post data. Error code: ${response.statusCode}');
      }
      return SignUpResponse(response.statusCode, response.body);
    } catch (e) {
      print("the error is " + e.toString());
    }
  }
}
