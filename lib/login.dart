// import 'dart:html';

// import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:flutter_application_1/pages/homePage.dart';
import 'package:flutter_application_1/signUp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  var passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Welcome",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _email,
              decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: Color.fromARGB(255, 14, 13, 13)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 175, 2, 137))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 1, 170, 4)))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: !passwordVisible,
              controller: _password,
              decoration: InputDecoration(
                  labelText: "Password",
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                      icon: Icon(passwordVisible
                          ? Icons.visibility_off
                          : Icons.visibility)),
                  labelStyle: TextStyle(color: Color.fromARGB(255, 14, 13, 13)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 175, 2, 152))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 1, 170, 4)))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "forgot password?",
                    style: TextStyle(color: Color.fromARGB(255, 30, 0, 0)),
                  )),
            ],
          ),
          // SizedBox(
          //   height: 10,
          // ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 24, 125, 27),
                elevation: 20,
                onPrimary: Colors.white,
                shadowColor: Color.fromARGB(255, 12, 133, 60),
                minimumSize: Size(150, 50)),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text(
              "Login",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account ?"),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text("Sign Up"))
            ],
          ),
          SizedBox(
            height: 25,
          ),
          // Column(
          //   children: [
          //     Text("Or"),
          //     SizedBox(
          //       height: 25,
          //     ),
          //     ElevatedButton.icon(
          //       style: ElevatedButton.styleFrom(
          //           primary: Color.fromRGBO(66, 103, 178, 1),
          //           elevation: 20,
          //           onPrimary: Colors.white,
          //           shadowColor: Colors.brown,
          //           minimumSize: Size(350, 50)),
          //       onPressed: () {},
          //       icon: Icon(Icons.facebook),
          //       label: Text("Connect with Facebook"),
          //     ),
          //     SizedBox(
          //       height: 25,
          //     ),
          //     ElevatedButton.icon(
          //       style: ElevatedButton.styleFrom(
          //           primary: Color.fromRGBO(66, 133, 244, 1),
          //           elevation: 20,
          //           onPrimary: Colors.white,
          //           shadowColor: Color.fromARGB(255, 0, 89, 255),
          //           minimumSize: Size(350, 50)),
          //       onPressed: () {},
          //       icon: Icon(Icons.email_sharp),
          //       label: Text("Connect with Google"),
          //     )
        ],
      )),
    );
  }
}
