import 'package:flutter/material.dart';

import 'package:jaineel_portfolio/utils/constants.dart';
import 'package:jaineel_portfolio/widgets/award_card.dart';
import 'package:jaineel_portfolio/widgets/custom_header.dart';

class AwardsSection extends StatelessWidget {
  const AwardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        const CustomHeader(title: 'AWARDS'),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Flex(
            direction: size.width < Constants.minDesktopWidth
                ? Axis.vertical
                : Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: (0.02 * size.height) + (0.01 * size.width),
                ),
                child: SizedBox(
                  width: (0.45 * size.height) + (0.1 * size.width),
                  child: const AwardCard(
                    title: '1st Position',
                    subtitle: 'Chitkara University | NOVATE+ | June 2020',
                    pointers: [
                      'Secured 1st prize in NOVATE+ (National Level '
                          'Project Competition against COVID19)',
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: (0.02 * size.height) + (0.01 * size.width),
                ),
                child: SizedBox(
                  width: (0.45 * size.height) + (0.1 * size.width),
                  child: const AwardCard(
                    title: '3rd Position',
                    subtitle: 'Smart India Hackathon | August 2020',
                    pointers: [
                      'Secured 3rd place in Smart India Hackathon '
                          'among 50+ teams across India (ISRO)',
                    ],
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
