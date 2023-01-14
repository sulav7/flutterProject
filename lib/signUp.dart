import "package:flutter/material.dart";

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _firstName = TextEditingController();
    TextEditingController _lastName = TextEditingController();
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _firstName,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.redAccent)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1, color: Color.fromARGB(255, 76, 0, 255))),
                labelText: "First Name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _lastName,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.redAccent)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1, color: Color.fromARGB(255, 76, 0, 255))),
                labelText: "Last Name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _email,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.redAccent)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 76, 0, 255))),
                  labelText: "Email"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _password,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.redAccent)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1, color: Color.fromARGB(255, 76, 0, 255))),
                labelText: "Password",
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 31, 200, 68),
                  minimumSize: Size(350, 50),
                  elevation: 25,
                  shadowColor: Colors.brown),
              child: Text("Sign Up")),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
