import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_balcoder_first_app/app/data/reposotories_impl/sign_up_repository_impl.dart';
import 'package:flutter_balcoder_first_app/app/domain/repository/sign_up_repository.dart';
import 'package:get_it/get_it.dart';
import 'data/reposotories_impl/authentication_repository_impl.dart';
import 'domain/repository/authentication_repository.dart';

final getIt = GetIt.instance;

void injectDependencies() {
  getIt.registerLazySingleton<AuthenticationRepository>(
        () => AuthenticationRepositoryImpl(FirebaseAuth.instance),
  );
  getIt.registerLazySingleton<SignUpRepository>(
        () => SignUpRepositoryImpl(FirebaseAuth.instance),
  );
}