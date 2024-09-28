import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselsExp extends StatelessWidget{
  final List<String>imageUrls=[
    "assets/images/american rest.jpeg",
    "assets/images/american.jpg",
    "assets/images/indian.jpeg",
    "assets/images/japanese.jpeg",
    "assets/images/korean.jpeg",
    "assets/images/korean1.jpeg",
    "assets/images/thai1.jpeg",
  ];
  @override  
  Widget build(BuildContext context){
   return Scaffold(
    appBar: AppBar(
      title: Text("Carousel slider(statelessWidget)"),
      
    ),
    body:Column(
      children: [
        CarouselSlider(
          options:CarouselOptions(
            height:400,
            autoPlay:true,
            enlargeCenterPage:true,
            autoPlayCurve:Curves.fastOutSlowIn,
            enableInfiniteScroll:true,
            autoPlayAnimationDuration:Duration(milliseconds: 800),
            viewportFraction:0.8,
          ), 
          items: imageUrls.map((imageUrl){
            return Container(
              height: 400,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            );
          }).toList(),
          
        ),
      ],
    ) ,

   );
  }
}