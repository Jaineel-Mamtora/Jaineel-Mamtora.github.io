import 'package:flutter/material.dart';

import 'package:jaineel_portfolio/utils/constants.dart';
import 'package:jaineel_portfolio/widgets/custom_bullet_item.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    super.key,
    required this.logo,
    required this.companyName,
    required this.companyNameColor,
    required this.designation,
    required this.aboutCompany,
    required this.pointers,
    required this.tenure,
    required this.companyLocation,
  });

  final Widget logo;
  final String companyName;
  final Color companyNameColor;
  final String designation;
  final String aboutCompany;
  final List<String> pointers;
  final String tenure;
  final String companyLocation;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Card(
      surfaceTintColor: Colors.transparent,
      elevation: 4,
      shadowColor: Constants.greyScale90,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
        side: const BorderSide(
          color: Constants.greyScale90,
        ),
      ),
      child: SizedBox(
        width: (0.24 * size.height) + (0.4 * size.width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: (0.02 * size.height) + (0.01 * size.width),
                horizontal: (0.02 * size.height) + (0.01 * size.width),
              ),
              child: Flex(
                direction: size.width <= Constants.maxMobileWidth
                    ? Axis.vertical
                    : Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: size.width <= Constants.maxMobileWidth
                          ? (0.008 * size.height) + (0.005 * size.width)
                          : 0,
                    ),
                    child: logo,
                  ),
                  if (size.width > Constants.minDesktopWidth)
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: size.width <= Constants.maxMobileWidth
                            ? (0.01 * size.height) + (0.005 * size.width)
                            : 0,
                      ),
                      child: Text(
                        companyName,
                        style: TextStyle(
                          fontSize: (0.02 * size.height) + (0.003 * size.width),
                          color: companyNameColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  Text(
                    designation,
                    style: TextStyle(
                      fontSize: (0.02 * size.height) + (0.003 * size.width),
                      fontFamily: Constants.fontInter,
                      fontWeight: FontWeight.w500,
                      color: Constants.greyScale20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: (0.02 * size.height) + (0.01 * size.width),
              ),
              child: const Divider(
                color: Colors.black26,
                height: 0,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: (0.02 * size.height) + (0.01 * size.width),
                horizontal: (0.02 * size.height) + (0.01 * size.width),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: (0.02 * size.height) + (0.01 * size.width),
                    ),
                    child: SelectableText(
                      aboutCompany,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: (0.018 * size.height) + (0.002 * size.width),
                        fontFamily: Constants.fontInter,
                        fontWeight: FontWeight.w600,
                        color: Constants.greyScale40,
                      ),
                    ),
                  ),
                  ListView.separated(
                    padding: EdgeInsets.only(
                      bottom: (0.04 * size.height) + (0.01 * size.width),
                    ),
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
                  SelectableText(
                    '$tenure | $companyLocation',
                    style: TextStyle(
                      fontSize: (0.014 * size.height) + (0.001 * size.width),
                      fontFamily: Constants.fontInter,
                      fontWeight: FontWeight.w500,
                      color: Constants.greyScale40,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
