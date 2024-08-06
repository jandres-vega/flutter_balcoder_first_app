import 'package:firebase_auth/firebase_auth.dart';

class SignUpData {
  final String name;
  final String date;
  final String email;
  final String password;

  SignUpData({
    required this.name,
    required this.date,
    required this.email,
    required this.password,
  });
}

class SignResponse {
  final String? error;
  final User? user;

  SignResponse(this.error, this.user);
}