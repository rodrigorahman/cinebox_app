import 'package:cinebox/ui/core/themes/colors.dart';
import 'package:flutter/cupertino.dart';

abstract final class AppTextStyles {
  static const titleLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static const subtitleSmall = TextStyle(
    fontSize: 14,
    color: AppColors.lightGrey,
  );

  static const regularSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const boldSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static const boldMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const semiBoldMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const boldLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const lightGreyRegular = TextStyle(
    fontSize: 14,
    color: AppColors.lightGrey,
  );

  static const lightGreySmall = TextStyle(
    fontSize: 12,
    color: AppColors.lightGrey,
  );

  static const errorText = TextStyle(
    color: AppColors.redColor,
  );
}
