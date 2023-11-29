import 'package:flutter/material.dart';
import '../widgets/profile_widget.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            const ProfileWidget(),
          ],
        ),
      ),
    );
  }
}