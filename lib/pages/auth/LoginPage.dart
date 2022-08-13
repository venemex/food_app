import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/components/RoundedButton.dart';
import 'package:food_app/components/RoundedTextField.dart';
import 'package:food_app/utils/Constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  void clickBtn() {
    print(emailCtrl.text);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: Expanded(
      child: Container(
          width: size.width,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/logo.png", width: size.width / 3),
              Container(
                child: Column(
                  children: <Widget>[
                    RoundedTextField(
                      hintText: "Email",
                      controller: emailCtrl,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    RoundedTextField(
                      hintText: "Password",
                      obscureText: true,
                      controller: passwordCtrl,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    RoundedButton(
                        color: ColorConstants.redPigmentColor,
                        child: TextButton(
                          onPressed: () => clickBtn(),
                          child: Text("Iniciar Sesión",
                              style: TextStyle(color: Colors.white)),
                        ))
                  ],
                ),
              )
            ],
          )),
    )));
  }
}
