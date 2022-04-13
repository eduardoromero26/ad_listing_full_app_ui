import 'package:flutter/material.dart';
import 'package:project_name/screens/MyAds.dart';
import 'package:project_name/screens/editProfile.dart';
//import 'package:project_name/screens/MyMusic.dart';
import 'package:project_name/screens/home.dart';
//import 'package:project_name/custom-widgets/MyMusicWidget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Seetings"),
          backgroundColor: Colors.black,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          const CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/profile_image.jpg',
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Eduardo",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "004637254",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black38,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextButton(
                          onPressed: () {
                             Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const editProfileScreen()));
                          },
                          child: Text(
                            "Edit",
                            style: TextStyle(
                              color: Colors.orange[900],
                            ),
                          )),
                    ],
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.add_a_photo_outlined,
                      color: Colors.black45,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MyAdsScreen()));
                        },
                        child: const Text(
                          "My Ads",
                          style: const TextStyle(color: Colors.black),
                        ))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.person,
                      color: Colors.black45,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "About Us",
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.contacts,
                      color: Colors.black45,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Contact Us",
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
