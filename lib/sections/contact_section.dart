import 'package:flutter/material.dart';
import 'package:jaineel_portfolio/utils/constants.dart';
import 'package:jaineel_portfolio/widgets/contact_item.dart';
import 'package:jaineel_portfolio/widgets/custom_header.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.width < Constants.maxTabletWidth
          ? size.height - 65
          : size.height,
      child: Column(
        children: [
          const CustomHeader(title: 'CONTACT'),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: (0.02 * size.height) + (0.01 * size.width),
              horizontal: (0.02 * size.height) + (0.01 * size.width),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ContactItem(
                  icon: Icon(
                    MdiIcons.emailVariant,
                    color: Colors.white,
                    size: 30,
                  ),
                  linkAddress: 'mailto:jaineelmamtora99@gmail.com',
                  linkText: 'jaineelmamtora99@gmail.com',
                ),
                const SizedBox(height: 20),
                ContactItem(
                  icon: Icon(
                    MdiIcons.github,
                    color: Colors.white,
                    size: 30,
                  ),
                  linkAddress: 'https://github.com/Jaineel-Mamtora',
                  linkText: 'github.com/Jaineel-Mamtora',
                ),
                const SizedBox(height: 20),
                ContactItem(
                  icon: Icon(
                    MdiIcons.linkedin,
                    color: Colors.white,
                    size: 30,
                  ),
                  linkAddress: 'https://www.linkedin.com/in/jaineel-mamtora',
                  linkText: 'linkedin.com/in/jaineel-mamtora',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
