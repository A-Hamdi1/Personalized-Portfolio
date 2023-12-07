import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:portfolio/widgets/txt_widget.dart';
import 'package:country_icons/country_icons.dart';
import 'package:provider/provider.dart';

import '../constant/Colors.dart';
import '../constant/theme_functions.dart';
import '../constant/theme_provider.dart';

void main() => runApp(const ProfileWidget());

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  final double coverHeight = 200;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: darkMode ? TColors.black : Color(0xFFF5F7F8),

    body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
        ],
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
          const Text('Mhamed Aziz Chtourou',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text(
            'Développeur ',
            style: TextStyle(fontSize: 16,
  ),
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 16),
          buildAbout(),
          buildDiv(),
          buildEducation(),
          buildDiv(),
          buildFormation(),
          buildDiv(),
          buildClub(),
          buildDiv(),
          buildLangue(),
          buildDiv(),
          buildHobbies(),
          const SizedBox(
            height: 32,
          ),
        ],
      );

  Widget buildAbout() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("À Propos",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 2),
            Text(
              "Étudiant en 3ème année de licence en informatique à l'ISET Sfax, spécialisé "
                  "en développement de systèmes d'information, je bénéficie d'une solide formation théorique en sciences"
                  " informatiques.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14, height: 1.4),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      );

  Widget buildDiv() => const Text(
        "--------------------------------------------------------------------------------",
      );

  Widget buildEducation() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Education",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ChildWidget(
              icon: Iconsax.teacher,
              title: 'Licence en informatique',
              subTitle: 'Iset Sfax - 2024',
            ),
            ChildWidget(
              icon: Iconsax.courthouse,
              title: 'Baccalauréat ',
              subTitle: 'Lyceé Monji Slim Sfax - 2021',
            ),
          ],
        ),
      );

  Widget buildLangue() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Langues",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                'icons/flags/svg/tn.svg',
                package: 'country_icons',
                height: 20,
              ),
              title: const Text('Arabe : Native'),
            ),
            ListTile(
              leading: SvgPicture.asset(
                'icons/flags/svg/fr.svg',
                package: 'country_icons',
                height: 20,
              ),
              title: const Text('Français : Bien'),
            ),
            ListTile(
              leading: SvgPicture.asset(
                'icons/flags/svg/gb.svg',
                package: 'country_icons',
                height: 16,
              ),
              title: const Text('Anglais : Bien'),
            ),
          ],
        ),
      );

  Widget buildHobbies() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hobbies",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.book,
                size: 30,
                color: Color(0xFF3081D0),
              ),
              title: Text('Lecture'),
            ),
            ListTile(
              leading: Icon(
                Icons.library_music,
                size: 30,
              ),
              title: Text('Musique'),
            ),
            ListTile(
              leading: Icon(
                Icons.sports_soccer,
                size: 30,
                color: Color(0xFF6B240C),
              ),
              title: Text('Sport'),
            ),
          ],
        ),
      );
  Widget buildClub() => Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Clubs",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.verified,
            size: 30,
            color: Color(0xFF3081D0),
          ),
          title: Text('NMTF Club  - Membre 2021'),
        ),
        ListTile(
          leading: Icon(
            Icons.verified,
            size: 30,
            color: Color(0xFF3081D0),

          ),
          title: Text('JCEN Club  - Membre 2020'),
        ),
        ListTile(
          leading: Icon(
            Icons.verified,
            size: 30,
            color: Color(0xFF3081D0),
          ),
          title: Text('EMUN Club - Membre 2021'),
        ),
      ],
    ),
  );
  Widget buildFormation() => Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Formations",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.assignment,
            size: 30,
            color: Color(0xFF3081D0),
          ),
          title: Text('Certificat AWS - Juillet 2022'),
        ),
        ListTile(
          leading: Icon(
            Icons.assignment,
            size: 30,
            color: Color(0xFF3081D0),

          ),
          title: Text('Certificat SCRUM - Mai 2020'),
        ),
        ListTile(
          leading: Icon(
            Icons.assignment,
            size: 30,
            color: Color(0xFF3081D0),
          ),
          title: Text('Certificat TOEIC - Mars 2018'),
        ),
      ],
    ),
  );

}
