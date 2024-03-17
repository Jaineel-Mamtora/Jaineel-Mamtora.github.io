import 'package:flutter/material.dart';

import 'package:jaineel_portfolio/utils/constants.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Container(
      height: size.width < Constants.maxTabletWidth
          ? size.height - 65
          : size.height,
      color: const Color(0xFF1E1E1E),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: (0.03 * size.height) + 0.01 * (size.width),
              left: size.width > Constants.maxMobileWidth
                  ? (0.03 * size.height) + 0.01 * (size.width)
                  : 8.0,
              right: size.width <= Constants.maxMobileWidth ? 8.0 : 0,
            ),
            child: SizedBox(
              width: size.width > Constants.maxMobileWidth
                  ? size.width * 0.6
                  : size.width,
              child: RichText(
                text: TextSpan(
                  text: 'Want to develop ',
                  style: TextStyle(
                    color: Constants.almostWhite,
                    fontFamily: Constants.fontInter,
                    fontSize: (0.03 * size.height) + 0.02 * (size.width),
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                      text: 'Mobile apps',
                      style: TextStyle(
                        color: Constants.almostWhite,
                        fontFamily: Constants.fontInter,
                        fontSize: (0.03 * size.height) + 0.02 * (size.width),
                        shadows: const [
                          BoxShadow(
                            color: Color(0xFF1E1E1E),
                            spreadRadius: 3,
                            blurRadius: 6,
                          )
                        ],
                        height: 1.5,
                        backgroundColor: theme.colorScheme.primary,
                      ),
                    ),
                    TextSpan(
                      text: ' that ',
                      style: TextStyle(
                        color: Constants.almostWhite,
                        fontFamily: Constants.fontInter,
                        fontSize: (0.03 * size.height) + 0.02 * (size.width),
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: 'make a difference',
                      style: TextStyle(
                        color: Constants.almostWhite,
                        fontFamily: Constants.fontInter,
                        fontSize: (0.03 * size.height) + 0.02 * (size.width),
                        decorationColor: theme.colorScheme.primary,
                        decoration: TextDecoration.underline,
                        decorationThickness: 1.5,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: '.',
                      style: TextStyle(
                        color: Constants.almostWhite,
                        fontFamily: Constants.fontInter,
                        fontSize: (0.03 * size.height) + 0.02 * (size.width),
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
                textAlign: size.width <= Constants.maxMobileWidth
                    ? TextAlign.center
                    : TextAlign.left,
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              'res/images/jaineel.png',
              height: (0.6 * size.height) + 0.15 * (size.width),
              // fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
