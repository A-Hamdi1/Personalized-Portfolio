import 'package:flutter/material.dart';

void main() => runApp(const ProfileWidget());

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  final double coverHeight = 200;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
        ],
      ),
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          "images/dev.png",
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: const AssetImage("images/me.jpg"),
      );

  Widget buildTop() {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget buildContent() => Column(
        children: [
          const SizedBox(height: 8),
          const Text('Aziz Chtourou',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text(
            'Software Engineer',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          buildAbout("About Me","Lorem ipsum dolor amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",),
          const Text("------------------------------------------------------------------------------------------"),
          buildAbout("Éducation","Lorem ipsum dolor amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",),
          const Text("------------------------------------------------------------------------------------------"),
          buildAbout("Éxpérience","Lorem ipsum dolor amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",),
          const Text("------------------------------------------------------------------------------------------"),
          buildAbout("Formations","Lorem ipsum dolor amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",),
          const Text("------------------------------------------------------------------------------------------"),
          buildAbout("Club ","Lorem ipsum dolor amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",),
          const Text("------------------------------------------------------------------------------------------"),
          buildAbout("Langues","Lorem ipsum dolor amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",),
          const Text("------------------------------------------------------------------------------------------"),
          buildAbout("Hobbies","Lorem ipsum dolor amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",),
          const SizedBox(
            height: 32,
          ),
        ],
      );

  Widget buildAbout(String titre, String desc) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                titre,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 2),
            Text(
              desc,
              // textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14, height: 1.4),
            ),
            SizedBox(height: 20,)
          ],
        ),
      );
}

