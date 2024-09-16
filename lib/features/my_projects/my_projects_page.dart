import 'package:flutter/material.dart';
import 'package:portfolio/features/my_projects/widgets/project_card_item.dart';

class MyProjectsPage extends StatelessWidget {
  const MyProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 500),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 50,
            mainAxisExtent: 750,
            crossAxisSpacing: 50,
          ),
          children: const [
            ProjectCardItem(
              projectName: 'Film Flu',
              projectDescription:
                  'A multiplatform app that show all info of movies or tv series and made with Flutter',
              projectMedia: 'filmflu.png',
              isUnderDevelopment: true,
              projectUrl: 'https://github.com/dherediat97/FilmFlu',
            ),
            ProjectCardItem(
              projectName: 'Horus Vision',
              projectDescription:
                  'A multiplatform utility to agilizate the view of the entertaiments events',
              isUnderDevelopment: true,
              projectUrl: 'https://github.com/dherediat97/HorusVision',
            ),
            ProjectCardItem(
              projectName: 'Rick & Morty',
              projectDescription:
                  'A native Android app that show all info of the Rick & Morty Animated Series(episodes, characters, locations)',
              projectMedia: 'rick_morty.png',
              isUnderDevelopment: false,
              projectUrl: 'https://github.com/dherediat97/RickAndMortyApp',
            ),
            ProjectCardItem(
              projectName: 'Adopt a Pet',
              projectDescription:
                  'A native Android app that show all info of movies or tv series and made with Flutter',
              projectMedia: 'adopt_a_pet.jpg',
              isUnderDevelopment: false,
              projectUrl: 'https://github.com/dherediat97/AdoptAPetApp',
            ),
          ],
        ),
      ),
    );
  }
}
