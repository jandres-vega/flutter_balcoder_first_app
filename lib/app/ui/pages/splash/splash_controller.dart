import 'package:flutter/cupertino.dart';
import '../../../domain/repository/authentication_repository.dart';
import '../../../inject_dependencies.dart';

class SplashController extends ChangeNotifier {

  final _authRepository = getIt<AuthenticationRepository>();

  String? _routeName;
  String? get routeName => _routeName;

  SplashController(){
    init();
  }

  Future<void> init() async {
    final user = await _authRepository.user;
    _routeName = user != null ? '/home' : '/login';
    notifyListeners();
  }
}