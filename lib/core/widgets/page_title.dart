import 'package:flutter/material.dart';

import 'texts/text_r.dart';

class PageTitle extends StatelessWidget {
  const PageTitle(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextB(title, fontSize: 32),
    );
  }
}
