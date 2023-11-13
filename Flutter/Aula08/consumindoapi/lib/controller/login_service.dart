class LoginService {
  Future<bool> efetuarLogin({
    required String usuario,
    required String senha,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    if (false) {
      return true;
    } else {
      return false;
    }
  }
}
