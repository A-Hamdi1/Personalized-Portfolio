import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      body: Column(
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
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("images/me.jpg"),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
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
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Aziz Chtourou",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSocialIcon(FontAwesomeIcons.instagram, _launchInstagram),
                      const SizedBox(width: 12),
                      buildSocialIcon(FontAwesomeIcons.github, _launchGithub),
                      const SizedBox(width: 12),
                      buildSocialIcon(FontAwesomeIcons.facebook, _launchFacebook),
                      const SizedBox(width: 12),
                      buildSocialIcon(FontAwesomeIcons.linkedin, _launchLinkedin),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildFollowButton("Call", () {
                        _callNumber();
                      }),
                      SizedBox(width: 16),
                      buildFollowButton("Mail", () {
                        _sendEmail();
                      }),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  ElevatedButton buildFollowButton(String txt, Function() ontap) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 16.0),
        backgroundColor: Colors.black26,
      ),
      child: Text(
        txt,
        style: TextStyle(color: Colors.white),
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
        child: Center(child: Icon(icon, size: 32,color: Colors.white,)),
      ),
    ),
  );
}

void _callNumber() async {
  Uri dialNumber = Uri(scheme: 'tel', path: '+21623757648');
  if (!await launchUrl(dialNumber)) {
    throw Exception('Could not launch $dialNumber');
  }
}

void _sendEmail() async {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'hamdi.akram.dev@gmail.com',
    queryParameters: {'subject': 'Demande Projet'},
  );

  if (!await launchUrl(_emailLaunchUri)) {
    throw 'Could not launch $_emailLaunchUri';
  }

  await launchUrl(_emailLaunchUri);
}
Future<void> _launchFacebook() async {
  final Uri _urlFac = Uri.parse('https://www.facebook.com/Akram.Hamdi.Dev');
  if (!await launchUrl(_urlFac)) {
    throw Exception('Could not launch $_urlFac');
  }
}

Future<void> _launchGithub() async {
  final Uri _urlGit = Uri.parse('https://github.com/A-Hamdi1');
  if (!await launchUrl(_urlGit)) {
    throw Exception('Could not launch $_urlGit');
  }
}

Future<void> _launchLinkedin() async {
  final Uri _urlLink = Uri.parse('https://www.linkedin.com/in/hamdi-akram');
  if (!await launchUrl(_urlLink)) {
    throw Exception('Could not launch $_urlLink');
  }
}
Future<void> _launchInstagram() async {
  final Uri _urlInsta = Uri.parse('https://instagram.com/');
  if (!await launchUrl(_urlInsta)) {
    throw Exception('Could not launch $_urlInsta');
  }
}