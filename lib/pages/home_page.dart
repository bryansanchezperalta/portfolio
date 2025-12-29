import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/tool.dart';
import 'package:portfolio/widgets/cards/experience_card.dart';
import 'package:portfolio/widgets/cards/tool_card.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/rows/additional_experiences_row.dart';
import 'package:portfolio/widgets/rows/education_row.dart';
import 'package:portfolio/widgets/rows/professional_experiences_row.dart';
import 'package:portfolio/widgets/rows/home_projects_row.dart';
import 'package:portfolio/widgets/section.dart';
import 'package:portfolio/models/additional_experience.dart';
import 'package:portfolio/widgets/theme_toggle_button.dart';
import 'package:universal_html/html.dart' as html;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return LayoutBuilder(builder: (context, constraints) {
      final bool isDesktop = constraints.maxWidth >= 700;

      return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            const ThemeToggleButton(),
            SizedBox(width: AppPaddings.medium),
          ],
        ),
        body: ListView(
          controller: scrollController,
          padding: EdgeInsets.only(top: AppPaddings.medium),
          children: [
            //MARK: Header
            isDesktop
                ? _buildDesktopHeader(context, scrollController)
                : _buildMobileHeader(context, scrollController),

            //MARK: Projects
            Padding(
              padding: EdgeInsets.only(top: AppPaddings.medium),
              child: const Section(
                title: 'Projects',
                content: ProjectsRow(),
              ),
            ),
            //MARK: Tools
            Section(
              title: 'Tools',
              content: SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: AppPaddings.medium),
                  children: Tool.values.map((tool) {
                    return ToolCard(tool: tool);
                  }).toList(),
                ),
              ),
            ),
            //MARK: Professional Experiences
            const Section(
              title: 'Professional Experiences',
              content: ProfessionalExperiencesRow(),
            ),
            //MARK: Additional Experiences
            const Section(
              title: 'Additional Experiences',
              content: AdditionalExperiencesRow(),
            ),
            //MARK: Education and training
            const Section(
              title: 'Education and training',
              content: EducationRow(),
            ),
            //MARK Footer
            Footer(scrollController: scrollController),
          ],
        ),
      );
    });
  }

  Widget _buildDesktopHeader(
      BuildContext context, ScrollController controller) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppBorderRadii.small),
              child: Image.asset('profile_image.jpg', height: 200),
            ),
            Container(
              padding: EdgeInsets.only(left: AppPaddings.medium),
              height: 200,
              width: 450,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bryan Sánchez Peralta',
                    style: TextStyle(
                      fontSize: AppFontSizes.xl,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Mobile app developer',
                    style: TextStyle(fontSize: AppFontSizes.medium),
                  ),
                  Flexible(
                    child: Text(
                      'I am a passionate mobile app developer with a strong desire to continue learning and improving my skills.\nExperienced developing both native and hybrid apps.',
                      style: TextStyle(
                        fontSize: AppFontSizes.small,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          ByteData data = await rootBundle.load('cv.pdf');
                          final pdfData = data.buffer.asUint8List();
                          final blob = html.Blob([pdfData], 'application/pdf');
                          final url = html.Url.createObjectUrlFromBlob(blob);
                          html.AnchorElement(href: url)
                            ..target = 'blank'
                            ..download = 'cv.pdf'
                            ..click();
                          html.Url.revokeObjectUrl(url);
                        },
                        child: const Text('Download CV'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: AppPaddings.medium),
                        child: ElevatedButton(
                          onPressed: () {
                            controller.animateTo(
                              controller.position.maxScrollExtent,
                              curve: Curves.easeOut,
                              duration: const Duration(milliseconds: 300),
                            );
                          },
                          child: const Text('Contact'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMobileHeader(BuildContext context, ScrollController controller) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppPaddings.medium),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPaddings.medium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bryan Sánchez Peralta',
                  style: TextStyle(
                    fontSize: AppFontSizes.xl,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Mobile app developer',
                  style: TextStyle(
                    fontSize: AppFontSizes.large,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'I am a passionate mobile app developer with a strong desire to continue learning and improving my skills.\nExperienced developing both native and hybrid apps.',
                  style: TextStyle(
                    fontSize: AppFontSizes.small,
                    overflow: TextOverflow.visible,
                  ),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        ByteData data = await rootBundle.load('cv.pdf');
                        final pdfData = data.buffer.asUint8List();
                        final blob = html.Blob([pdfData], 'application/pdf');
                        final url = html.Url.createObjectUrlFromBlob(blob);
                        html.AnchorElement(href: url)
                          ..target = 'blank'
                          ..download = 'cv.pdf'
                          ..click();
                        html.Url.revokeObjectUrl(url);
                      },
                      child: const Text('Download CV'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: AppPaddings.medium),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.animateTo(
                            controller.position.maxScrollExtent,
                            curve: Curves.easeOut,
                            duration: const Duration(milliseconds: 300),
                          );
                        },
                        child: const Text('Contact'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(AppPaddings.medium),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppBorderRadii.small),
              child: Image.asset('profile_image.jpg', height: 200),
            ),
          ),
        ],
      ),
    );
  }
}
