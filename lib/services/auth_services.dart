import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServices {
  //sign in with google
signInWithGoogle () async{
  // begin interactive sign in process
  final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

  // user cancels google sign in pop up screen
  if (gUser == null) return;

  // obtain auth details from request
  final GoogleSignInAuthentication gAuth = await gUser.authentication;

  // create a new credential  for user
  final credential = GoogleAuthProvider.credential(
    accessToken: gAuth.accessToken,
    idToken: gAuth.idToken,
  );


  // final sign in
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
}