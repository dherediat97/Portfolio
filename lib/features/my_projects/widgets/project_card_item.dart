import 'package:flutter/material.dart';
import 'package:portfolio/app/app_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCardItem extends StatelessWidget {
  const ProjectCardItem({
    super.key,
    required this.projectName,
    required this.projectUrl,
    required this.projectDescription,
    required this.isUnderDevelopment,
    this.projectMedia,
  });

  final String? projectMedia;
  final String projectName;
  final String projectUrl;
  final String projectDescription;
  final bool isUnderDevelopment;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          projectName,
          style: TextStyle(
            fontSize: 35,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        MaterialApp(
          theme: ThemeData(
            colorScheme: const ColorScheme.dark(
              primary: AppTheme.primaryColor,
              secondary: AppTheme.secondaryColor,
              surface: AppTheme.backgroundColor,
            ),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: isUnderDevelopment,
          home: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (projectMedia != null)
                  Image.asset(
                    'images/$projectMedia',
                    height: 600,
                    width: double.infinity,
                    fit: BoxFit.fitHeight,
                  ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(height: 10),
                      Text(
                        projectDescription,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.transparent,
                            ),
                            child: Text(
                              'VIEW',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            onPressed: () {
                              launchUrl(Uri.parse(projectUrl));
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
