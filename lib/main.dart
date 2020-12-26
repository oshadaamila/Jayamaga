import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jayamaga/Welcome.dart';
import 'package:jayamaga/services/AuthService.dart';
import 'package:provider/provider.dart';

import 'models/User.dart';

void main() async {
  // Fix for: Unhandled Exception: ServicesBinding.defaultBinaryMessenger was accessed before the binding was initialized.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    title: 'Shishyathwa Jayamaga',
    home: TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Welcome(),
      ),
    );
  }
}
