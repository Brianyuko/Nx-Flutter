// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_auth/widget/custom_button.dart';
import 'package:supercharged/supercharged.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: "4980FF".toColor(),
        body: SafeArea(
            child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 16,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                  Text(
                    "Sign Up.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(top: 72),
              height: 900,
              width: double.infinity,
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 16),
                          height: 170,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage("assets/images/logo-f.png"),
                              fit: BoxFit.contain,
                            ),
                          )),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Text(
                          "Username",
                          style: TextStyle(
                            color: "010101".toColor(),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 24, right: 24),
                        child: TextField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: "EBEBEB".toColor(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            hintText: "username",
                            hintStyle: TextStyle(
                              color: "C6C6C6".toColor(),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Text(
                          "Email",
                          style: TextStyle(
                            color: "010101".toColor(),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 24, right: 24),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: "EBEBEB".toColor(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            hintText: "email",
                            hintStyle: TextStyle(
                              color: "C6C6C6".toColor(),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        child: Text(
                          "Password",
                          style: TextStyle(
                            color: "010101".toColor(),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 24, right: 24),
                        child: TextField(
                          controller: passwordController,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: "EBEBEB".toColor(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            hintText: "password",
                            hintStyle: TextStyle(
                              color: "C6C6C6".toColor(),
                              fontSize: 16,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: "C6C6C6".toColor(),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16, left: 24, right: 24),
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(
                            color: "4980FF".toColor(),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      CustomButton(name: "Sign Up", color: "4980FF")
                    ],
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
