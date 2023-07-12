import 'package:flutter/material.dart';

class SingleItem extends StatelessWidget {
  const SingleItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  final VoidCallback onTap;
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            onTap: onTap,
            child: Container(
              width: 160,
              height: 220,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5,
                    spreadRadius: 0,
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/$image"),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style:const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
               const SizedBox(height: 6,),
                Text("$subtitle")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
