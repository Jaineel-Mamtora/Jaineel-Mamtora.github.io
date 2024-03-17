import 'package:flutter/material.dart';

import 'package:scroll_to_index/scroll_to_index.dart';

import 'package:jaineel_portfolio/sections/about_section.dart';
import 'package:jaineel_portfolio/sections/awards_section.dart';
import 'package:jaineel_portfolio/sections/contact_section.dart';
import 'package:jaineel_portfolio/sections/custom_menu.dart';
import 'package:jaineel_portfolio/sections/experience_section.dart';
import 'package:jaineel_portfolio/sections/projects_section.dart';
import 'package:jaineel_portfolio/sections/skills_section.dart';
import 'package:jaineel_portfolio/sections/top_section.dart';
import 'package:jaineel_portfolio/utils/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MediaQuery(
        data: data.copyWith(
          textScaler: TextScaler.noScaling,
        ),
        child: MaterialApp(
          title: 'Jaineel\'s Portfolio',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            fontFamily: Constants.fontInter,
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AutoScrollController controller;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: Axis.vertical,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Scaffold(
      key: _key,
      backgroundColor: Constants.almostWhite,
      appBar: size.width <= Constants.maxTabletWidth
          ? AppBar(
              automaticallyImplyLeading: true,
              leading: IconButton(
                onPressed: () => _key.currentState!.openDrawer(),
                icon: Icon(
                  Icons.menu_rounded,
                  color: theme.colorScheme.primary,
                  size: 32,
                ),
              ),
              toolbarHeight: 65,
              centerTitle: true,
              title: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
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
                      child: Text(
                        'Jaineel Mamtora',
                        style: TextStyle(
                          color: theme.colorScheme.primary,
                          fontFamily: Constants.fontInter,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Software Engineer - Mobile',
                    style: TextStyle(
                      color: Constants.greyScale20,
                      fontFamily: Constants.fontInter,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            )
          : null,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (size.width > Constants.maxTabletWidth)
            Expanded(
              flex: 3,
              child: CustomMenuContent(
                scaffoldKey: _key,
                controller: controller,
              ),
            ),
          Content(
            controller: controller,
          ),
        ],
      ),
      drawer: Drawer(
        width: 200,
        shape: const RoundedRectangleBorder(),
        child: CustomMenuContent(
          scaffoldKey: _key,
          controller: controller,
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
    required this.controller,
  });

  final AutoScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 15,
      child: SingleChildScrollView(
        controller: controller,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AutoScrollTag(
              controller: controller,
              key: const ValueKey(1),
              index: 1,
              child: const TopSection(),
            ),
            AutoScrollTag(
              controller: controller,
              key: const ValueKey(2),
              index: 2,
              child: const AboutSection(),
            ),
            AutoScrollTag(
              controller: controller,
              key: const ValueKey(3),
              index: 3,
              child: const ExperienceSection(),
            ),
            AutoScrollTag(
              controller: controller,
              key: const ValueKey(4),
              index: 4,
              child: const ProjectsSection(),
            ),
            AutoScrollTag(
              controller: controller,
              key: const ValueKey(5),
              index: 5,
              child: const SkillsSection(),
            ),
            AutoScrollTag(
              controller: controller,
              key: const ValueKey(6),
              index: 6,
              child: const AwardsSection(),
            ),
            AutoScrollTag(
              controller: controller,
              key: const ValueKey(7),
              index: 7,
              child: const ContactSection(),
            ),
          ],
        ),
      ),
    );
  }
}
