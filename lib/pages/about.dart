import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/navbar_page.dart';
import '../constant/Colors.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("images/me.jpg"),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const CircleAvatar(
                            radius: 13,
                            backgroundColor: TColors.primary,
                            child: Icon(
                              Icons.verified,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text("Aziz Chtourou",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildSocialIcon(
                            FontAwesomeIcons.instagram, _launchInstagram),
                        const SizedBox(width: 12),
                        buildSocialIcon(FontAwesomeIcons.github, _launchGithub),
                        const SizedBox(width: 12),
                        buildSocialIcon(
                            FontAwesomeIcons.facebook, _launchFacebook),
                        const SizedBox(width: 12),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            buildContact(),
            const SizedBox(
              height: 10,
            ),
            buildMail(),
            const SizedBox(
              height: 10,
            ),
            buildAdresse(),
            const SizedBox(
              height: 10,
            ),
            buildTranslate(),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton buildFollowButton(String txt, Function() ontap) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 16.0),
        backgroundColor: Colors.black26,
      ),
      child: Text(
        txt,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  Widget buildSocialIcon(IconData icon, onTap) => CircleAvatar(
        radius: 25,
        child: Material(
          shape: const CircleBorder(),
          clipBehavior: Clip.hardEdge,
          color: Colors.black38,
          child: InkWell(
            onTap: onTap,
            child: Center(
                child: Icon(
              icon,
              size: 32,
              color: Colors.white,
            )),
          ),
        ),
      );
}

void _callNumber() async {
  Uri dialNumber = Uri(scheme: 'tel', path: '+21629579776');
  if (!await launchUrl(dialNumber)) {
    throw Exception('Could not launch $dialNumber');
  }
}

void _sendEmail() async {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'azizchtourou330@gmail.com',
    queryParameters: {'subject': 'Contact'},
  );

  if (!await launchUrl(_emailLaunchUri)) {
    throw 'Could not launch $_emailLaunchUri';
  }

  await launchUrl(_emailLaunchUri);
}

Future<void> _launchFacebook() async {
  final Uri _urlFac =
      Uri.parse('https://www.facebook.com/profile.php?id=100082276860382');
  if (!await launchUrl(_urlFac)) {
    throw Exception('Could not launch $_urlFac');
  }
}

Future<void> _launchGithub() async {
  final Uri _urlGit = Uri.parse('https://github.com/aziz-chtourou');
  if (!await launchUrl(_urlGit)) {
    throw Exception('Could not launch $_urlGit');
  }
}

Future<void> _launchInstagram() async {
  final Uri _urlInsta =
      Uri.parse('https://www.instagram.com/aziz__chtourou__/');
  if (!await launchUrl(_urlInsta)) {
    throw Exception('Could not launch $_urlInsta');
  }
}

Future<void> _launchMaps() async {
  final Uri _urlLink = Uri.parse('https://maps.app.goo.gl/Lj1NUgTc2DiianuA9');
  if (!await launchUrl(_urlLink)) {
    throw Exception('Could not launch $_urlLink');
  }
}

Widget buildContact() => Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Appelez Moi : ",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          GestureDetector(
            onTap: () {
              _callNumber();
            },
            child: const ListTile(
              leading: Icon(
                FontAwesomeIcons.whatsapp,
                size: 30,
                color: Color(0xFF3081D0),
              ),
              title: Text('+216 29 579 776'),
            ),
          ),
        ],
      ),
    );

Widget buildMail() => Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Contactez Moi : ",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          GestureDetector(
            onTap: () {
              _sendEmail();
            },
            child: const ListTile(
              leading: Icon(
                Icons.email,
                size: 30,
                color: Color(0xFF3081D0),
              ),
              title: Text('azizchtourou330@gmail.com'),
            ),
          ),
        ],
      ),
    );

Widget buildAdresse() => Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Adresse : ",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          GestureDetector(
            onTap: () {
              _launchMaps();
            },
            child: const ListTile(
              leading: Icon(
                Iconsax.location,
                size: 30,
                color: Color(0xFF3081D0),
              ),
              title: Text("Sakiet Ezzit, Route Tunis, Sfax"),
            ),
          ),
        ],
      ),
    );
Widget buildTranslate() => Container(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Traduire",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 10),
      _buildLanguageRow('icons/flags/svg/tn.svg', 'Arabe',
          'icons/flags/svg/fr.svg', 'Français',
          'icons/flags/svg/gb.svg', 'Anglais'),
    ],
  ),
);

Widget _buildLanguageRow(
    String flagPath1,
    String language1,
    String flagPath2,
    String language2,
    String flagPath3,
    String language3,
    ) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildLanguageTile(flagPath1, language1),
      _buildLanguageTile(flagPath2, language2),
      _buildLanguageTile(flagPath3, language3),
    ],
  );
}

Widget _buildLanguageTile(String flagPath, String language) {
  return Container(
    width: 105,
    height: 115,
    child: Card(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              flagPath,
              package: 'country_icons',
              height: 20,
            ),
            const SizedBox(height: 5),
            Text(
              language,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}
