import 'package:flutter/material.dart';

import '../../../core/utils.dart';
import '../../../core/widgets/page_title.dart';

class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 46 + getStatusBar(context)),
        const PageTitle('Activities'),
        const SizedBox(height: 43),
      ],
    );
  }
}
