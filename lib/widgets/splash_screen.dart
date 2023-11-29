import 'dart:async';

import 'package:flutter/material.dart';

import 'onboarding_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animation = Tween<double>(begin: 50.0, end: 100.0).animate(_controller);

    _controller.forward();

    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const OnboardingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF06668C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return CircleAvatar(
                  backgroundImage: AssetImage('images/me.jpg'),
                  radius: _animation.value,
                );
              },
            ),
            SizedBox(height: 25.0),
            // Texte avec une nouvelle police
            Text(
              'Chtourou Mhamed Aziz',
              style: TextStyle(
                fontSize: 30.0, // Taille de la nouvelle police
                fontWeight: FontWeight.bold,
                color: Colors.white, // Couleur du texte en blanc
                fontFamily: 'Nunito', // Changer la police à Nunito
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}