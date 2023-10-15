import 'package:coffee_app/models/user.dart';
import 'package:coffee_app/utils/error_handling.dart';
import 'package:coffee_app/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

String uri = 'http://192.168.1.3:3000';

class AuthService {
  void SignUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
          id: '',
          name: name,
          email: email,
          password: password,
          type: '',
          token: '');
      http.Response res = await http.post(Uri.parse('$uri/api/signup'),
          body: user.toJson(),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8'
          });
      httpErrorHandle(response: res, context: context, onSuccess: () {
        showSnackBar(context, 'Account created');
      });
    } catch (e) {
      showSnackBar(context, e.toString());
    print(e.toString());
    }
  }
}
