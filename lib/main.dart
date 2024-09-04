import 'package:flutter/material.dart';
import 'package:portfolio/features/app_bar/app_bar.dart';
import 'package:portfolio/features/home/home_page.dart';
import 'package:portfolio/model/portfolio_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PortfolioModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Portfolio',
        theme: ThemeData(
          colorScheme: const ColorScheme.dark(primary: Colors.black87),
          useMaterial3: true,
        ),
        home: const StartPage(),
      ),
    );
  }
}

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
        padding: EdgeInsets.all(16.0),
        child: HomePage(),
      ),
    );
  }
}
