import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constant/Colors.dart';
import '../constant/theme_functions.dart';
import '../constant/theme_provider.dart';
import '../widgets/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ProfileWidget(),
          ],
        ),
      ),
    );
  }
}