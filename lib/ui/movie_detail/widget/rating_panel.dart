import 'package:cinebox/ui/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class RatingPanel extends StatelessWidget {
  final double voteAverage;
  final int voteCount;

  const RatingPanel({
    super.key,
    required this.voteAverage,
    required this.voteCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Avaliação',
          style: AppTextStyles.boldMedium,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          voteAverage.toStringAsFixed(2),
          style: AppTextStyles.boldLarge.copyWith(fontSize: 44),
        ),
        Text(
          'Total de $voteCount avaliações',
          style: AppTextStyles.lightGreySmall,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
