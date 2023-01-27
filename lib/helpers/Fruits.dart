import 'dart:math';

import "package:flutter/material.dart";
import 'package:flutter_application_1/helpers/cart.dart';

class FruitWidget extends StatelessWidget {
  FruitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // const image1 = ;
    // const image2 = "";
    // const image3= "https://t3.ftcdn.net/jpg/03/74/46/68/360_F_374466842_siU3zJ6Iyw9nlNk4ABnF5AhzRE2q8U0q.jpg";
    // const image4 = "https://us.123rf.com/450wm/kariphoto/kariphoto1803/kariphoto180300060/kariphoto180300060.jpg?ver=6";
    List<String> vegetableImage = [
      "https://us.123rf.com/450wm/cepn/cepn2009/cepn200900020/cepn200900020.jpg?ver=6",
      "https://thumbs.dreamstime.com/b/isolated-apricot-whole-single-fruit-leaf-white-background-fresh-closeup-217057750.jpg",
      "https://i.pinimg.com/736x/81/6d/cc/816dcc925a14ec91bc2258b883090c93.jpg",
      "https://demo.lite.yogrowcer.com/image/catalog/category/Fruits/Papaya.jpg",
      "https://c8.alamy.com/comp/KXD2P5/isolated-fruits-one-whole-mango-fruit-isolated-on-white-background-KXD2P5.jpg",
      "https://c8.alamy.com/comp/KXD2P5/isolated-fruits-one-whole-mango-fruit-isolated-on-white-background-KXD2P5.jpg"
    ];
    List<String> vegetableName = [
      "Onion",
      "Cauliflower",
      "Potato",
      "Tomato",
      "Cucumber",
      "Cauliflower"
    ];
    List<int> vegetablePrice = [50, 60, 30, 20, 60, 80];
    List _cartItems = [];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 20),
          itemCount: vegetableName.length,
          itemBuilder: (context, index) {
            return GridTile(
              child: Image.network(
                vegetableImage[index],
                width: 200,
                height: 200,
                fit: BoxFit.fitWidth,
              ),
              footer: GridTileBar(
                backgroundColor: Colors.white,
                title: Row(
                  children: [
                    Text(vegetableName[index],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        )),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
                subtitle: Text(
                  vegetablePrice[index].toString(),
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
