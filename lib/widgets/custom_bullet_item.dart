import 'package:flutter/material.dart';

import 'package:jaineel_portfolio/utils/constants.dart';

class CustomBulletItem extends StatelessWidget {
  const CustomBulletItem({
    super.key,
    required this.pointer,
  });

  final String pointer;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: (0.02 * size.height) + (0.01 * size.width),
            top: (0.008 * size.height) + (0.0007 * size.width),
          ),
          child: Icon(
            Icons.circle,
            size: (0.009 * size.height) + (0.002 * size.width),
          ),
        ),
        Expanded(
          child: SelectableText(
            pointer,
            style: TextStyle(
              fontSize: (0.017 * size.height) + (0.002 * size.width),
              fontFamily: Constants.fontInter,
              fontWeight: FontWeight.w500,
              color: Constants.greyScale20,
            ),
          ),
        ),
      ],
    );
  }
}
