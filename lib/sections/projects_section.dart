import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:jaineel_portfolio/utils/constants.dart';
import 'package:jaineel_portfolio/widgets/custom_header.dart';
import 'package:jaineel_portfolio/widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        const CustomHeader(title: 'PROJECTS'),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: (0.035 * size.height) + (0.01 * size.width),
            horizontal: (0.01 * size.height) + (0.01 * size.width),
          ),
          child: Wrap(
            spacing: (0.01 * size.height) + (0.01 * size.width),
            runSpacing: (0.035 * size.height) + (0.01 * size.width),
            alignment: WrapAlignment.center,
            children: [
              ProjectCard(
                imageUrl: 'res/images/nutri_chef.png',
                title: 'NutriChef',
                description: 'Healthy Food Recipes App using Native Android',
                accomplishments: const [
                  'Native Android Food Recipes App',
                  'Spoonacular API for backend',
                  'ROOM DB, Hilt, Offline Cache, MVVM Architecture',
                ],
                redirectIcon: FloatingActionButton(
                  elevation: 4,
                  onPressed: () async => await launchUrl(
                    Uri.parse(
                      'https://github.com/Jaineel-Mamtora/NutriChef',
                    ),
                    mode: LaunchMode.externalApplication,
                  ),
                  splashColor: Constants.secondaryColor,
                  backgroundColor: Constants.secondaryColor,
                  hoverColor: Constants.secondaryColor,
                  child: Icon(
                    MdiIcons.github,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              ProjectCard(
                imageUrl: 'res/images/tic_tac_toe.png',
                title: 'Tic-Tac-Toe',
                description: 'Tic-Tac-Toe App using Flutter',
                accomplishments: const [
                  'Flutter App',
                  'Animations and custom themes',
                ],
                redirectIcon: FloatingActionButton(
                  elevation: 4,
                  onPressed: () async => await launchUrl(
                    Uri.parse(
                      'https://github.com/Jaineel-Mamtora/Tic-Tac-Toe',
                    ),
                    mode: LaunchMode.externalApplication,
                  ),
                  splashColor: Constants.secondaryColor,
                  backgroundColor: Constants.secondaryColor,
                  hoverColor: Constants.secondaryColor,
                  child: Icon(
                    MdiIcons.github,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              ProjectCard(
                imageUrl: 'res/images/covid_vaccine_slot_tracker.png',
                title: 'Covid Vaccine Slot Tracker',
                description:
                    'Flutter App to get instant update on Vaccine Slots in India',
                accomplishments: const [
                  'Flutter App',
                  'Cowin API for backend',
                  'Searching vaccine slots based on State/District/PIN CODE',
                ],
                redirectIcon: FloatingActionButton(
                  elevation: 4,
                  onPressed: () async => await launchUrl(
                    Uri.parse(
                      'https://github.com/Jaineel-Mamtora/Covid-Vaccine-Tracker',
                    ),
                    mode: LaunchMode.externalApplication,
                  ),
                  splashColor: Constants.secondaryColor,
                  backgroundColor: Constants.secondaryColor,
                  hoverColor: Constants.secondaryColor,
                  child: Icon(
                    MdiIcons.github,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              ProjectCard(
                imageUrl: 'res/images/planit.png',
                title: 'PlanIt',
                description:
                    'A task scheduling and reminder app built using Flutter',
                accomplishments: const [
                  'Flutter daily productivity app',
                  'sqflite for database',
                  'Fully offline, scheduling and planning application',
                ],
                redirectIcon: FloatingActionButton(
                  elevation: 4,
                  onPressed: () async => await launchUrl(
                    Uri.parse(
                      'https://play.google.com/store/apps/details?id=com.trailblazing.planit',
                    ),
                    mode: LaunchMode.externalApplication,
                  ),
                  splashColor: Constants.secondaryColor,
                  backgroundColor: Constants.secondaryColor,
                  hoverColor: Constants.secondaryColor,
                  child: SvgPicture.asset(
                    'res/icons/play_store.svg',
                    height: 30,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              ProjectCard(
                imageUrl: 'res/images/promptopia.png',
                title: 'Promptopia',
                description: 'An open-source AI prompting tool',
                accomplishments: const [
                  'Full-Stack Web Project',
                  'MongoDB for database',
                  'Next.js, tailwind.css for front-end',
                ],
                redirectIcon: FloatingActionButton(
                  elevation: 4,
                  onPressed: () async => await launchUrl(
                    Uri.parse(
                      'https://github.com/Jaineel-Mamtora/promptopia',
                    ),
                    mode: LaunchMode.externalApplication,
                  ),
                  splashColor: Constants.secondaryColor,
                  backgroundColor: Constants.secondaryColor,
                  hoverColor: Constants.secondaryColor,
                  child: Icon(
                    MdiIcons.github,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
