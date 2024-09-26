import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/models/money.dart';
import '../../../core/widgets/texts/text_r.dart';

class MoneyCard extends StatelessWidget {
  const MoneyCard({super.key, required this.money});

  final Money money;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 6),
        SvgPicture.asset(
          money.income ? 'assets/income1.svg' : 'assets/income2.svg',
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Container(
            height: 74,
            decoration: BoxDecoration(
              color: AppColors.card1,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const SizedBox(width: 19),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextR(money.title, fontSize: 16),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: AppColors.navbar,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: TextR(
                                money.category,
                                fontSize: 14,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Container(
                            height: 20,
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: AppColors.navbar,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: TextR(
                                money.income ? 'Income' : 'Expense',
                                fontSize: 14,
                                color: AppColors.white50,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                TextR('\$${money.amount}', fontSize: 18),
                const SizedBox(width: 14),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
