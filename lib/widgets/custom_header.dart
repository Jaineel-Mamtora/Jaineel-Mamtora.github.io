import 'package:flutter/material.dart';

import 'package:jaineel_portfolio/utils/constants.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Container(
      alignment: Alignment.centerLeft,
      height: (0.1 * size.height) + (0.01 * size.width),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (0.025 * size.height) + 0.01 * (size.width),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: (0.025 * size.height) + (0.01 * size.width),
            fontFamily: Constants.fontInter,
            fontWeight: FontWeight.w300,
            letterSpacing: 4,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
