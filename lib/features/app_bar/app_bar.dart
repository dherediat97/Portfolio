import 'package:flutter/material.dart';
import 'package:portfolio/widgets/gradient_text.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        flexibleSpace: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GradientWidget(
                  widget: Icon(
                    Icons.code,
                    semanticLabel: 'code icon',
                  ),
                  gradient: LinearGradient(
                    colors: [Colors.pink, Colors.purple],
                  ),
                ),
                Text(
                  'My Projects',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Atma',
                  ),
                  semanticsLabel: 'My Projects Section',
                ),
                Text(
                  'About Me',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Atma',
                  ),
                  semanticsLabel: 'About Me Section',
                ),
                Text(
                  'Contact',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Atma',
                  ),
                  semanticsLabel: 'Contact Section',
                ),
              ],
            )
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: child,
    );
  }
}
