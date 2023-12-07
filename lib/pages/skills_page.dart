import 'package:flutter/material.dart';
import 'package:portfolio/widgets/skills_back_slider.dart';
import 'package:portfolio/widgets/skills_data_widget.dart';
import 'package:portfolio/widgets/skills_font_slider.dart';
import 'package:provider/provider.dart';
import '../components/navbar_page.dart';
import '../constant/Colors.dart';
import '../constant/theme_functions.dart';
import '../constant/theme_provider.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkMode ?  TColors.black: Color(0xFFF5F7F8),
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
      body: SafeArea(
        child: Container(

          color: darkMode ?  TColors.black: Color(0xFFF5F7F8),

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
                  const Text(
                    'Front-End',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  const SkillsFrontSlider(),
                  const Text(
                    'Back-End',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  const SkillsBackSlider(),
                  const Text(
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          themeProvider.toggleTheme();
        },
        child: Icon(
          Icons.brightness_4,
          color: Colors.white,
        ),
        backgroundColor: darkMode ? Colors.lightBlueAccent : Colors.grey,
      ),
    );
  }
}
