import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login_signup.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text(
          'Breakfast',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Center(
        child: ElevatedButton(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.logout, size: 28, color: Colors.blueGrey,),
              SizedBox(width: 2,),
              Text("Logout")
            ],
          ),
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => LoginSignupScreen(),
            ));
          },
        ),
      ),
    );
  }
}
