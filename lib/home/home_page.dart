import 'package:fashion_week_ui/product_overview/product_overview.dart';
import 'package:fashion_week_ui/widgets/single_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.white,
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Icon(Icons.search),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const ListTile(
            title: Text(
              "Fashion Week",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color(0xffb376f3),
              ),
            ),
            subtitle: Text("2023 Fashion show in Pakistan"),
          ),
          const ListTile(
            title: Text(
              "Explore",
              style: TextStyle(
                color: Color(0xffb376f3),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(Icons.sort),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "Recomended",
                style: TextStyle(
                  color: Color(0xffb376f3),
                ),
              ),
              Text("New Models"),
              Text("2023 Show"),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                SingleItem(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const ProductOverView(
                            image: "assets/image1.jpg",
                            title: "Mehwish Hayat",
                          );
                        },
                      ),
                    );
                  },
                  title: "Mehwish Hayat",
                  subtitle: "Pakistan",
                  image: "image1.jpg",
                ),
                SingleItem(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const ProductOverView(
                            image: "assets/image2.jpg",
                            title: "Sajal Ali",
                          );
                        },
                      ),
                    );
                  },
                  title: "Sajal Ali",
                  subtitle: "Pakistan",
                  image: "image2.jpg",
                ),
                SingleItem(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const ProductOverView(
                            image: "assets/image5.jpg",
                            title: "Hina Dilpazir",
                          );
                        },
                      ),
                    );
                  },
                  title: "Hina Dilpazir",
                  subtitle: "Pakistan",
                  image: "image5.jpg",
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5,
                    spreadRadius: 0,
                  )
                ],
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("assets/image5.jpg"))),
          ),
        ],
      ),
    );
  }
}
