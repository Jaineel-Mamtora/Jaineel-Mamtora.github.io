import 'package:flutter/material.dart';
import 'package:jaineel_portfolio/utils/constants.dart';

import 'package:provider/provider.dart';

import 'package:jaineel_portfolio/providers/hover_provider.dart';

class CustomMenuItem extends StatelessWidget {
  const CustomMenuItem({
    super.key,
    required this.title,
    this.icon,
  });

  final String title;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HoverProvider(),
      builder: (context, _) {
        final hoverProvider = context.read<HoverProvider>();
        return MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (event) => hoverProvider.isHovered = true,
          onExit: (event) => hoverProvider.isHovered = false,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: context.watch<HoverProvider>().isHovered
                  ? Colors.grey.shade200
                  : Colors.white,
            ),
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (icon != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: icon!,
                  ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Constants.greyScale20,
                    fontFamily: Constants.fontInter,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
