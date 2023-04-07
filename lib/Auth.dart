import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nistab/screens/login.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snaphot) {
        if (snaphot.hasData) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(FirebaseAuth.instance.currentUser!.email.toString()),
                  ElevatedButton(onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                  }, child: Text("logout"))
                ],
              ),
            ),
          );
        } else {
          return Login();
        }
      },
    );
  }
}