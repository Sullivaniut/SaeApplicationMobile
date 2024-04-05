
import 'package:saeapplicationmobile/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserBD {
  Future<bool> signIn(String login, String password) async {
    try {
      final AuthResponse response = await base.auth.signInWithPassword(
        email: login,
        password: password,
      );
      return true;
    }
    catch(e){
      return false;
    }
  }
  Future<bool> signUp(String firstname, String lastname,String login, String password, String confirmpassword) async {
    try {
      if (firstname.isEmpty || lastname.isEmpty || login.isEmpty || password.isEmpty) {
        return false;
      }
      if (password != confirmpassword) {
        return false;
      }
      final response = await base.auth.signUp(
          email: login,
          password: password,
      );
      await base
          .from('profiles')
          .insert({
        'id': response.user!.id,
        'first_name': firstname,
        'last_name': lastname,
      });
      return true;
    }
    catch(e){
      print("Erreur lors de l'inscription : $e");
      return false;
    }
  }
  String getName() {
    final user = base.auth.currentUser;
    return user!.id;
  }

}