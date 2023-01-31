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
      "https://www.anandhagrocery.com/wp-content/uploads/2021/06/Golden-Raisins-Kishmish-Indian-Online-1200x1200.jpeg",
      "https://img1.exportersindia.com/product_images/bc-small/2021/1/8026700/cashew-j-h-natural-nuts-happy-foods-1610681990-5690375.jpeg",
      "https://static-01.daraz.com.np/p/eaf3f76f2ca7f1013ee2f7df171bdf11.jpg",
      "https://cdn.shopify.com/s/files/1/0532/0405/8272/products/almonds-regular.jpg?v=1612532758",
      "https://5.imimg.com/data5/ANDROID/Default/2021/5/SN/OL/KB/30159283/product-jpeg-500x500.jpg",
      "https://c8.alamy.com/comp/2F5MERJ/chickpea-also-know-as-chana-daal-in-a-white-white-little-bowl-isolated-on-white-background-2F5MERJ.jpg",
    ];
    final vegetableName = ["kishmis", "kaju", "okhar", "badam", "teel", "daal"];
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
