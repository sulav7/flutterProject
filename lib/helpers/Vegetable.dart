import 'dart:math';

import "package:flutter/material.dart";
class VegetableWidget extends StatelessWidget {
  const VegetableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // const image1 = ;
    // const image2 = "";
    // const image3= "https://t3.ftcdn.net/jpg/03/74/46/68/360_F_374466842_siU3zJ6Iyw9nlNk4ABnF5AhzRE2q8U0q.jpg";
    // const image4 = "https://us.123rf.com/450wm/kariphoto/kariphoto1803/kariphoto180300060/kariphoto180300060.jpg?ver=6";
  final vegetableImage = ["https://thumbs.dreamstime.com/b/ripe-single-eggplant-fresh-whole-half-vegetable-isolated-white-background-close-up-166119044.jpg","https://img.freepik.com/premium-photo/fresh-single-vegetables-white-background_528823-168.jpg","https://img.freepik.com/premium-photo/fresh-single-vegetables-white-background_528823-168.jpg","https://img.freepik.com/premium-photo/fresh-single-vegetables-white-background_528823-168.jpg","https://t4.ftcdn.net/jpg/02/66/68/37/360_F_266683754_wzx9XxeNXKudct2Q3qwQf1PvVaQaKOf6.jpg","https://i0.wp.com/www.ukceylon.com/wp-content/uploads/2021/05/cauliflower-single-approx-1-1.5kg.jpg?fit=1080%2C1080&ssl=1?v=1629401581","https://media.istockphoto.com/id/682099638/photo/broccoli-head-on-white-background.jpg?s=612x612&w=0&k=20&c=MaA5o68ow749S38RMARgrOREgpHBdPQGnTC9BCocrlY=","https://media.istockphoto.com/id/682099638/photo/broccoli-head-on-white-background.jpg?s=612x612&w=0&k=20&c=MaA5o68ow749S38RMARgrOREgpHBdPQGnTC9BCocrlY=","https://media.istockphoto.com/id/682099638/photo/broccoli-head-on-white-background.jpg?s=612x612&w=0&k=20&c=MaA5o68ow749S38RMARgrOREgpHBdPQGnTC9BCocrlY="];
  final vegetableName = ["Onion", "Cauliflower", "Potato","Tomato","Cucumber","Cauliflower","Cauli","Cauli","Cauli"];
  final vegetablePrice = [50,60,30,20,60,80,80,80,80];  
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
        body: Padding(padding: const EdgeInsets.all(8.0),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        crossAxisSpacing: 20), itemCount: vegetableName.length,
        itemBuilder:(context, index) {
          return GridTile(
            child:Image.network(vegetableImage[index],width: 400,height: 400,),
            footer: GridTileBar(
                  backgroundColor: Colors.white,
                  title: Row(
                    children: [
                      Text(vegetableName[index],style: TextStyle(color: Colors.black,fontSize: 17,)),
                      SizedBox(
                        height: 20,
                      )
                    ],
                    
                  ),
                  
                  subtitle: Text(vegetablePrice[index].toString(),style: TextStyle(color: Colors.black,),),
                  trailing: const Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                ),
          );
        },),),
        ); 
  }
}