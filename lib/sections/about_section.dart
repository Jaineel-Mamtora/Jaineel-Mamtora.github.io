import 'package:flutter/material.dart';

import 'package:jaineel_portfolio/utils/constants.dart';
import 'package:jaineel_portfolio/widgets/custom_header.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CustomHeader(title: 'ABOUT'),
        Padding(
          padding: EdgeInsets.only(
            top: (0.04 * size.height) + (0.02 * size.width),
            left: (0.04 * size.height) + (0.02 * size.width),
            right: (0.04 * size.height) + (0.02 * size.width),
            bottom: (0.07 * size.height) + (0.02 * size.width),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: (0.02 * size.height) + (0.01 * size.width),
                ),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          right: (0.01 * size.height) + (0.01 * size.width),
                        ),
                        color: const Color(0xFFDCA11D),
                        width: (0.005 * size.height) + (0.002 * size.width),
                      ),
                      Expanded(
                        child: SelectableText(
                          'Seasoned Mobile App Engineer Passionate About '
                          'Crafting Seamless Experiences',
                          style: TextStyle(
                            fontSize:
                                (0.02 * size.height) + (0.01 * size.width),
                            fontFamily: Constants.fontInter,
                            fontWeight: FontWeight.w500,
                            color: Constants.secondaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: (0.02 * size.height) + (0.01 * size.width),
                ),
                child: SelectableText(
                  'I\'m Jaineel Mamtora, a seasoned mobile app engineer specializing '
                  'in Flutter development. Over the years, I\'ve honed my skills in '
                  'crafting seamless user experiences and optimizing app performance. '
                  'With expertise in Dart, Kotlin, and Java, I deliver top-notch '
                  'solutions that exceed expectations, pushing the boundaries of '
                  'mobile technology.',
                  style: TextStyle(
                    fontSize: (0.018 * size.height) + (0.004 * size.width),
                    fontWeight: FontWeight.w400,
                    fontFamily: Constants.fontInter,
                    height: 1.5,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: (0.03 * size.height) + (0.01 * size.width),
                ),
                child: SelectableText(
                  'My journey is marked by a dedication to innovation and '
                  'excellence, focusing on user-centric designs and cutting-'
                  'edge features. I\'m driven to make impactful contributions '
                  'to the world of mobile app development, ensuring every app '
                  'I work on stands out in the digital landscape.',
                  style: TextStyle(
                    fontSize: (0.018 * size.height) + (0.004 * size.width),
                    fontFamily: Constants.fontInter,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
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
