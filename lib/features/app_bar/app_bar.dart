import 'package:flutter/material.dart';
import 'package:portfolio/app/app_theme.dart';
import 'package:portfolio/constants/context_extensions.dart';
import 'package:portfolio/widgets/gradient_text_widget.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: innerBoxIsScrolled,
              expandedHeight: 75,
              forceElevated: innerBoxIsScrolled,
              flexibleSpace: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        const GradientWidget(
                          widget: Icon(
                            Icons.code,
                            size: 48,
                            semanticLabel: 'code icon',
                          ),
                          gradient: AppTheme.defaultGradient,
                        ),
                        const Spacer(),
                        Text(
                          context.localizations.my_projects,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                          semanticsLabel:
                              '${context.localizations.my_projects} Section',
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Text(
                          context.localizations.about_me,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                          semanticsLabel:
                              '${context.localizations.about_me} Section',
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Text(
                          context.localizations.contact,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                          semanticsLabel:
                              '${context.localizations.contact} Section',
                        ),
                        const SizedBox(
                          width: 10,
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
