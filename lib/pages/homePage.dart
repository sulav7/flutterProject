// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 11, 11),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      drawer: Drawer(
          child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          ListTile(
            title: Text(
              "Profile",
            ),
            leading: Icon(Icons.people),
            onTap: () {},
          ),
          ListTile(
            title: Text("Cart"),
            leading: Icon(Icons.shopping_cart),
            onTap: () {},
          ),
          ListTile(
            title: Text("Wishlist"),
            leading: Icon(Icons.favorite),
            onTap: () {},
          ),
          ListTile(
            title: Text("Log out"),
            leading: Icon(Icons.logout),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Login()));
            },
          )
        ],
      )),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DefaultTabController(
                length: 3,
                child: TabBar(
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: "Vegetable",
                    ),
                    Tab(
                      text: "Fruits",
                    ),
                    Tab(
                      text: "Other",
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
