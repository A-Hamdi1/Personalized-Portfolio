import 'package:flutter/material.dart';

import '../components/navbar_page.dart';
import '../constant/Colors.dart';

class Projet {
  final int id;
  final String nom;
  final String imagePath;

  Projet({required this.id, required this.nom, required this.imagePath});
}

void main() => runApp(ProjectPage());

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key});

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Mes Projets',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          Expanded(
            child: ListWheelScrollView(
              itemExtent: 250,
              physics: FixedExtentScrollPhysics(),
              children: [
                buildCard(
                  context,
                  Projet(
                    id: 0,
                    nom: 'Ecommerce',
                    imagePath: 'assets/projects/website8.jpg',
                  ),
                ),
                buildCard(
                  context,
                  Projet(
                    id: 1,
                    nom: 'Project 2',
                    imagePath: 'assets/projects/website2.jpg',
                  ),
                ),
                buildCard(
                  context,
                  Projet(
                    id: 2,
                    nom: 'Project 3',
                    imagePath: 'assets/projects/website3.jpg',
                  ),
                ),
                buildCard(
                  context,
                  Projet(
                    id: 3,
                    nom: 'Project 4',
                    imagePath: 'assets/projects/website4.jpg',
                  ),
                ),
                buildCard(
                  context,
                  Projet(
                    id: 4,
                    nom: 'Project 5',
                    imagePath: 'assets/projects/website5.jpg',
                  ),
                ),
                buildCard(
                  context,
                  Projet(
                    id: 5,
                    nom: 'Project 6',
                    imagePath: 'assets/projects/website6.jpg',
                  ),
                ),
                buildCard(
                  context,
                  Projet(
                    id: 6,
                    nom: 'Project 7',
                    imagePath: 'assets/projects/website7.jpg',
                  ),
                ),
                buildCard(
                  context,
                  Projet(
                    id: 7,
                    nom: 'Project 8',
                    imagePath: 'assets/projects/website8.jpg',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(BuildContext context, Projet projet) {
    final cardWidth = MediaQuery.of(context).size.width * 3 / 4;
    final imageWidth = cardWidth * 3 / 4;

    return Container(
      width: cardWidth,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${projet.nom}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3081D0),
                ),
              ),
              SizedBox(height: 8),
              Image.asset(
                projet.imagePath,
                width: imageWidth,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
