import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeBlack90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyLargeBlack9000116 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 16.fSize,
      );
  static get bodyLargeBlack90001_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray40016 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray40001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray40001,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray40002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray40002,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray50005 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50005,
      );
  static get bodyLargeGray60001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyLargeGray6000116 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60001,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray60004 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60004,
      );
  static get bodyLargeGray60005 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60005,
      );
  static get bodyLargeGray6000516 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60005,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray60006 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60006,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray80001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyLargeHelveticaGray40003 =>
      theme.textTheme.bodyLarge!.helvetica.copyWith(
        color: appTheme.gray40003,
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get bodyMediumBluegray40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodyMediumBluegray40002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40002,
      );
  static get bodyMediumGray50002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50002,
      );
  static get bodyMediumGray50004 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50004.withOpacity(0.53),
      );
  static get bodyMediumGray50004_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50004,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyMediumGray60003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60003,
      );
  static get bodyMediumGray60006 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60006,
      );
  static get bodyMediumGray70001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70001,
      );
  static get bodyMediumGray80002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80002,
      );
  static get bodyMediumHelveticaOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.helvetica.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumOnSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyMediumPoppinsGray50002 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray50002,
      );
  static get bodyMediumTeal400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.teal400,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  // Display text style
  static get displayMediumBlack900 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get displayMediumLime500 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.lime500,
        fontWeight: FontWeight.w300,
      );
  static get displayMediumLime500Light =>
      theme.textTheme.displayMedium!.copyWith(
        color: appTheme.lime500,
        fontWeight: FontWeight.w300,
      );
  // Headline text style
  static get headlineMediumBlack900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 28.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineMediumGray80001 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray80001,
        fontSize: 28.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumLime500 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.lime500,
        fontSize: 28.fSize,
        fontWeight: FontWeight.w300,
      );
  static get headlineMediumLime500Light =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.lime500,
        fontSize: 28.fSize,
        fontWeight: FontWeight.w300,
      );
  static get headlineMediumPrimary => theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 28.fSize,
      );
  static get headlineSmallTeal40001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.teal40001,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimary_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Montserrat text style
  static get montserratGray30001 => TextStyle(
        color: appTheme.gray30001,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).montserrat;
  // Title text style
  static get titleLarge20 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
      );
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBlack90001SemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBlack90001SemiBold_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBlack90001SemiBold_2 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeDeeporangeA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.deepOrangeA700,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeGray80001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray80001,
      );
  static get titleLargeGray8000120 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray80001,
        fontSize: 20.fSize,
      );
  static get titleLargeGray80001SemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeGray80001SemiBold20 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray80001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimaryRegular => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimarySemiBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumBlack9000116 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 16.fSize,
      );
  static get titleMediumBlack90001_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray60002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60002,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray70002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray70002,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray700c6 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700C6,
        fontSize: 16.fSize,
      );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get titleMediumGray80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray8000116 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80001,
        fontSize: 16.fSize,
      );
  static get titleMediumGray80001Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGreen30099 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green30099,
        fontSize: 16.fSize,
      );
  static get titleMediumHelveticaGray80001 =>
      theme.textTheme.titleMedium!.helvetica.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumHelveticaOnPrimaryContainer =>
      theme.textTheme.titleMedium!.helvetica.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMicrosoftNewTaiLueGray80001 =>
      theme.textTheme.titleMedium!.microsoftNewTaiLue.copyWith(
        color: appTheme.gray80001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMediumOnPrimaryContainer16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get titleMediumOnPrimaryContainerBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray50002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50002,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray50004 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50004,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray80001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimarySemiBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimarySemiBold_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get helvetica {
    return copyWith(
      fontFamily: 'Helvetica',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get microsoftNewTaiLue {
    return copyWith(
      fontFamily: 'Microsoft New Tai Lue',
    );
  }
}
