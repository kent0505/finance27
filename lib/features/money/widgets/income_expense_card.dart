import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/texts/text_r.dart';

class IncomeExpenseCard extends StatelessWidget {
  const IncomeExpenseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(width: 22),
        _Card(
          title: 'Income',
          asset: 'assets/income1.svg',
          amount: 200,
        ),
        SizedBox(width: 8),
        _Card(
          title: 'Expense',
          asset: 'assets/income2.svg',
          amount: 300,
        ),
        SizedBox(width: 22),
      ],
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({
    required this.title,
    required this.asset,
    required this.amount,
  });

  final String title;
  final String asset;
  final int amount;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          SvgPicture.asset(asset),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              height: 34,
              decoration: BoxDecoration(
                color: AppColors.card1,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextL(title, fontSize: 10),
                  TextM('\$ $amount', fontSize: 14),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
