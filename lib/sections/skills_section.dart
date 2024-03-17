import 'package:flutter/material.dart';

import 'package:jaineel_portfolio/widgets/custom_header.dart';
import 'package:jaineel_portfolio/widgets/skill_card.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        const CustomHeader(title: 'SKILLS'),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.05,
            horizontal: size.width * 0.02,
          ),
          child: const Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 40,
            spacing: 40,
            children: [
              SkillCard(
                logoUrl: 'res/icons/dart_logo.svg',
                name: 'Dart',
              ),
              SkillCard(
                logoUrl: 'res/icons/flutter_logo.svg',
                name: 'Flutter',
              ),
              SkillCard(
                logoUrl: 'res/icons/kotlin_logo.svg',
                name: 'Kotlin',
              ),
              SkillCard(
                logoUrl: 'res/icons/java_logo.svg',
                name: 'Java',
              ),
              SkillCard(
                logoUrl: 'res/icons/git_logo.svg',
                name: 'Git',
              ),
              SkillCard(
                logoUrl: 'res/icons/html5_logo.svg',
                name: 'HTML5',
              ),
              SkillCard(
                logoUrl: 'res/icons/css3_logo.svg',
                name: 'CSS3',
              ),
              SkillCard(
                logoUrl: 'res/icons/javascript_logo.svg',
                name: 'JavaScript',
              ),
              SkillCard(
                logoUrl: 'res/icons/react_logo.svg',
                name: 'React.js',
              ),
              SkillCard(
                logoUrl: 'res/icons/nextjs_logo.svg',
                name: 'Next.js',
              ),
              // SkillCard(
              //   logoUrl: 'res/icons/azure_devops_logo.svg',
              //   name: 'Azure Devops',
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
