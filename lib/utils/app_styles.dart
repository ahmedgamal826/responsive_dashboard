import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/sized_config_class.dart';

abstract class AppStyles {
  static TextStyle Regular16(context) {
    return TextStyle(
      fontSize: getResponsiveText(fontSize: 16, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle Bold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveText(fontSize: 16, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle Medium16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveText(fontSize: 16, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle Medium20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveText(fontSize: 20, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle SemiBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveText(fontSize: 16, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle SemiBold20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveText(fontSize: 20, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle Regular12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveText(fontSize: 12, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle SemiBold24(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveText(fontSize: 24, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle Regular14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveText(fontSize: 14, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle SemiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveText(fontSize: 18, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}

// ****** Platforms Width ******
// (1) Mobile ==> 400     (0 ====> 400  ====> 600)
// (2) Tablet ==> 700     (600 ====> 700  ====> 900)
// (3) Desktop ==> 1000   (900 ====> 1000  ====> infinite)
// **************************************
// Steps for Responsive Text...
// (1) scaleFactor = (Screen width / platform width)  ==> percentage of increasing
// (2) Resonsive FontSize = (Old FontSize * scaleFactor)
// (3) (min, max) FontSize

double getResponsiveText(
    {required BuildContext context, required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 0.8; // 80 %
  double upperLimit = fontSize * 1.2; // 120 %

  print(
      'Scale Factor = $scaleFactor  lowerLimit = $lowerLimit  upperLimit = $upperLimit responsiveFontSize = $responsiveFontSize');

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  // the below way == (MediaQuery.sizeOf(context).width)

  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;

  //double width = physicalWidth / devicePixelRatio; // Screen Width

  if (width < SizedConfigClass.tablet) // Mobile Layout
  {
    return width / 550;
  } else if (width < SizedConfigClass.desktop) {
    // Tablet Layout
    return width / 1000;
  } else {
    // Desktop Layout
    return width / 1500;
  }
}
