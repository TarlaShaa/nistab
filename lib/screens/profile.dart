import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nistab/constants/color_consts.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(FirebaseAuth.instance.currentUser!.email.toString()),
              SizedBox(
                  height: 20,
                  child: VerticalDivider(
                    thickness: 2,
                    color: ColorConst.green,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
