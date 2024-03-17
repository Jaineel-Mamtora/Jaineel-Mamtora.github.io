import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:jaineel_portfolio/utils/constants.dart';

class ContactItem extends StatefulWidget {
  const ContactItem({
    super.key,
    required this.icon,
    required this.linkAddress,
    required this.linkText,
  });

  final Widget icon;
  final String linkAddress;
  final String linkText;

  @override
  State<ContactItem> createState() => _ContactItemState();
}

class _ContactItemState extends State<ContactItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Flex(
      direction: size.width <= Constants.maxMobileWidth
          ? Axis.vertical
          : Axis.horizontal,
      children: [
        FloatingActionButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          elevation: 4,
          onPressed: () async => await launchUrl(
            Uri.parse(
              widget.linkAddress,
            ),
            mode: LaunchMode.externalApplication,
          ),
          splashColor: Constants.secondaryColor,
          backgroundColor: Constants.secondaryColor,
          hoverColor: Constants.secondaryColor,
          child: widget.icon,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (_) => setState(() => _isHovered = true),
          onExit: (_) => setState(() => _isHovered = false),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: GestureDetector(
              onTap: () => () async => await launchUrl(
                    Uri.parse(
                      widget.linkAddress,
                    ),
                    mode: LaunchMode.externalApplication,
                  ),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: _isHovered
                          ? theme.colorScheme.primary
                          : Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 4.0,
                    top: size.width <= Constants.maxMobileWidth ? 12 : 0,
                  ),
                  child: Text(
                    widget.linkText,
                    style: TextStyle(
                      fontSize: (0.018 * size.height) + (0.005 * size.width),
                      color: theme.colorScheme.primary,
                      fontFamily: Constants.fontInter,
                      fontWeight: FontWeight.w500,
                    ),
                    softWrap: true,
                  ),
                ),
              ),
            ),
          ),
        ),
        // MouseRegion(
        //   cursor: SystemMouseCursors.click,
        //   onEnter: (_) => setState(() => _isHovered = true),
        //   onExit: (_) => setState(() => _isHovered = false),
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 24.0),
        //     child: RichText(
        //       text: TextSpan(
        //         mouseCursor: SystemMouseCursors.click,
        //         text: widget.linkText,
        //         recognizer: TapGestureRecognizer()
        //           ..onTap = () async => await launchUrl(
        //                 Uri.parse(
        //                   widget.linkAddress,
        //                 ),
        //                 mode: LaunchMode.externalApplication,
        //               ),
        //         style: TextStyle(
        //           fontSize: 16.0,
        //           color: theme.colorScheme.primary,
        //           fontFamily: Constants.fontInter,
        //           fontWeight: FontWeight.w500,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
