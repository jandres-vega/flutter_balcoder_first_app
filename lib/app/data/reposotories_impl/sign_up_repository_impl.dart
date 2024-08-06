import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_balcoder_first_app/app/domain/inputs/sign_up.dart';

import '../../domain/repository/sign_up_repository.dart';

class SignUpRepositoryImpl implements SignUpRepository {

  final FirebaseAuth _firebaseAuth;

  SignUpRepositoryImpl(this._firebaseAuth);

  @override
  Future<SignResponse> signUp(SignUpData data) async{
    try{
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(email: data.email, password: data.password);
      await userCredential.user!.updateDisplayName('${data.name} ${data.date}');
      return SignResponse(null, userCredential.user);
    }on FirebaseAuthException catch(e){
      return SignResponse(e.code, null);
    }
  }
  
}