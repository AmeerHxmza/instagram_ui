import 'package:flutter/material.dart';

Widget buildStoryItem({
  required String imagePath,
  required String label,
  bool isYourStory = false,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Column(
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: isYourStory
                    ? null
                    : Border.all(color: Colors.red, width: 2),
                borderRadius: BorderRadius.circular(40),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  imagePath,
                  width: 65,
                  height: 65,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (isYourStory)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    ),
  );
}

Widget Post({required String ImagePath}) {
  return Column(
    children: [
      Image.asset(
        ImagePath,
        width: double.infinity,
        height: 300,
        fit: BoxFit.cover,
      ),
      SizedBox(height: 5),
      Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Row(children: [
          Image.asset(
            "images/HeartIcon.png",
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          Image.asset(
            "images/ChatIcon.png",
            width: 30,
            height: 30,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          Image.asset(
            "images/SendIcon.png",
            width: 30,
            height: 30,
            fit: BoxFit.cover,
          ),
          Spacer(),
          Image.asset(
            "images/BookMarkIcon.png",
            width: 30,
            height: 30,
            fit: BoxFit.cover,
          ),
        ]),
      ),
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                "images/2.jpeg",
                width: 25,
                height: 25,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            RichText(
              text: TextSpan(
                text: 'Liked by ',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black, // Specify color explicitly
                ),
                children: const [
                  TextSpan(
                    text: 'Christina Silva ',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'and ',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: '2M others',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 3),
      Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          children: [
            RichText(
              text: TextSpan(
                text: 'Babar Azam: ',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Ensure the default text color is black
                ),
                children: const [
                  TextSpan(
                    text: 'Cricket is my passion. ',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: '#Cricket #PCB',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 3),
      Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          children: const [
            Text(
              'View all 2,185 comments',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 10),
    ],
  );
}
