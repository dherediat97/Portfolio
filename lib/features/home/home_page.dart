import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/app/app_theme.dart';
import 'package:portfolio/widgets/gradient_text.dart';
import 'package:typewritertext/typewritertext.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isAnimationFinished = false;
  final valueController = TypeWriterController.fromValue(
    TypeWriterValue([
      'Android Native Mobile Developer',
      'Flutter Developer',
      'Ionic Developer',
      'Mobile Application Developer',
      'Ingenico Developer',
      'Geek',
      'Music Lover',
      'Technology Entusiast',
    ]),
    repeat: false,
    duration: const Duration(milliseconds: 100),
  );

  final streamController =
      TypeWriterController.fromStream(StreamController<String>().stream);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              "I'm ",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cabin',
              ),
            ),
            if (isAnimationFinished)
              const Text(
                'David Heredia',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cabin',
                ),
              ),
          ],
        ),
        if (!isAnimationFinished)
          TypeWriter(
            controller: valueController,
            onFinished: (value) {
              setState(() {
                isAnimationFinished = true;
              });
            },
            builder: (context, value) {
              return GradientWidget(
                gradient: AppTheme.defaultGradient,
                widget: Text(
                  value.text,
                  style: const TextStyle(fontSize: 30, fontFamily: 'Tiny'),
                ),
              );
            },
          ),
      ],
    );
  }
}
