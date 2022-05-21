import 'package:flutter/material.dart';
import 'package:project_name/custom-widgets/productCardWidget.dart';
import 'package:project_name/screens/Settings.dart';
import 'package:project_name/screens/createAdd.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;
 

  @override
  void initState() {
    super.initState();
  }

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
            automaticallyImplyLeading: false,
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
        body: Container(
          padding: const EdgeInsets.all(8.0),
          // child: GridView.builder(
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //     childAspectRatio: 2 / 2.8,
          //     mainAxisSpacing: 8,
          //     crossAxisSpacing: 8,
          //   ),
          //   itemCount: objApi.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     return ProductCardWidget(productName: objApi[index]['title'], price: objApi[index]['price'].toString(), imageURL: objApi[index]['images'][0], description: objApi[index]['description']);
          //   },
          // ),
        ),
      ),
    );
  }
}