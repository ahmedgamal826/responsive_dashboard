import 'package:flutter/material.dart';

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
      if (constrains.maxWidth < 800) {
        // 800 => break point
        return mobileLayout(context);
      } else if (constrains.maxWidth < 1100) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
