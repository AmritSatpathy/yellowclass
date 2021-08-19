import 'package:publish/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        elevation: 0.0,
        //title: Text('Sign in');
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 220.0, horizontal: 143.0),
        child: ElevatedButton(
          child: Text('Sign in',softWrap: true,style: new TextStyle(fontSize: 30.0, color: Colors.white60),),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if(result == null){
              print('error signing in');
            } else {
              print('signed in');
              print(result.uid);
            }
          },

        ),
      ),
    );
  }
}