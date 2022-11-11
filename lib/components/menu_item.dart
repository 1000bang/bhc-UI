import 'package:flutter/material.dart';






class MenuItems extends StatelessWidget {
  final String imageName;
  final String title;
  final String price;

  // const MenuItem({Key? key}) : super(key: key);
  const MenuItems({Key? key, required this.imageName, required this.title, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imageName ,fit: BoxFit.fill,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 150),
            Text(title, style: TextStyle(fontSize: 25, color: Colors.black87),),
            SizedBox(height: 10,),
            Text(price, style: TextStyle(color: Colors.black87),),
          ],
        )
      ],
    ),);
  }
}