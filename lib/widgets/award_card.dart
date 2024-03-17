import 'package:flutter/material.dart';

import 'package:jaineel_portfolio/utils/constants.dart';
import 'package:jaineel_portfolio/widgets/custom_bullet_item.dart';

class AwardCard extends StatelessWidget {
  const AwardCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.pointers,
  });

  final String title;
  final String subtitle;
  final List<String> pointers;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.all(0.0),
      elevation: 4,
      surfaceTintColor: Colors.transparent,
      shadowColor: Constants.greyScale90,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 20.0,
          bottom: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 8.0,
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: (0.025 * size.height) + (0.005 * size.width),
                  fontFamily: Constants.fontInter,
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 16.0,
              ),
              child: Text(
                subtitle,
                style: TextStyle(
                  fontSize: (0.016 * size.height) + (0.001 * size.width),
                  fontFamily: Constants.fontInter,
                  color: Constants.secondaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ListView.separated(
              padding: const EdgeInsets.only(bottom: 30.0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: pointers.length,
              itemBuilder: (_, index) => CustomBulletItem(
                pointer: pointers[index],
              ),
              separatorBuilder: (_, __) => const SizedBox(
                height: 4.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
