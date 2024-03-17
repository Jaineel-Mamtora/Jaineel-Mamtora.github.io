import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:jaineel_portfolio/utils/constants.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({
    super.key,
    required this.logoUrl,
    required this.name,
  });

  final String logoUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox.fromSize(
      size: size.width > Constants.maxTabletWidth
          ? const Size(180, 180)
          : size.width > Constants.maxMobileWidth
              ? const Size(150, 150)
              : const Size(120, 120),
      child: Card(
        elevation: 4,
        surfaceTintColor: Colors.transparent,
        shadowColor: Constants.greyScale90,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        margin: const EdgeInsets.all(0.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    bottom: (0.01 * size.height) + (0.005 * size.width)),
                child: Center(
                  child: SvgPicture.asset(
                    logoUrl,
                    width: size.width > Constants.maxTabletWidth
                        ? 81
                        : size.width > Constants.maxMobileWidth
                            ? 67.5
                            : 54,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: (0.015 * size.height) + (0.003 * size.width),
                  fontFamily: Constants.fontInter,
                  color: Constants.greyScale20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
