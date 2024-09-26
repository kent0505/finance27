import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/texts/text_r.dart';

class TotalBalanceCard extends StatelessWidget {
  const TotalBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      margin: const EdgeInsets.symmetric(horizontal: 22),
      decoration: BoxDecoration(
        color: AppColors.card1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          SvgPicture.asset(
            'assets/wave.svg',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Row(
            children: [
              const SizedBox(width: 15),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    TextR('Total Balance', fontSize: 16),
                    Spacer(),
                    TextM('\$31,893.00', fontSize: 32),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SvgPicture.asset('assets/wallet.svg'),
              const SizedBox(width: 30),
            ],
          ),
        ],
      ),
    );
  }
}
