import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:jayamaga/models/User.dart' as model;

class AuthService {
  final auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;

  //create user obj from firebase user
  model.User _userFromFirebaseUser(auth.User user) {
    if (user != null) {
      return model.User(uid: user.uid);
    } else {
      return null;
    }
  }

  Stream<model.User> get user {
    return _auth
        .authStateChanges()
        .map((auth.User user) => _userFromFirebaseUser(user));
  }
}
