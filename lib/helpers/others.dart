import 'dart:math';

import "package:flutter/material.dart";

class OthersWidget extends StatelessWidget {
  const OthersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // const image1 = ;
    // const image2 = "";
    // const image3= "https://t3.ftcdn.net/jpg/03/74/46/68/360_F_374466842_siU3zJ6Iyw9nlNk4ABnF5AhzRE2q8U0q.jpg";
    // const image4 = "https://us.123rf.com/450wm/kariphoto/kariphoto1803/kariphoto180300060/kariphoto180300060.jpg?ver=6";
    final vegetableImage = [
      "https://png.pngtree.com/png-vector/20201022/ourlarge/pngtree-three-nutritious-dried-fruit-almonds-png-image_2372741.jpg",
      "https://thumbs.dreamstime.com/b/isolated-apricot-whole-single-fruit-leaf-white-background-fresh-closeup-217057750.jpg",
      "https://previews.123rf.com/images/nbvf/nbvf1608/nbvf160805953/61759782-single-dried-apricot-fruit-isolated-over-the-white-background.jpg",
      "https://demo.lite.yogrowcer.com/image/catalog/category/Fruits/Papaya.jpg",
      "https://c8.alamy.com/comp/KXD2P5/isolated-fruits-one-whole-mango-fruit-isolated-on-white-background-KXD2P5.jpg",
      "https://c8.alamy.com/comp/KXD2P5/isolated-fruits-one-whole-mango-fruit-isolated-on-white-background-KXD2P5.jpg"
    ];
    final vegetableName = [
      "Onion",
      "Cauliflower",
      "Potato",
      "Tomato",
      "Cucumber",
      "Cauliflower"
    ];
    final vegetablePrice = [50, 60, 30, 20, 60, 80];
    return Scaffold(
      // body: ListView.separated(separatorBuilder:(context, index) => Divider(
      //   color: Colors.blueAccent,
      // ),
      // itemCount: vegetableName.length,
      // itemBuilder:(context, index) {
      //   return ListTile(
      //     title: Text(vegetableName[index], style: TextStyle(
      //       fontSize: 20,
      //     ),),
      //     leading: Icon(Icons.shop),
      //     trailing: Image.network(vegetableImage[index],width: 300,height: 300,),
      //   );
      // },
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
                trailing: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
