import 'package:flutter/material.dart';
import 'package:portfolio/app/app_theme.dart';
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
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: false,
              floating: innerBoxIsScrolled,
              expandedHeight: 75,
              forceElevated: innerBoxIsScrolled,
              backgroundColor: Theme.of(context).colorScheme.primary,
              flexibleSpace: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GradientWidget(
                          widget: Icon(
                            Icons.code,
                            size: 48,
                            semanticLabel: 'code icon',
                          ),
                          gradient: AppTheme.defaultGradient,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'My Projects',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                          semanticsLabel: 'My Projects Section',
                        ),
                        Spacer(),
                        Text(
                          'About Me',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                          semanticsLabel: 'About Me Section',
                        ),
                        Spacer(),
                        Text(
                          'Contact',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                          semanticsLabel: 'Contact Section',
                        ),
                        SizedBox(
                          width: 100,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ];
        },
        body: child,
      ),
    );
  }
}
