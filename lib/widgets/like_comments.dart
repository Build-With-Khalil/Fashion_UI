import 'package:flutter/material.dart';

class LikeComment extends StatelessWidget {
  const LikeComment({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: Column(
        children: <Widget>[
          Icon(icon, color: Colors.white70),
          Text(
            text,
            style:const TextStyle(
              color: Colors.white70,
            ),
          )
        ],
      ),
    );
  }
}
