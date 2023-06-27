import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../firebase_options.dart';
import '../../widget/costom_message_error.dart';

class FirebaseService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  
 

  Future<void> createAccountWithEmail(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      debugPrint('-------Firebase SingIm Errore--${e.code}');
    } catch (e) {
      debugPrint('------Erorr$e');
    }
  }

  Future<bool> signInWithEmail(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      return true;
    } on FirebaseAuthException catch (e) {
      debugPrint('Sigin-------Erorre${e.code}');
      CustomSnackBar.messeageEror(title: e.code, context: context);
    } catch (e) {
      debugPrint('--------Error Sign:$e');
    }
    return false;
  }
  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn(
      clientId: DefaultFirebaseOptions.currentPlatform.iosClientId,
    ).signIn();
    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
    // Once signed in, return the UserCredential
  }
  User? get currentUser {
    return _firebaseAuth.currentUser;
  }
}
