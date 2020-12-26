import 'package:flutter/cupertino.dart';
import 'package:jayamaga/models/User.dart';
import 'package:jayamaga/screens/authenticate/SignIn.dart';
import 'package:jayamaga/screens/home/home.dart';
import 'package:provider/provider.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user == null) {
      return SignIn();
    } else {
      return Home();
    }
  }
}
