import 'package:flutter/material.dart';
import 'package:portfolio/features/app_bar/app_bar.dart';
import 'package:portfolio/features/home/home_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return const MyAppBar(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: HomePage(),
      ),
    );
  }
}
