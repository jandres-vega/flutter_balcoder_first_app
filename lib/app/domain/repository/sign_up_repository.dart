import '../inputs/sign_up.dart';

abstract class SignUpRepository {
  Future<SignResponse> signUp(SignUpData signUpModel);
}
