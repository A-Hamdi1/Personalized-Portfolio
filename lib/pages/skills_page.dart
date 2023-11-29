import 'package:flutter/material.dart';
import 'package:portfolio/widgets/skills_back_slider.dart';
import 'package:portfolio/widgets/skills_data_widget.dart';
import 'package:portfolio/widgets/skills_font_slider.dart';

import '../components/navbar_page.dart';
import '../constant/Colors.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                MaterialPageRoute(builder: (context) => MyBottomNavBar()),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: mainText,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Color(0xFFF5F7F8),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Compétences",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Front-End',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  const SkillsFrontSlider(),
                  Text(
                    'Back-End',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  const SkillsBackSlider(),
                  Text(
                    'SGBD',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  const SkillsDataSlider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
