import 'package:flutter/material.dart';
import 'package:jayamaga/screens/elements/SignInForm.dart';
import 'package:jayamaga/screens/elements/SignUpForm.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggleView(){
    //print(showSignIn.toString());
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if(showSignIn){
      return SignInForm(toggleView:toggleView);
    }else{
      return SignUpForm();
    }
  }
}
