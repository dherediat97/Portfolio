import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/app/app_theme.dart';
import 'package:portfolio/widgets/gradient_text_widget.dart';
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
      'Android Developer',
      'Flutter Developer',
      'Ionic Developer',
      'Mobile Application Developer',
      'Ingenico Developer',
      'Geek',
      'Music Lover',
      'Technology Entusiast',
    ]),
    repeat: false,
    duration: const Duration(milliseconds: 200),
  );

  final streamController =
      TypeWriterController.fromStream(StreamController<String>().stream);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "I'm ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cabin',
                  ),
                ),
                if (isAnimationFinished)
                  const GradientWidget(
                    gradient: AppTheme.defaultGradient,
                    widget: Text(
                      'David Heredia',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cabin',
                      ),
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
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 50, fontFamily: 'Tiny'),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
