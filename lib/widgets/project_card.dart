import 'package:flutter/material.dart';

import 'package:jaineel_portfolio/utils/constants.dart';
import 'package:jaineel_portfolio/widgets/custom_bullet_item.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.accomplishments,
    required this.redirectIcon,
  });

  final String imageUrl;
  final String title;
  final String description;
  final List<String> accomplishments;
  final Widget redirectIcon;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _showContainer = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return SizedBox(
      width: 380,
      height: 360,
      child: Card(
        surfaceTintColor: Colors.transparent,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        margin: const EdgeInsets.all(0.0),
        shadowColor: Constants.greyScale90,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4.0),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                    child: Image.asset(
                      widget.imageUrl,
                      height: 215.0,
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  const Divider(
                    color: Constants.greyScale90,
                    thickness: 1,
                    height: 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                      bottom: 12.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                            right: 12.0,
                            bottom: 16.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  widget.title,
                                  style: TextStyle(
                                    fontSize: (0.02 * size.height) +
                                        (0.005 * size.width),
                                    fontFamily: Constants.fontInter,
                                    fontWeight: FontWeight.w400,
                                    color: theme.colorScheme.primary,
                                    letterSpacing: -1,
                                  ),
                                  maxLines: 1,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _showContainer = !_showContainer;
                                  });
                                },
                                icon: Icon(
                                  Icons.info_outline_rounded,
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            widget.description,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize:
                                  (0.016 * size.height) + (0.001 * size.width),
                              fontFamily: Constants.fontInter,
                              color: Constants.greyScale20,
                              fontStyle: FontStyle.italic,
                            ),
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
                bottom: _showContainer ? 0 : -370,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  width: 400,
                  height: 370,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24.0,
                          right: 14.0,
                          top: 30.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'Acomplishments',
                                style: TextStyle(
                                  fontSize: (0.02 * size.height) +
                                      (0.005 * size.width),
                                  fontFamily: Constants.fontInter,
                                  fontWeight: FontWeight.w300,
                                  color: Constants.secondaryColor,
                                ),
                                maxLines: 1,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  _showContainer = !_showContainer;
                                });
                              },
                              icon: const Icon(
                                Icons.close_rounded,
                                color: Constants.secondaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListView.separated(
                        padding: const EdgeInsets.only(
                          left: 24.0,
                          right: 20.0,
                          top: 24.0,
                        ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.accomplishments.length,
                        itemBuilder: (_, index) => CustomBulletItem(
                          pointer: widget.accomplishments[index],
                        ),
                        separatorBuilder: (_, __) => const SizedBox(
                          height: 4.0,
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 16.0,
                        ),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: widget.redirectIcon,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
