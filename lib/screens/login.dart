import 'package:flutter/material.dart';
import 'package:nistab/constants/color_consts.dart';

import '../constants/constants.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var user = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: ColorConst.green,
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(25))),
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 9,
              child: const Text(
                "NISTab",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: double.infinity,
              color: Colors.black,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      InputFields(
                        controller: user,
                        text: "Username",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputFields(
                        controller: password,
                        text: "Password",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.3,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Login"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ColorConst.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                ),
                Text("Use your school account")
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InputFields extends StatefulWidget {
  final String text;
  final TextEditingController controller;

  const InputFields({Key? key, required this.controller, required this.text})
      : super(key: key);

  @override
  State<InputFields> createState() => _InputFieldsState();
}

class _InputFieldsState extends State<InputFields> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.3,
      child: TextField(

        style: TextStyle(fontSize: 20),
        controller: widget.controller,
        decoration: InputDecoration(
          label: Text(widget.text),
          floatingLabelStyle:
              TextStyle(fontWeight: FontWeight.w900, color: ColorConst.green),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              style: BorderStyle.none,
              width: 0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: ColorConst.green,
              width: 3,
            ),
          ),
        ),
        /*obscuringCharacter: '*',
        obscureText: isCheked,*/
      ),
    );
  }
}
