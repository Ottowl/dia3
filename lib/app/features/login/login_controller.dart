import 'package:flutter_animate/flutter_animate.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController {
  static Future<bool> login({
    required String cpf,
    required String senha,
  }) async {
    await Future.delayed(3.seconds);
    if (cpf == '13082022618' && senha == '123456') {
      var sp = await SharedPreferences.getInstance();

      sp.setString('cpf', cpf);

      return true;
    }
    return false;
  }
}
