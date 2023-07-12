import 'dart:ui';

import 'package:fashion_week_ui/widgets/like_comments.dart';
import 'package:flutter/material.dart';

class ProductOverView extends StatelessWidget {
  const ProductOverView({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white70,
                      ),
                      trailing: const Icon(
                        Icons.more_vert,
                        color: Colors.white70,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          LikeComment(
                            icon: Icons.comment_outlined,
                            text: "1",
                          ),
                          LikeComment(
                            icon: Icons.favorite_border_outlined,
                            text: "576",
                          ),
                          LikeComment(
                            icon: Icons.watch_later_outlined,
                            text: "18",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: 20,
                        left: 12,
                        right: 12,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  title,
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
                                  "Lorem ipsum is a place holder text commonly users to demonstrate the visual form of a document or a typeface without relying on ",
                                  style: TextStyle(
                                    color: Colors.white54,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 150,
                                      decoration: const BoxDecoration(
                                        color: Color(0xffc20f2c),
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(30),
                                          topLeft: Radius.circular(30),
                                          topRight:   Radius.circular(30),
                                        ),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text(
                                            "Follow",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(Icons.add_circle,color: Colors.white,)

                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
