import 'package:flutter/material.dart';

Widget storyBox({required String img, required String text}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      CircleAvatar(
        radius: 27,
        child: Image.asset(img),
      ),
      Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
    ],
  );
}

Widget textBox({required String topText, required String bottomText}){
  return Column(
    children: [
      Text(topText, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
      Text(bottomText, style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 15),),
    ],
  );

}