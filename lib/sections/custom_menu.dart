import 'package:flutter/material.dart';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'package:jaineel_portfolio/utils/constants.dart';
import 'package:jaineel_portfolio/widgets/custom_menu_item.dart';

class CustomMenuContent extends StatelessWidget {
  const CustomMenuContent({
    super.key,
    required this.controller,
    required this.scaffoldKey,
  });

  final AutoScrollController controller;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Material(
      elevation: 10,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            if (size.width > Constants.maxTabletWidth)
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 24.0,
                  horizontal: 12.0,
                ),
                child: GestureDetector(
                  onTap: () async {
                    await controller.scrollToIndex(
                      1,
                      preferPosition: AutoScrollPosition.begin,
                      duration: const Duration(milliseconds: 500),
                    );
                    await controller.highlight(1);
                  },
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Jaineel\nMamtora',
                          style: TextStyle(
                            fontFamily: Constants.fontInter,
                            fontWeight: FontWeight.w500,
                            fontSize: 36,
                            height: 1,
                            letterSpacing: 1.2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            'Software Engineer - Mobile',
                            style: TextStyle(
                              fontFamily: Constants.fontInter,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: theme.colorScheme.primary,
                            ),
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            Divider(
              color: Colors.grey.shade300,
              height: 0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.01,
                vertical: size.height * 0.01,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () async {
                      if (size.width < Constants.maxTabletWidth) {
                        scaffoldKey.currentState?.closeDrawer();
                      }
                      await controller.scrollToIndex(
                        2,
                        preferPosition: AutoScrollPosition.begin,
                        duration: const Duration(milliseconds: 500),
                      );
                      await controller.highlight(2);
                    },
                    child: CustomMenuItem(
                      title: 'About',
                      icon: Icon(
                        Icons.person_rounded,
                        color: theme.colorScheme.primary,
                        size: 30,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (size.width < Constants.maxTabletWidth) {
                        scaffoldKey.currentState?.closeDrawer();
                      }
                      await controller.scrollToIndex(
                        3,
                        preferPosition: AutoScrollPosition.begin,
                        duration: const Duration(milliseconds: 500),
                      );
                      await controller.highlight(3);
                    },
                    child: const CustomMenuItem(
                      title: 'Experience',
                      icon: Icon(
                        EvaIcons.trendingUp,
                        color: Colors.lightBlue,
                        size: 30,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (size.width < Constants.maxTabletWidth) {
                        scaffoldKey.currentState?.closeDrawer();
                      }
                      await controller.scrollToIndex(
                        4,
                        preferPosition: AutoScrollPosition.begin,
                        duration: const Duration(milliseconds: 500),
                      );
                      await controller.highlight(4);
                    },
                    child: CustomMenuItem(
                      title: 'Projects',
                      icon: SvgPicture.asset(
                        'res/icons/projects.svg',
                        height: 30,
                        colorFilter: const ColorFilter.mode(
                          Colors.teal,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (size.width < Constants.maxTabletWidth) {
                        scaffoldKey.currentState?.closeDrawer();
                      }
                      await controller.scrollToIndex(
                        5,
                        preferPosition: AutoScrollPosition.begin,
                        duration: const Duration(milliseconds: 500),
                      );
                      await controller.highlight(5);
                    },
                    child: const CustomMenuItem(
                      title: 'Skills',
                      icon: Icon(
                        Icons.equalizer,
                        color: Colors.purple,
                        size: 30,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (size.width < Constants.maxTabletWidth) {
                        scaffoldKey.currentState?.closeDrawer();
                      }
                      await controller.scrollToIndex(
                        6,
                        preferPosition: AutoScrollPosition.begin,
                        duration: const Duration(milliseconds: 500),
                      );
                      await controller.highlight(6);
                    },
                    child: const CustomMenuItem(
                      title: 'Awards',
                      icon: Icon(
                        Icons.star_rounded,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (size.width < Constants.maxTabletWidth) {
                        scaffoldKey.currentState?.closeDrawer();
                      }
                      await controller.scrollToIndex(
                        7,
                        preferPosition: AutoScrollPosition.begin,
                        duration: const Duration(milliseconds: 500),
                      );
                      await controller.highlight(7);
                    },
                    child: const CustomMenuItem(
                      title: 'Contact',
                      icon: Icon(
                        Icons.email_rounded,
                        color: Colors.brown,
                        size: 30,
                      ),
                    ),
                  ),
                  CustomMenuItem(
                    title: 'Resume',
                    icon: Icon(
                      MdiIcons.fileDocument,
                      color: Colors.black87,
                      size: 30,
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
