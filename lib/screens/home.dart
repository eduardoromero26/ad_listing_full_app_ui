import 'package:flutter/material.dart';
//import 'package:project_name/custom-widgets/artist_recommended_widget.dart';
//import 'package:project_name/custom-widgets/last_played_widget.dart';
//import 'package:project_name/custom-widgets/playlist_recommended_widget.dart';
//import 'package:project_name/screens/AddNewMusic.dart';
//import 'package:project_name/screens/MyMusic.dart';
//import 'package:project_name/screens/editProfile.dart';
import 'package:project_name/custom-widgets/productCardWidget.dart';
import 'package:project_name/screens/Settings.dart';
import 'package:project_name/screens/createAdd.dart';
import 'package:project_name/screens/editProfile.dart';
//import 'package:project_name/screens/product-detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange[900],
          foregroundColor: Colors.white,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CreateAddScreen()));
            // Respond to button press
          },
          child: const Icon(Icons.add_a_photo_outlined),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: const Text("Ads Listing"),
            backgroundColor: Colors.black,
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsScreen()));
                },
                child: const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/profile_image.jpg',
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
            ]),
        body: GridView.count(
          padding: const EdgeInsets.only(
            top: 8,
            left: 8,
            right: 8,
          ),
          crossAxisCount: 2,
          childAspectRatio: 2 / 2.5,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: const [
            ProductCardWidget(
              productName: "Samsung for Sale",
              price: "12000.0",
              imageURL: "assets/images/mobile_2.jpg",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            ),
            ProductCardWidget(
              productName: "Iphone for Sale",
              price: "33000.0",
              imageURL: "assets/images/mobile_1.jpeg",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            ),
            ProductCardWidget(
              productName: "Manuti Swift 2020 for Sale",
              price: "300000.0",
              imageURL: "assets/images/car_2.jpeg",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            ),
            ProductCardWidget(
              productName: "Farm Land near Chernobil",
              price: "1200000.0",
              imageURL: "assets/images/hourse_1.jpg",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            ),
            ProductCardWidget(
              productName: "Used Mecedez Benz for Sale",
              price: "3800000.0",
              imageURL: "assets/images/car_1.jpeg",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            ),
            ProductCardWidget(
              productName: "Used Macbook M1 for Sale",
              price: "52000.0",
              imageURL: "assets/images/apple-macbook-pro-m1.jpeg",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            ),
          ],
        ),
      ),
    );
  }
}
