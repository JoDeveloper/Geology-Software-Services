import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthProvider extends GetConnect {
  FirebaseAuth _auth;
  @override
  void onInit() {
    _auth = FirebaseAuth.instance;
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future sendPhoneVerivication({String phone}) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: '+249 $phone',
      verificationCompleted: (credential) {
        _auth.signInWithCredential(credential);
      },
      verificationFailed: (e) {
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }
      },
      codeSent: (verificationId, resendToken) {
        //  Update the UI - wait for the user to enter the SMS code
        String smsCode = 'xxxx';

        // Create a PhoneAuthCredential with the code
        PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
            verificationId: verificationId, smsCode: smsCode);

        // Sign the user in (or link) with the credential
        _auth.signInWithCredential(phoneAuthCredential);
      },
      codeAutoRetrievalTimeout: (verificationId) {},
    );
  }
}
