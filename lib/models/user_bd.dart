
import 'package:saeapplicationmobile/main.dart';

class UserBD {
  Future<bool> signIn(String login, String password) async {
    try {
      final response = await base.auth.signInWithPassword(
        email: login,
        password: password,
      );
      return true;
    }
    catch(e){
      return false;
    }
  }
}