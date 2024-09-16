import 'package:flutter/material.dart';
import 'package:portfolio/app/constants/app_theme.dart';
import 'package:portfolio/l10n/localizations/app_localizations.dart';
import 'package:portfolio/features/start_page/start_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: AppTheme.primaryColor,
          secondary: AppTheme.secondaryColor,
          surface: AppTheme.backgroundColor,
        ),
        useMaterial3: true,
      ),
      home: const StartPage(),
    );
  }
}
