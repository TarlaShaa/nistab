import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nistab/Auth.dart';
import 'package:nistab/screens/login.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyCVrnYFuSBOS_eenf_zysDV0bkzDz6isno", appId: '1:901329229818:android:7d3991f0d20d7ee2a77643', messagingSenderId: '901329229818', projectId: 'nistab-f29e1'));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) => runApp(const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "NISTab",
        home: Auth(),
      )));
}
