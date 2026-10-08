import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppConstants {
  AppConstants._();

  static const appName = 'CASH COUNTER POS';
  static const appMotto = 'Sell Smarter. Stock Faster. Scale Anywhere.';
  static const moneyIcon = '৳';
  static const currency = 'BDT';
  static const supportEmail = 'support@ccpos.com';

  // DEEP LINKING
  static const host = 'app.variationbd.com';
  static const trustedHosts = {'app.variationbd.com', 'com.variationbd.cash_counter_pos', 'cash_counter_pos.com'};
  static const customScheme = 'cash_counter_pos';

  static final logoPath = 'assets/logos/food_village_logo.svg';
  static final logoLightPath = 'assets/logos/food_village_logo-full-white.svg';

  static const iconSize = 22.0;
  static const buttonHeight = 50.0;
  static const inputFieldHeight = 50.0;
  static const screenMarginPoint = 20.0;
  static const textFieldLabelGapPoint = 3.0;
  static const appbarActionPaddingPoint = 8.0;
  static const textFieldLabelGap = Gap(textFieldLabelGapPoint);

  static const itemGapPoint = 12.0;
  static const listItemGapPoint = 8.0;
  static const listItemGap = Gap(listItemGapPoint);

  static const inputGapPoint = 15.0;
  static const inputGap = Gap(inputGapPoint);
  // static final bottomGap = Gap(Screen.systemNavigationBarHeight(GlobalContext.context));

  static EdgeInsets screenMargin({
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? vertical,
    double? horizontal,
  }) => EdgeInsets.fromLTRB(
    left ?? horizontal ?? screenMarginPoint,
    top ?? vertical ?? 0,
    right ?? horizontal ?? screenMarginPoint,
    bottom ?? vertical ?? 0,
  );

  static EdgeInsets screenMarginHorizontal({
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? vertical,
    double? horizontal,
  }) => EdgeInsets.fromLTRB(
    left ?? horizontal ?? screenMarginPoint,
    top ?? vertical ?? 0,
    right ?? horizontal ?? screenMarginPoint,
    bottom ?? vertical ?? 0,
  );

  static const double borderRadiusPoint = 18;
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(borderRadiusPoint));
  static final RoundedRectangleBorder borderRadiusShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(borderRadiusPoint),
  );
  static const double bottomSheetBorderRadiusPoint = 16;
  // static const BorderRadius bottomSheetBorderRadius = BorderRadius.only(
  //   topLeft: Radius.circular(borderRadiusPointForBottomSheet),
  //   topRight: Radius.circular(borderRadiusPointForBottomSheet),
  // );
  // static const BorderRadius bodyBorderRadius = BorderRadius.only(
  //   topLeft: Radius.circular(borderRadiusPointForBottomSheet),
  //   topRight: Radius.circular(borderRadiusPointForBottomSheet),
  // );
  static final BorderRadius inputBorderRadius = BorderRadius.circular(borderRadiusPoint); // Input Fields, Text fields.
  static final BorderRadius buttonBorderRadius = BorderRadius.circular(borderRadiusPoint);
  static const RoundedRectangleBorder modalShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
  );
  static final double cardBorderRadiusPoint = 12.0;
  static final BorderRadius cardBorder = BorderRadius.circular(cardBorderRadiusPoint);

  static LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [],
  );

  // Animations
  static final animationDuration = Duration(milliseconds: 300);
}
