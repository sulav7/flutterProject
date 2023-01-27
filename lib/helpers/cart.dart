import 'dart:math';

import "package:flutter/material.dart";

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});
  

  @override
  Widget build(BuildContext context) {
    List vegetableImage = [];
    List vegetableName = [];
    List vegetablePrice = [];
    void addToCart(index){
      vegetableImage.add(index);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: vegetableName.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(vegetableName[index]),
                leading: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.network(vegetableImage[index]),
                ),
              ),
            );
            
          },
        ),
      ),
    );
    
  }
}
