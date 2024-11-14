import 'package:flutter/material.dart';

class ModelData{
  final String name;
  final Color color1;
  final String img;
  final String img1;
  

  ModelData({required this.name,required this.color1,required this.img,required this.img1});
}

List<ModelData> datases =[
  ModelData(name: "Sofa",color1: Colors.red, img: 'assets/sofa (1).png',img1: 'assets/sofa (1).png'),
  ModelData(name: "TV",color1: Colors.red, img: 'assets/image 1 (2).png',img1: 'assets/image 1.png'),
  ModelData(name: "Lamb",color1: Colors.red, img: 'assets/kisspng-lighting-lamp-table-lamp-5a8bf96bc692e6 1 (1).png',img1: 'assets/kisspng-lighting-lamp-table-lamp-5a8bf96bc692e6 1 (1).png'),
  ModelData(name: "Table",color1: Colors.red, img: 'assets/kisspng-table-furniture-eames-lounge-chair-matbord-5adbc36d235a50 1 (1).png',img1: 'assets/kisspng-table-furniture-eames-lounge-chair-matbord-5adbc36d235a50 1 (1).png'),

];