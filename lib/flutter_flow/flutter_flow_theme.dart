// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) {
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color customColor1;
  late Color customColor2;
  late Color customColor3;
  late Color customColor4;
  late Color customColor5;
  late Color customColor6;
  late Color customColor7;
  late Color customColor8;
  late Color customColor9;
  late Color customColor10;
  late Color customColor11;
  late Color customColor12;
  late Color customColor13;
  late Color customColor14;
  late Color customColor15;
  late Color customColor16;
  late Color customColor17;
  late Color customColor18;
  late Color customColor19;
  late Color customColor20;
  late Color customColor21;
  late Color customColor22;
  late Color customColor23;
  late Color customColor24;
  late Color customColor25;
  late Color customColor26;
  late Color customColor27;
  late Color customColor28;
  late Color customColor29;
  late Color customColor30;
  late Color customColor31;
  late Color customColor32;
  late Color customColor33;
  late Color customColor34;
  late Color customColor35;
  late Color customColor36;
  late Color customColor37;
  late Color customColor38;
  late Color customColor39;
  late Color customColor40;
  late Color customColor41;
  late Color customColor42;
  late Color customColor43;
  late Color customColor44;
  late Color customColor45;
  late Color customColor46;
  late Color customColor47;
  late Color customColor48;
  late Color customColor49;
  late Color customColor50;
  late Color customColor51;
  late Color customColor52;
  late Color customColor53;
  late Color customColor54;
  late Color customColor55;
  late Color customColor56;
  late Color customColor57;
  late Color customColor58;
  late Color customColor59;
  late Color customColor60;
  late Color customColor61;
  late Color customColor62;
  late Color customColor63;
  late Color customColor64;
  late Color customColor65;
  late Color customColor66;
  late Color customColor67;
  late Color customColor68;
  late Color customColor69;
  late Color customColor70;
  late Color customColor71;
  late Color customColor72;
  late Color customColor73;
  late Color customColor74;
  late Color customColor75;
  late Color customColor76;
  late Color customColor77;
  late Color customColor78;
  late Color customColor79;
  late Color customColor80;
  late Color customColor81;
  late Color customColor82;
  late Color customColor83;
  late Color customColor84;
  late Color customColor85;
  late Color customColor86;
  late Color customColor87;
  late Color customColor88;
  late Color customColor89;
  late Color customColor90;
  late Color customColor91;
  late Color customColor92;
  late Color customColor93;
  late Color customColor94;
  late Color customColor95;
  late Color customColor96;
  late Color customColor97;
  late Color customColor98;
  late Color customColor99;
  late Color customColor100;
  late Color jobSucces;
  late Color customColor101;
  late Color customColor102;
  late Color customColor103;
  late Color customColor104;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF4B39EF);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFFE0E3E7);
  late Color primaryText = const Color(0xFF000000);
  late Color secondaryText = const Color(0xFF57636C);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFFEBF2FE);
  late Color accent2 = const Color(0xFFB2A694);
  late Color accent3 = const Color(0xFFDBEAFE);
  late Color accent4 = const Color(0xCCFFFFFF);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);

  late Color customColor1 = Color(0xFF22C55E);
  late Color customColor2 = Color(0xFFE8F9EF);
  late Color customColor3 = Color(0xFFF6EEFE);
  late Color customColor4 = Color(0xFFFEF1E7);
  late Color customColor5 = Color(0xFFF9FAFB);
  late Color customColor6 = Color(0xFFE4E4E7);
  late Color customColor7 = Color(0xFF71717A);
  late Color customColor8 = Color(0xFFF3F4F6);
  late Color customColor9 = Color(0xFF9A3412);
  late Color customColor10 = Color(0xFFC1042B);
  late Color customColor11 = Color(0xFFF1E7FE);
  late Color customColor12 = Color(0xFF6B21A8);
  late Color customColor13 = Color(0xFF0FDC19);
  late Color customColor14 = Color(0xFF1056EC);
  late Color customColor15 = Color(0xFFF9FAFB);
  late Color customColor16 = Color(0xFFDBEAFE);
  late Color customColor17 = Color(0xFF0771C9);
  late Color customColor18 = Color(0xFF166534);
  late Color customColor19 = Color(0xFF1F2937);
  late Color customColor20 = Color(0xFFFEF9C3);
  late Color customColor21 = Color(0xFF854D0E);
  late Color customColor22 = Color(0xFFF3E8FF);
  late Color customColor23 = Color(0xFF9333EA);
  late Color customColor24 = Color(0xFF6B7280);
  late Color customColor25 = Color(0xFFF9FAFB);
  late Color customColor26 = Color(0xFFEF4444);
  late Color customColor27 = Color(0xFFF9F9FA);
  late Color customColor28 = Color(0xFF1F2937);
  late Color customColor29 = Color(0xFF854D0E);
  late Color customColor30 = Color(0xFFFFFBEB);
  late Color customColor31 = Color(0xFFF79CDD);
  late Color customColor32 = Color(0xFF1E40AF);
  late Color customColor33 = Color(0xFFDAE6FF);
  late Color customColor34 = Color(0xFF8AD1A4);
  late Color customColor35 = Color(0xFF642202);
  late Color customColor36 = Color(0xFF9CA3AF);
  late Color customColor37 = Color(0xFFA2F69A);
  late Color customColor38 = Color(0xFFF0FDF4);
  late Color customColor39 = Color(0xFF15803D);
  late Color customColor40 = Color(0xFF6FF627);
  late Color customColor41 = Color(0xFF6B7280);
  late Color customColor42 = Color(0xFFE4E4E7);
  late Color customColor43 = Color(0xFF60D827);
  late Color customColor44 = Color(0xFFFFFBEB);
  late Color customColor45 = Color(0xFFFE86EE);
  late Color customColor46 = Color(0xFF895A0C);
  late Color customColor47 = Color(0xFFFFEDD5);
  late Color customColor48 = Color(0xFF787BA3);
  late Color customColor49 = Color(0xFFEFF6FF);
  late Color customColor50 = Color(0xFF10B981);
  late Color customColor51 = Color(0xFF6366F1);
  late Color customColor52 = Color(0xFF98ADD4);
  late Color customColor53 = Color(0xFF991B1B);
  late Color customColor54 = Color(0xFF5096FA);
  late Color customColor55 = Color(0xFF6B7280);
  late Color customColor56 = Color(0xFF7AF0B8);
  late Color customColor57 = Color(0xFFF3F4F6);
  late Color customColor58 = Color(0xFFDCFCE7);
  late Color customColor59 = Color(0xFFF0FDF4);
  late Color customColor60 = Color(0xFF166534);
  late Color customColor61 = Color(0xFF5AE17A);
  late Color customColor62 = Color(0xFFEFF6FF);
  late Color customColor63 = Color(0xFF1E3A8A);
  late Color customColor64 = Color(0xFF2540AF);
  late Color customColor65 = Color(0xFFD8A624);
  late Color customColor66 = Color(0xFFFFFBEB);
  late Color customColor67 = Color(0xFFE4E4E7);
  late Color customColor68 = Color(0xFF4236F2);
  late Color customColor69 = Color(0xFF1B48AA);
  late Color customColor70 = Color(0xFFD1D5DB);
  late Color customColor71 = Color(0xFFF3F4F6);
  late Color customColor72 = Color(0xFFBB9FD2);
  late Color customColor73 = Color(0xFF2563EB);
  late Color customColor74 = Color(0xFF22C55E);
  late Color customColor75 = Color(0xFF3B82F6);
  late Color customColor76 = Color(0xFFA855F7);
  late Color customColor77 = Color(0xFFF59E0B);
  late Color customColor78 = Color(0xFFF3F4F6);
  late Color customColor79 = Color(0xFFDBEAFE);
  late Color customColor80 = Color(0xFFDCFCE7);
  late Color customColor81 = Color(0xFFF3E8FF);
  late Color customColor82 = Color(0xFFFFEDD5);
  late Color customColor83 = Color(0xFF2563EB);
  late Color customColor84 = Color(0xFF16A34A);
  late Color customColor85 = Color(0xFFEA580C);
  late Color customColor86 = Color(0xFF9F49ED);
  late Color customColor87 = Color(0xFF7F95FF);
  late Color customColor88 = Color(0xFF22C55E);
  late Color customColor89 = Color(0xFFEFF6FF);
  late Color customColor90 = Color(0xFFF9FAFB);
  late Color customColor91 = Color(0xFF9CA3AF);
  late Color customColor92 = Color(0xFFFEF3F1);
  late Color customColor93 = Color(0xFFFEF9C3);
  late Color customColor94 = Color(0xFFFFEDD5);
  late Color customColor95 = Color(0xFFDBEAFE);
  late Color customColor96 = Color(0xFFF1E7FE);
  late Color customColor97 = Color(0xFFFEFAC2);
  late Color customColor98 = Color(0xFFDCFDE6);
  late Color customColor99 = Color(0xFF6B4AC5);
  late Color customColor100 = Color(0xFFB66B0E);
  late Color jobSucces = Color(0xFF166534);
  late Color customColor101 = Color(0xFF0041FF);
  late Color customColor102 = Color(0xFF49A821);
  late Color customColor103 = Color(0xFF0041FF);
  late Color customColor104 = Color(0xFFE5E7EB);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Inter Tight';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Inter Tight';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Inter Tight';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Inter Tight';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Inter Tight';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 28.0,
      );
  String get headlineSmallFamily => 'Inter Tight';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Inter Tight';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get titleMediumFamily => 'Inter Tight';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Inter Tight';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Inter';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Inter',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Inter';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Inter',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Inter';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Inter',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Inter';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Inter';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Inter';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            );
}
