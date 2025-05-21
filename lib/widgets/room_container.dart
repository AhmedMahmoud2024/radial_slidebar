import 'package:flutter/material.dart';

class RoomContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String iconPath;
  final double width;
  
  const RoomContainer({super.key, required this.title, required this.subtitle, required this.iconPath, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width/1.5,
      width: width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFF1F1F1),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                ),
              ),
              Image.asset(
                iconPath,
                height: 25,
              )
            ],
          ),
             Text(
                subtitle,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54
                ),
              )
        ],
      ),
    );
  }
}