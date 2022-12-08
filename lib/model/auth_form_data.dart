import 'dart:io';
//================================================================//
//             Classe para gerenciar os dados do Forms            //
//================================================================//

//================================================================
// Enum para termos o modo Registro(Signup) e modo Conectar(Login)
//================================================================
enum AuthMode { Signup, Login }

class AuthFormData {
//================================================================
// Atributos
//================================================================
  String name = '';
  String email = '';
  String password = '';
  File? file;
  AuthMode _mode = AuthMode.Login;

//================================================================
// Getters
//================================================================
  bool get isLogin {
    return _mode == AuthMode.Login;
  }

  bool get isSignup {
    return _mode == AuthMode.Signup;
  }

//================================================================
// Method
//================================================================
  void toggleAuthMode() {
    _mode = isLogin ? AuthMode.Signup : AuthMode.Login;
  }
}
