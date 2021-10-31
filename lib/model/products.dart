import 'package:flutter/material.dart';

class ProductModel {
  final String? img;
  final String? name;
  final Color? bcolor;

  final String? amount;

  ProductModel({this.amount, this.name, this.img, this.bcolor});
}



List<ProductModel> productItems = [
  ProductModel(
    amount: '345',
    name: 'Red AirPods Max',
    img: 'assets/pink.png',
     bcolor: Colors.yellow[100],
  ),
  ProductModel(
    amount: '345',
    name: 'Red AirPods Max',
    img: 'assets/purple.png',
   bcolor: Colors.indigo[100],
  ),
  ProductModel(
    amount: '300',
    name: 'Blue AirPods Max',
    img: 'assets/pink.png',
    bcolor: Colors.orange[100],
  ),
  ProductModel(
    amount: '400',
    name: 'Gold AirPods Max',
    img: 'assets/purple.png',
    bcolor: Colors.pink[100],
  ),
  ProductModel(
    amount: '356',
    name: 'Purple AirPods Max',
    img: 'assets/pink.png',
    bcolor: Colors.indigo[100],
  ),
  ProductModel(
    amount: '253',
    name: 'Purple AirPods Max',
    img: 'assets/pink.png',
    bcolor: Colors.yellow[100],
  )
];
