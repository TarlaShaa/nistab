import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nistab/screens/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) => runApp(const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "NISTab",
        home: Login(),
      )));
}
