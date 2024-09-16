import 'package:flutter/material.dart';
import 'package:portfolio/app/constants/context_extensions.dart';
import 'package:portfolio/features/app_bar/app_bar.dart';
import 'package:portfolio/features/home/home_page.dart';
import 'package:portfolio/features/my_projects/my_projects_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const HomePage(),
              Text(
                context.localizations.my_projects,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const MyProjectsPage(),
            ],
          ),
        ),
      ),
    );
  }
}
