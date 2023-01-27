// import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/Fruits.dart';
import 'package:flutter_application_1/helpers/Vegetable.dart';
import 'package:flutter_application_1/helpers/cart.dart';
import 'package:flutter_application_1/helpers/changePassword.dart';
import 'package:flutter_application_1/helpers/others.dart';
import 'package:flutter_application_1/auth/login.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 11, 11, 11),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CartWidget()));
              },
            )
          ],
          bottom: TabBar(
              labelColor: Colors.green,
              unselectedLabelColor: Color.fromARGB(255, 250, 248, 248),
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
              ]),
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 192, 243, 7),
            child: Column(
              
          children: [
            UserAccountsDrawerHeader(
              
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 150,
                child: ClipOval(
                  child: Image.network(
                    "https://onlinetarkaripasal.com/wp-content/uploads/2020/10/online-tarkari-pasal-logo.png",
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              accountName: Text(
                "Online Tarkari Pasal",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              accountEmail: Text("onlinetarkari@gmail.com"),
            ),
            SizedBox(
              height: 40,
            ),
            ListTile(
              title: Text(
                "Change Password",
              ),
              leading: Icon(Icons.password),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>passwordChange()));
              },
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
                logOut();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            )
          ],
        )),
        body: TabBarView(
            children: [VegetableWidget(), FruitWidget(), OthersWidget()]),
      ),
    );
  }
}
logOut() {
  FirebaseAuth.instance.signOut();
}