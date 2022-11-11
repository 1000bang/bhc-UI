import 'package:flutter/material.dart';
class EventItem extends StatelessWidget {
  final String title;
  final String date;
  final String image;
  const EventItem({Key? key, required this.title, required this.date, required this.image }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Text(title, style: TextStyle(fontSize: 25),),
        SizedBox(height: 10,),
        Text(date),
        AspectRatio(
            aspectRatio: 5 / 3,
            child: Image.asset(image ,fit: BoxFit.cover,)),
        Divider(height: 3,)
      ],
    ),);
  }
}
