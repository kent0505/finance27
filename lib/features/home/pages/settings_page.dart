import 'package:flutter/material.dart';

import '../../../core/utils.dart';
import '../../../core/widgets/page_title.dart';

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
      ],
    );
  }
}
