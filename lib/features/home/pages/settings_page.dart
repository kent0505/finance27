import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/utils.dart';
import '../../../core/widgets/page_title.dart';
import '../../../core/widgets/texts/text_r.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 46 + getStatusBar(context)),
        const PageTitle('Settings'),
        const SizedBox(height: 43),
        const _Tile(
          id: 1,
          title: 'Terms of use',
        ),
        const SizedBox(height: 16),
        const _Tile(
          id: 2,
          title: 'Privacy Policy',
        ),
        const SizedBox(height: 16),
        const _Tile(
          id: 3,
          title: 'Support page',
        ),
        const SizedBox(height: 16),
        const _Tile(
          id: 4,
          title: 'Share with friends',
        ),
        const SizedBox(height: 16),
        const _Tile(
          id: 5,
          title: 'Subscription info',
        ),
      ],
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile({
    required this.id,
    required this.title,
  });

  final int id;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        color: AppColors.navbar,
        borderRadius: BorderRadius.circular(10),
      ),
      child: CupertinoButton(
        onPressed: () {},
        padding: EdgeInsets.zero,
        child: Row(
          children: [
            const SizedBox(width: 18),
            SvgPicture.asset('assets/settings/settings$id.svg'),
            const SizedBox(width: 18),
            Expanded(
              child: TextM(title, fontSize: 16),
            ),
            SvgPicture.asset('assets/settings/arrow-right.svg'),
            const SizedBox(width: 25),
          ],
        ),
      ),
    );
  }
}
