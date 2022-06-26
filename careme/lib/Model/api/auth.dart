import 'package:firebase_auth/firebase_auth.dart';
import 'package:tubescareme/Model/user_model.dart';

FirebaseAuth _auth = FirebaseAuth.instance;

class SignInSignUpResult {
  final UserModel? user;
  final String? message;
  SignInSignUpResult({this.user, this.message});
}

Future<SignInSignUpResult> createUser({String? email, String? pass}) async {
  try {
    UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email!, password: pass!);
    return SignInSignUpResult();
  } catch (e) {
    return SignInSignUpResult(message: e.toString());
  }
}

Future<SignInSignUpResult> signInWithEmail(
    {String? email, String? pass}) async {
  try {
    UserCredential result =
        await _auth.signInWithEmailAndPassword(email: email!, password: pass!);
    return SignInSignUpResult();
  } catch (e) {
    return SignInSignUpResult(message: e.toString());
  }
}

void signOut() {
  _auth.signOut();
}
