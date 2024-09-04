import 'package:flutter/material.dart';
import 'package:portfolio/widgets/gradient_text.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(primary: Colors.black87),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
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
                  semanticsLabel: 'My Projects Section',
                ),
                Text(
                  'About Me',
                  semanticsLabel: 'About Me Section',
                ),
                Text(
                  'Contact',
                  semanticsLabel: 'Contact Section',
                ),
              ],
            )
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(),
      ),
    );
  }
}
