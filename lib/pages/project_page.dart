import 'package:flutter/material.dart';

import '../components/navbar_page.dart';
import '../constant/Colors.dart';

void main() => runApp(ProjectPage());

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: mainText,
              ),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyBottomNavBar()),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: mainText,
            ),
          ),

        ),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text("Project Page"),
        ),
      ),

    );
  }
}
