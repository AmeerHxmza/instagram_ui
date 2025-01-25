import 'package:flutter/material.dart';
import 'widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.camera_alt_outlined,
          size: 30,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "images/SendIcon.png",
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          )
        ],
        title: const Center(
          child: Text(
            "Instagram",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 45,
              fontFamily: "Billabong",
            ),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: const Text(
                  "Stories",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildStoryItem(
                      imagePath: 'images/profile.jpeg',
                      label: "Your Story",
                      isYourStory: true,
                    ),
                    buildStoryItem(
                      imagePath: 'images/1.jpeg',
                      label: "User 1",
                    ),
                    buildStoryItem(
                      imagePath: 'images/babar.jpeg',
                      label: "User 2",
                    ),
                    buildStoryItem(
                      imagePath: 'images/2.jpeg',
                      label: "User 3",
                    ),
                    buildStoryItem(
                      imagePath: 'images/3.jpeg',
                      label: "User 4",
                    ),
                    buildStoryItem(
                      imagePath: 'images/4.jpeg',
                      label: "User 5",
                    ),
                    buildStoryItem(
                      imagePath: 'images/5.jpeg',
                      label: "User 6",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        // Fixed syntax
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "images/profile.jpeg",
                          width: 45,
                          height: 45,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text("Babar Azam",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Post(ImagePath: "images/post.jpg"),
              Post(ImagePath: "images/babar.jpeg"),
              Post(ImagePath: "images/short.webp"),
            ],
          ),
        ),
      ),
    );
  }
}
