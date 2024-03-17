import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:jaineel_portfolio/widgets/custom_header.dart';
import 'package:jaineel_portfolio/widgets/experience_card.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomHeader(title: 'EXPERIENCE'),
        Padding(
          padding: EdgeInsets.only(
            top: (0.04 * size.height) + (0.02 * size.width),
          ),
          child: ExperienceCard(
            logo: SvgPicture.asset(
              'res/icons/aza_logo.svg',
              height: (0.02 * size.height) + (0.003 * size.width),
            ),
            companyName: 'Aza Fashions',
            companyNameColor: const Color(0xFFBC3D19),
            designation: 'Mobile Application Engineer',
            aboutCompany:
                'Your Luxury Designer Destination for Online Shopping',
            pointers: const [
              'Enhanced various landing pages by implementing '
                  'pixel-perfect user interface design.',
              'Successfully implemented & launched video '
                  'reels, resulting in a 12% boost in user engagement; '
                  'used concepts on managing caching, content delivery '
                  'network, video codecs, & compression.'
            ],
            tenure: 'Nov 2023 - Present',
            companyLocation: 'Mumbai, Maharashtra',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: (0.04 * size.height) + (0.02 * size.width),
          ),
          child: ExperienceCard(
            logo: SvgPicture.asset(
              'res/icons/tcs_logo.svg',
              height: (0.025 * size.height) + (0.003 * size.width),
            ),
            companyName: 'Tata Consultancy Services',
            companyNameColor: const Color(0xFF027dc5),
            designation: 'Software Engineer - Flutter',
            aboutCompany: 'Tata Neu - Your Superapp From the Tata Group',
            pointers: const [
              'Was responsible for the first Flutter release of Payments module on Google Play Store (4.0.0).',
              'Implemented Embedded Progressive Web apps using WebViews & platform channels, achieving a reduction in the development timeline by approximately 55-62%.',
              'Conducted workshops for a team of 40+ associates on android coding guidelines, Flutter, DevTools, & Sanity.io.',
            ],
            tenure: 'Jul 2021 - Oct 2023',
            companyLocation: 'Mumbai, Maharashtra',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: (0.04 * size.height) + (0.02 * size.width),
            bottom: (0.04 * size.height) + (0.02 * size.width),
          ),
          child: ExperienceCard(
            logo: SvgPicture.asset(
              'res/icons/powerplay_logo.svg',
              height: (0.032 * size.height) + (0.003 * size.width),
            ),
            companyName: 'Powerplay',
            companyNameColor: const Color(0xFF1846bb),
            designation: 'Flutter Developer Intern',
            aboutCompany:
                'Transforming the Construction Industry with Smart Technology',
            pointers: const [
              'Developed an iOS App that tracked on-site progress of construction.',
              'Implemented MVVM architecture for better abstraction of code to communicate with back-end using REST APIs.',
              'Added push notifications functionality with support for long texts and images.',
            ],
            tenure: 'Nov 2020 - Dec 2020',
            companyLocation: 'Bangalore, Karnataka (Remote)',
          ),
        ),
      ],
    );
  }
}
