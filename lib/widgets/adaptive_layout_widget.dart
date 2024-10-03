import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/sized_config_class.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < SizedConfigClass.tablet) {
        return mobileLayout(context);
      } else if (constrains.maxWidth < SizedConfigClass.desktop) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
