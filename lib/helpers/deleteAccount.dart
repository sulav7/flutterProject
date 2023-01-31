import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/auth/login.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  final TextEditingController _currentPassword = TextEditingController();
  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _email = TextEditingController();
  var passwordVisible = false;

  var auth = FirebaseAuth.instance;
  var currentUser = FirebaseAuth.instance.currentUser;
  deleteAccount({email, oldPassword}) async {
    var credentials =
        EmailAuthProvider.credential(email: email, password: oldPassword);
    await currentUser!.reauthenticateWithCredential(credentials).then((value) {
      currentUser!.delete();
    }).catchError((error) {
      print(error.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Delete Account"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Change your password",
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
                  labelText: "email",
                  labelStyle: TextStyle(color: Color.fromARGB(255, 14, 13, 13)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 175, 2, 137))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 1, 170, 4)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _currentPassword,
              decoration: InputDecoration(
                  labelText: "current password",
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
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                deleteAccount(
                  email: _email.text,
                  oldPassword: _currentPassword.text,
                );
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Account Deleted"),
                  backgroundColor: Colors.amber,
                ));
              },
              child: Text("Delete Account"))
        ]),
      ),
    );
  }
}
